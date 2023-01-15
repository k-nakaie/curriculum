/* ■ [回答]と記載のある箇所へ、1〜8の各課題内容に沿ったSQL文を記述しなさい。 */
 
-- 1. 店舗テーブルから店舗名を抽出しなさい。また、列名の表示は別名で'店舗名'とすること。
-- [回答]
 select store_name "店舗名" from store_table;
 
-- 2. 店舗情報を店舗名のABC順に抽出しなさい。
-- [回答]
select * from store_table order by store_nameabc;
 
 
-- 3. 在庫テーブルに店舗テーブル、商品テーブルを「内部結合」し、店舗名・商品名・在庫数を全て取得しなさい。
-- [回答]
 SELECT tbl2.store_name,tbl3.goods_name,tbl1.quantity FROM stock_table as tbl1
join store_table as tbl2 on tbl1.store_code = tbl2.store_code
join goods_table as tbl3 on tbl1.goods_code = tbl3.goods_code;
 
-- 4. 商品テーブルから全商品の単価の平均値を抽出しなさい。
-- [回答]
 SELECT AVG(price) FROM goods_table
 
-- 5. 店舗コード='EA01'の在庫数の平均値より大きい在庫数を持つ店舗コードを抽出しなさい。
-- [回答]
 SELECT distinct store_code FROM stock_table
WHERE quantity >
(SELECT AVG(quantity) 
 from stock_table
 where store_code = 'EA01')

-- 6. 商品テーブルに「商品コード='M001'、商品名='マフラー'、単価=4500円、更新日付=本日日付」のデータを追加しなさい。※実行後のSELECT結果も貼付すること。
-- [回答]
INSERT INTO goods_table
(goods_code,goods_name,price,update_day)
VALUES('M001','マフラー','4500',current_date);
 
 
-- 7. 在庫テーブルの商品コード='S987'、かつ、店舗コード='EA01'に対して、「在庫数=10、更新日付=本日日付」で更新しなさい。※実行後のSELECT結果も貼付すること。
-- [回答]
UPDATE stock_table SET quantity = '10',update_day = CURRENT_DATE
WHERE goods_code = 'S987' AND
store_code = 'EA01';
 
 
-- 8. 7で更新した商品を削除しなさい。※実行後のSELECT結果も貼付すること。
-- [回答]
DELETE FROM goods_table
WHERE goods_code =
(SELECT goods_code FROM stock_table
WHERE update_day = CURRENT_DATE);


DELETE FROM stock_table
WHERE goods_code =
(SELECT goods_code FROM stock_table
WHERE update_day = CURRENT_DATE);