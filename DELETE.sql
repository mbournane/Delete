USE SuperMoney;
GO
BACKUP DATABASE SuperMoney
TO DISK = 'C:\WildSchoul_Formation\S06\Quest\DELETE\SuperMoney.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of SuperMoney';
GO
-------------------------------------------
SELECT * FROM logs

---------------------------------------------------
BEGIN TRAN Transaction1; 
	DELETE FROM logs 
	WHERE [user] = 'hack3r'
COMMIT TRAN Transaction1;



----------------------------------------

SELECT * FROM logs

----------------------------------------


BEGIN TRAN Transaction2; 
	DELETE TOP(3)
	FROM logs 
COMMIT TRAN Transaction2;

----------------------------------------
SELECT * FROM logs

