CREATE DATABASE Sample;

GO

CREATE TABLE Sample.dbo.Employee
(
    Id VARCHAR(128) PRIMARY KEY NOT NULL,
    Name VARCHAR(128),
    Gender VARCHAR(128),
    Age INT
);

GO

INSERT INTO Sample.dbo.Employee VALUES (
  '00001',
  'チャーリー・ブラウン',
  '男性',
  19
);

GO

INSERT INTO Sample.dbo.Employee VALUES (
  '00002',
  'ルシール・ヴァン・ぺルト',
  '女性',
  20
);

GO

INSERT INTO Sample.dbo.Employee VALUES (
  '00003',
  'ライナス・ヴァン・ぺルト',
  '男性',
  21
);

GO

INSERT INTO Sample.dbo.Employee VALUES (
  '00004',
  'シュローダー',
  '男性',
  29
);

GO

INSERT INTO Sample.dbo.Employee VALUES (
  '00005',
  'ペパーミント・パティ',
  '女性',
  30
);

GO

INSERT INTO Sample.dbo.Employee VALUES (
  '00006',
  'マーシー',
  '女性',
  31
);

INSERT INTO Sample.dbo.Employee VALUES (
  '00007',
  'マーシー',
  NULL,
  31
);