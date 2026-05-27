select se.sid,se.serial#,se.sql_id,se.machine,se.terminal,se.module,se.action,pr.spid from v$session se
inner join v$process pr on (pr.addr = se.paddr) where pr.spid ='&spid';

#Shell script to select data
#!/bin/bash

export ORACLE_SID=db9zx
export ORACLE_HOME=/u01/app/oracle/product/19.0.0/dbhome_1
while true
do
$ORACLE_HOME/bin/sqlplus -S '/ as sysdba' <<EOF

select * from kish.xtbl;

exit;
EOF
done


