declare  @error_id  int ;
declare @error_message varchar(max)  ;
exec generic_json_validator 'Net_Cash_Collections_PMR_JSON','Y','N',@error_id out,@error_message out;
select @error_id,@error_message