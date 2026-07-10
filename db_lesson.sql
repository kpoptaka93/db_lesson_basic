CREATE TABLE departments (

department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,

name VARCHAR(20) NOT NULL,

created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,

updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 

);


ALTER TABLE people ADD department_id INT UNSIGNED NULL AFTER email;


INSERT INTO departments (name) VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');


INSERT INTO people(name, email, department_id, age, gender) VALUES
('佐藤大輔', 'sato@example.com', 1, 28, 1),
('鈴木一郎', 'suzuki@example.com', 1, 35, 1),
('高橋健太', 'takahashi@example.com', 1, 42, 1),
('田中美穂', 'tanaka@example.com', 2, 24, 2),
('伊藤直樹', 'ito@example.com', 2, 31, 1),
('渡辺さくら', 'watanabe@example.com', 2, 29, 2),
('山本洋介', 'yamamoto@example.com', 2, 38, 1),
('中村恵子', 'nakamura@example.com', 3, 45, 2),
('小林拓也', 'kobayashi@example.com', 4, 33, 1),
('加藤結衣', 'kato@example.com', 5, 26, 2);

INSERT INTO reports (person_id, content) VALUES
(1, '本日は営業部のミーティングに参加して進捗を報告しました。'),
(2, '新規クライアントへのアプローチに向けて資料を作成しました。'),
(3, '担当案件の契約書の内容について、法務に確認を依頼しました。'),
(4, '開発中の新機能の実装が完了し、テスト環境へ反映しました。'),
(5, 'システムのエラー原因を特定し、無事に修正が完了しました。'),
(6, 'データベースのインデックスを設定して速度を改善しました。'),
(7, 'チームメンバーのソースコードのレビューを丁寧に行いました。'),
(8, '経理用の請求データのチェック作業を上から順番に進めました。'),
(9, '新入社員の受け入れ準備に向けて、人事の手続きを進めました。'),
(10, 'サーバーのセキュリティ設定を最新の状態にアップデートしました。');


UPDATE people SET department_id = 1 WHERE person_id = 1;
UPDATE people SET department_id = 2 WHERE person_id = 2;
UPDATE people SET department_id = 3 WHERE person_id = 3;
UPDATE people SET department_id = 4 WHERE person_id = 4;
UPDATE people SET department_id = 5 WHERE person_id = 6;


SELECT age, gender FROM people WHERE gender = 1 ORDER BY age DESC;


SELECT
  `name`, `email`, `age`
FROM
  `people`
WHERE
  `department_id` = 1
ORDER BY
  `created_at`;

-- peopleテーブルの中にあるname,email,ageの三つのカラムの取得をするが、department_idの値が１になっているレコードだけを取得し、作成日の古い順に並べる


SELECT name FROM people WHERE (gender = 2 AND age BETWEEN 20 AND 29) OR (gender = 1 AND age BETWEEN 40 AND 49);




SELECT * FROM people WHERE department_id = 1 ORDER BY age;


SELECT AVG(age) AS average_age FROM people WHERE department_id = 2 AND gender = 2;

SELECT p.name, d.name, r.content FROM people p JOIN departments d ON p.department_id = d.department_id JOIN reports r ON p.person_id = r.person_id;



SELECT p.name FROM people p LEFT JOIN reports r USING(person_id) WHERE r.person_id IS NULL; 
