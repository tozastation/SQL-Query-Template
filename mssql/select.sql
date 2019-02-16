-- 全文検索
SELECT * FROM Sample.dbo.Employee;
-- 条件検索
SELECT * FROM Sample.dbo.Employee WHERE id = 00001;
-- 複数条件検索
SELECT * FROM Sample.dbo.Employee WHERE Age >= 20 AND Gender = '男性';
-- 射影(カラムの必要な部分のみを検索する)
SELECT Gender, Name FROM Sample.dbo.Employee;
-- 部分一致検索
SELECT * FROM Sample.dbo.Employee WHERE Gender = '男性' OR (Age <= 20 AND Gender = '女性')
-- 重複を省く
SELECT DISTINCT Name FROM Sample.dbo.Employee;
-- NULL検索
SELECT * FROM Sample.dbo.Employee WHERE Gender IS NULL
-- 範囲検索
SELECT * FROM Sample.dbo.Employee WHERE Age BETWEEN 20 AND 30
-- 同一条件での複数検索
SELECT * FROM Sample.dbo.Employee WHERE Age IN (20, 21, 29, 30)
-- ワイルドカード検索 Case.1
SELECT * FROM Sample.dbo.Employee WHERE Name LIKE '%ヴァン・ぺルト'
-- ワイルドカード検索 Case.2 (任意の1文字)
SELECT * FROM Sample.dbo.Employee WHERE Id LIKE '0000_'
-- 昇順検索
SELECT * FROM Sample.dbo.Employee ORDER BY Age
-- 降順検索
SELECT * FROM Sample.dbo.Employee ORDER BY Age DESC
-- 一部検索
SELECT TOP 10 * FROM Sample.dbo.Employee ORDER BY Name