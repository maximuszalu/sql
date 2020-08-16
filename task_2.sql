USE TSQL2012

CREATE TABLE  Interviews
(
  candidate_name NVARCHAR(60)  NOT NULL,
  date_of_the_interwiew  date NOT NULL,
  result_of_the_interwview NVARCHAR(15)  NOT NULL
);

INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zaluzhnyi Maksim', '2020-07-01', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zaluzhnyi Maksim', '2020-06-18', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zaluzhnyi Maksim', '2020-06-14', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Shmatko Anna', '2020-07-09', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Shmatko Anna', '2020-07-07', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zaluzhnyi Igor', '2020-07-19', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zaluzhnyi Igor', '2020-08-12', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Kiedis Anthony', '2020-05-12', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Kiedis Anthony', '2020-05-14', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Fallon Jimmy', '2020-04-29', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Fallon Jimmy', '2020-04-17', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Marchenko Tolya', '2020-01-10', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Marchenko Tolya', '2020-01-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Ninchenko Nina', '2020-03-25', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Alyona Alina', '2020-03-12', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Alyona Alina', '2020-03-22', N'hold');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zalu Alex', '2020-05-24', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zalu Alex', '2020-05-20', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Vinchenko Venya', '2020-07-19', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Vinchenko Venya', '2020-07-22', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Vinchenko Venya', '2020-07-25', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Arlovsky Andrey', '2018-08-09', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Arlovsky Andrey', '2020-06-09', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Arlovsky Andrey', '2020-05-26', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Arlovsky Andrey', '2020-04-26', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zinchenko Alex', '2020-08-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Shevchenko Andrey', '2020-06-18', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Shevchenko Andrey', '2020-07-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Shevchenko Andrey', '2020-08-01', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Messi Lionel', '2020-02-10', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Messi Lionel', '2020-03-11', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Ronaldo Cristiano', '2020-07-08', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Ronaldo Cristiano', '2020-07-07', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Ronaldo Cristiano', '2020-06-03', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Ronaldo Cristiano', '2020-05-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zelensky Volodymyr', '2020-07-15', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zelensky Andrey', '2020-07-07', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zelensky Andrey', '2020-07-25', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zelensky Volodymyr', '2020-07-30', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Maksimenko Maksim', '2020-08-01', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Maksimenko Olya', '2020-08-01', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Maksimenko Olya', '2020-07-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Maksimenko Olya', '2020-06-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Maksimenko Olya', '2020-06-19', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Zaluz Victor', '2020-04-01', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Kuptsov Andrey', '2020-02-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Kuptsov Andrey', '2019-08-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Kuptsov Andrey', '2019-06-07', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Chenynya Yulia', '2020-07-22', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Chenynya Yulia', '2020-07-03', N'no');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Musk Elon', '2020-08-01', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Musk Elon', '2019-07-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Musk Elon', '2019-06-09', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Bezos Jeff', '2020-06-15', N'yes');
INSERT INTO Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
  VALUES(N'Bezos Jeff', '2020-06-11', N'yes');

TRUNCATE Table TSQL2012.dbo.Interviews

INSERT INTO dbo.Interviews(candidate_name, date_of_the_interwiew, result_of_the_interwview)
VALUES(N'Andrienko Rita', DATEADD(DAY, FLOOR(rand()*100), '2020-01-01'), N'hold');
GO 5000
SELECT * FROM dbo.Interviews
WHERE date_of_the_interwiew = DATEADD(DAY, FLOOR(rand()*300), '2020-01-01')
GO 1000


 -- VALUES(N'Bezotosnaya Julia', DATEADD(DAY, FLOOR(rand()*100), '2020-01-01'), N'no');

SELECT TSQL2012.dbo.Interviews.candidate_name, TSQL2012.dbo.Interviews.result_of_the_interwview,  MAX(TSQL2012.dbo.Interviews.date_of_the_interwiew), COUNT(TSQL2012.dbo.Interviews.date_of_the_interwiew) FROM TSQL2012.dbo.Interviews
GROUP BY TSQL2012.dbo.Interviews.candidate_name, TSQL2012.dbo.Interviews.result_of_the_interwview




