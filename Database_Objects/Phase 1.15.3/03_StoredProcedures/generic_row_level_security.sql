

 

 



/****** Object:  StoredProcedure [dbo].[generic_row_level_security]    Script Date: 8/23/2023 11:12:45 AM ******/

SET ANSI_NULLS ON

GO

 

SET QUOTED_IDENTIFIER ON

GO

 

 

CREATE PROC [dbo].[generic_row_level_security] @p_sec_sa_description [varchar](120),@p_fact_table_name [varchar](120),@p_fact_table_sk_column_name [varchar](120),@p_hash_table_required [varchar](1) AS

 

begin

    declare @sec_sa_id    int;

 

    select @sec_sa_id = sec_sa_id

    from sec_sa

    where description = @p_sec_sa_description;


    begin try

        drop table #sec_sa_rule;

    end try

    begin catch

    end catch;

 

    declare @ssr_user_id_list varchar(8000);

    declare @ssr_rule_definition varchar(8000);

 

    create table #sec_sa_rule (

    ssr_row_id            int,

    ssr_sec_sa_rule_id        int,

    ssr_description            varchar(120),

    ssr_rule_weightage        int,

    ssr_user_id_list        varchar(8000),

    ssr_rule_definition        varchar(8000));

 

    insert into #sec_sa_rule (    ssr_row_id,

                    ssr_sec_sa_rule_id,

                    ssr_description,

                    ssr_rule_weightage)

 

    select     row_number() over (order by sec_sa_rule_id),

        sec_sa_rule_id,

        description,

        rule_weightage

    from    sec_sa_rule

    where    sec_sa_rule_id in (select  sec_sa_rule_id from sec_sa_rule_sa where sec_sa_id = @sec_sa_id and active = 1)

    and    active = 1;

 

    

    update #sec_sa_rule

    set    ssr_user_id_list = ','+a.c2+','    

    from (    select     sec_sa_rule_sa.sec_sa_rule_id c1, string_agg(network_id, ',') c2

        from    sec_user,

            sec_sa_user_rule,

            sec_sa_rule_sa    

        where    sec_user.sec_user_id = sec_sa_user_rule.sec_user_id

        and    sec_sa_user_rule.sec_sa_rule_sa_id = sec_sa_rule_sa.sec_sa_rule_sa_id

        and    sec_sa_rule_sa.sec_sa_id = @sec_sa_id

        and    sec_user.active = 1

        and    sec_sa_user_rule.active = 1

        and    sec_sa_rule_sa.active = 1

        group by sec_sa_rule_sa.sec_sa_rule_id) a

    where    ssr_sec_sa_rule_id = c1;

 

    -- global user association

    -- to handle global users

    insert into #sec_sa_rule (ssr_row_id,

                  ssr_sec_sa_rule_id,

                  ssr_description,

                              ssr_rule_weightage,

                  ssr_rule_definition)

    values (0, 0, 'global rule', 0, null);

 

    update    #sec_sa_rule

    set     ssr_user_id_list = isnull(ssr_user_id_list,',')+a.c2+','

    from    (select string_agg(network_id, ',') c2

         from     sec_user, 

            sec_sa_user

         where  sec_user.sec_user_id = sec_sa_user.sec_user_id 

         and     sec_user.sec_access_level = 'global'

         and     sec_user.active = 1

         and     sec_sa_user.active = 1

         and     sec_sa_id = @sec_sa_id) a

    where    ssr_row_id = 0;

 

    

    -- associating the rule definition

    update     #sec_sa_rule

    set        ssr_rule_definition = y.dsql

    from (    select x.r r1, string_agg(x.c+' '+x.o+' ('+x.v+')', ' and ') dsql

            from (

                select  a.sec_sa_rule_id r, e.column_name c, case when isnull(c.exclude_flag, 'N') = 'N' then 'IN' else 'NOT IN' end o,  string_agg(''''+c.column_value+'''', ',') v

                from    sec_sa_rule a,

                    sec_sa_rule_detail b,

                    sec_sa_rule_detail_value c,

                    sec_sa_table_column e

                where    a.sec_sa_rule_id        = b.sec_sa_rule_id

                and    b.sec_sa_rule_detail_id        = c.sec_sa_rule_detail_id

                and    c.sec_sa_table_column_id    = e.sec_sa_table_column_id

                and    a.active = 1

                and     b.active = 1

                and     c.active = 1

                and     e.active = 1

                and    a.sec_sa_rule_id in (select sec_sa_rule_id from sec_sa_rule_sa where sec_sa_id = @sec_sa_id)

                group by a.sec_sa_rule_id, e.column_name, case when isnull(c.exclude_flag, 'N') = 'N' then 'IN' else 'NOT IN' end

              ) x

              group by x.r) y 

    where    ssr_sec_sa_rule_id = y.r1;


    -- fact

    declare @select_sql varchar(max);

 

    declare @sec_sa_rule_count int;

    select @sec_sa_rule_count = count(*) from #sec_sa_rule;

 

    -- select * from    #sec_sa_rule;

 

    declare @sec_sa_rule_ctr int = 0; -- starts with 0 to include global users

    while @sec_sa_rule_ctr < @sec_sa_rule_count

    begin

        -- select 'inside loop';

 

        select     @ssr_user_id_list     = ssr_user_id_list,

            @ssr_rule_definition     = ssr_rule_definition

        from    #sec_sa_rule

        where    ssr_row_id = @sec_sa_rule_ctr;

 

        -- if no users are assigned for a rule then we are skipping them

        if @ssr_user_id_list is not null 

        -- and @ssr_rule_definition is not null

        begin

            if @select_sql is null

            begin

                set @select_sql = 'select '+@p_fact_table_sk_column_name+' fact_table_sk, '''+@ssr_user_id_list+''''+' generated_user_list from '+@p_fact_table_name+' ';

            end

            else

            begin

                set @select_sql = @select_sql+' union select '+@p_fact_table_sk_column_name+', '''+@ssr_user_id_list+''''+' from '+@p_fact_table_name+' ';

            end;

 

            -- select 1, @select_sql;            


            if @ssr_rule_definition is not null

            begin

                set @select_sql = @select_sql + 'where '+@ssr_rule_definition;

            end


            -- select 2, @select_sql;            

 

            -- select @sec_sa_rule_ctr, @ssr_user_id_list , @ssr_rule_definition , @select_sql;

        end;

 

        set @sec_sa_rule_ctr = @sec_sa_rule_ctr + 1;

    end;            

 

    set @select_sql = 'select fact_table_sk, string_agg(generated_user_list, '','') user_ids from ('+@select_sql+' ) u group by fact_table_sk';

 

    -- select @select_sql;

 

    if @p_hash_table_required = 'Y'

    begin

        begin try

            exec('drop table #'+@p_fact_table_name);

        end try

        begin catch

        end catch;


        exec('create table #'+@p_fact_table_name+'( '+@p_fact_table_sk_column_name+' bigint, user_ids varchar(8000))');

        exec('insert into #'+@p_fact_table_name+' '+@select_sql);

        exec('select * from #'+@p_fact_table_name);

    end

    else

    begin

        exec(@select_sql);

    end;

end;


GO

 

 