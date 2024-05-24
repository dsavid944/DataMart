BACKUP DATABASE jardineria
TO DISK = 'C:\backups\jardineria.bak'
WITH FORMAT, 
     MEDIANAME = 'DBBackup',
     NAME = 'Respaldo de Jardineria';


BACKUP DATABASE Jardineria_staging
TO DISK = 'C:\backups\Jardineria_staging.bak'
WITH FORMAT, 
     MEDIANAME = 'DBBackup',
     NAME = 'Respaldo de Jardineria_staging';
