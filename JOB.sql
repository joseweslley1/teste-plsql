BEGIN
DBMS_SCHEDULER.CREATE_JOB (
   job_name           =>  'update_sales',
   job_type           =>  'STORED_PROCEDURE',
   job_action         =>  'XE_PCK_TESTE.INATIVA',
   enabled            =>  'TRUE',
   start_date         =>  'sysdate',
   repeat_interval    =>  'FREQ=DAILY;INTERVAL=1', /* every other day */
   end_date           =>  null,
   comments           =>  'Job para verificação de usuarios inativos');
END;