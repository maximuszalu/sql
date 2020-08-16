SELECT DATE_FORMAT(FROM_UNIXTIME(r1.event_timestamp/1000), '%d.%m.%Y') date, r2.campaign, r1.ctx, r2.dom, t1.country, r1.aid,
try(json_extract(json_parse(from_utf8(from_base64(r2._fdt))), '$.email')),
COUNT(DISTINCT r1.aid) as count_event, COUNT(DISTINCT r2.aid) as count_event2
FROM prod r1
LEFT JOIN prod r2
ON r1.year = r2.year AND r1.month = r2.month AND r1.day = r2.day AND r1.campaign = r2.campaign AND r1.aid = r2.aid AND r2.evt = '...'
LEFT JOIN prod r3
ON r2.year = r3.year AND r2.month = r3.month AND r2.day = r3.day AND r2.campaign = r3.campaign AND r2.aid = r3.aid AND r3.evt= '...'
WHERE r1.year = '2013' AND r1.event_timestamp/1000 >= TO_UNIXTIME(TO_TIMESTAMP('2013-01-13', 'yyyy-mm-dd')) AND r1.event_timestamp/1000 < TO_UNIXTIME(TO_TIMESTAMP('2013-02-20', 'yyyy-mm-dd')) AND r1.evt = '' 
GROUP BY 1,2,3,4,5,6,7

----------------------------------------------------------------------------
WITH graf1 AS
    (SELECT campaign, COUNT(*) before
    FROM prod
    WHERE year = '2014'
            AND month = '01'
            AND day = '06'
     AND source = '...'
         
      AND evt = '...'
            AND evt_timestamp >= TO_UNIXTIME(TO_TIMESTAMP('2014-01-06 05:00:00', 'yyyy-mm-dd hh24:mi:ss'))*1000
            AND evt_timestamp <  TO_UNIXTIME(TO_TIMESTAMP('2014-01-06 06:00:00', 'yyyy-mm-dd hh24:mi:ss'))*1000
           
    GROUP BY campaign
    ORDER BY 2 DESC), 
	graf2 AS
    (SELECT campaign, COUNT(*) after
    FROM prod
    WHERE year = '2014'
            AND month = '01'
            AND day = '06'
    and source = '...'
           
           AND evt = '...'
            AND evt >= TO_UNIXTIME(TO_TIMESTAMP('2014-01-06 07:00:00', 'yyyy-mm-dd hh24:mi:ss'))*1000
            AND evt <  TO_UNIXTIME(TO_TIMESTAMP('2014-01-06 08:00:00', 'yyyy-mm-dd hh24:mi:ss'))*1000
    GROUP BY campaign
    ORDER BY 2 DESC)
SELECT t1.campaign,
         before,
         after,
         after - before AS diff
FROM graf t1
FULL JOIN graf2 t2
    ON t1.campaign = t2.campaign
WHERE after - before < 0
ORDER BY after - before ASC

-----------------------------------------------------------------------------------
DROP TABLE pub.mkg;

CREATE TABLE pub.mkg
(
id varchar(20),
city varchar(40),
res varchar(20)  
);
select * from pub.mkg

COPY pub.mkg
FROM LOCAL 'C:\ltk.csv'
DELIMITER ';'
SKIP 1;

SELECT r1.DATE, mkg.res, muk.country, sum(r1.h_count), sum (r1.v_count), 
sum (r3.r_count)
FROM ow.report r1
LEFT jOIN ow.conv r3 on r1.id = r3.id AND r3.date = r1.date
LEFT JOIN pub.mkg mk ON hash(mk.id) = r3.Hash
WHERE r1.date BETWEEN '20170227' AND '20170313'
GROUP BY 1,2,3;
ORDER BY t1.date;
--------------------------------------------------------------------
MERGE TestTable AS T_BASE
USING TestTableDop AS T_SOURCE
ON (T_Base.ProductId = T_Source.ProductId)
WHEN MATCHED THEN 
UPDATE SET ProductName = T_Source.ProductName, Summa = T_Source.Summa
WHEN NOT MATCHED THEN INSERT (ProductId, ProductName, Summa) 
VALUES (T_Source.ProductId, T_Source.ProductName, T_Source.Summa)
 OUTPUT $action AS [Операция], Inserted.ProductId, Inserted.ProductName AS ProductNameNEW,
                   Inserted.Summa AS SummaNEW, 
                   Deleted.ProductName AS ProductNameOLD, 
                   Deleted.Summa AS SummaOLD; 

  SELECT * FROM dbo.TestTable
        SELECT * FROM dbo.TestTableDop
-----------------------------------------------------------------
USE TSQL2012

EXEC sp_rename 'orders.Amountt', 'amount', 'COLUMN';  

CREATE TABLE TestTable(       
[Id] [INT] IDENTITY(1,1) NOT NULL,
[ProductName] [VARCHAR](100) NOT NULL,
[Price] [Money] NOT NULL
)

CREATE PROCEDURE TestProcedure
AS
BEGIN
SELECT ProductName, Price
        FROM TestTable
   END


   INSERT INTO TestTable(ProductName, Price)
           VALUES ('Компьютер', 100),
                   ('Клавиатура', 20),
                   ('Монитор', 50)

				   INSERT INTO TestTable(ProductName, Price)
				   SELECT * FROM TestTable

 INSERT INTO TestTable(ProductName, Price)
 EXEC TestProcedure

 UPDATE TestTable SET Price = Price + 100 WHERE Price = 20

CREATE PROCEDURE TestProcedure3 
   (
        --Входящие параметры
        @CategoryId INT,
        @ProductName VARCHAR(100),
        @Price MONEY = 0
   )
   AS
   BEGIN
        
        INSERT INTO TestTable(CategoryId, ProductName, Price)
                VALUES (@CategoryId, @ProductName, @Price)
        SELECT * FROM TestTable
        WHERE CategoryId = @CategoryId
   END

   GO

EXEC TestProcedure3 3,  'Тестовый товар 3', 400

EXEC TestProcedure3 @CategoryId = 2, @ProductName = 'Тестовый товар 2',
                                   @Price = 300
