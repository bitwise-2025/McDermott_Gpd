declare  @error_id  int ;
declare @error_message varchar(max)  ;
exec generic_json_validator 'Offshore_Client_Schedule_PMR_JSON','Y','N',@error_id out,@error_message out;
select @error_id,@error_message