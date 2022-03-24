-- drop database team3;
create schema team3;
use team3;



--------------------------------------------------------------------------------------------------------------------------------
-- 使用者
CREATE TABLE `users`(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `user_name` VARCHAR(50) NOT NULL,
  `user_password` VARCHAR(20) NOT NULL,
  `user_birth` date NOT NULL,
  `user_mail` VARCHAR(255) NOT NULL UNIQUE,
  `user_mail2` VARCHAR(255) ,
  `user_address` VARCHAR(100) NOT NULL,
  `user_address_2` VARCHAR(100) ,
  `user_address_3` VARCHAR(100) ,
  `user_phone` VARCHAR(10) NOT NULL UNIQUE,
  `user_nick` VARCHAR(20), 
  `user_url` VARCHAR(200), 
  `CREATEd_at` TIMESTAMP DEFAULT NOW()
);
INSERT INTO `users`( `user_name`, `user_birth`,`user_mail`,`user_mail2`,`user_address`,`user_address_2`,`user_address_3`, `user_password`,`user_phone`,`user_nick`,`user_url`)
VALUES
('糾結倫','1997-01-01','jaychou@gmail.com','jaychouchou@gmail.com','台北市中正區北平西路3號','台中市中區台灣大道一段1號','高雄市三民區建國二路318號','abc123456','0912345699','內湖周杰倫','./img/user_img/chou666.jpg'),
('裸志祥','1999-06-07','show@gmail.com','','時空之間','','','abc123456','0912345670','時間管理大師','./img/user_img/show666.jpg'),
('路易斯 漢米爾頓','1985-01-07','lh44@gmail.com','','英國倫敦','摩納哥','','abc123456','091234579','7次世界冠軍','./img/user_img/Lewis_Hamilton.jpg'),
('喬治 羅素','1998-02-05','gr63@gmail.com','','英國','摩納哥','','abc123456','0912345678','未來世界冠軍','./img/user_img/Russell.jpg'),
('馬克思 維斯塔潘','1997-09-30','mv33@gmail.com','','荷蘭','摩納哥','','abc123456','0912345677','水冠世界冠軍','./img/user_img/max.jpg'),
('塞吉歐 佩瑞茲','1990-01-26','sp11@gmail.com','','墨西哥','摩納哥','','abc123456','0912345676','墨西哥阿湯哥','./img/user_img/Sergio-Perez.jpg'),
('夏爾 勒克萊爾','1997-10-16','cl16@gmail.com','','摩納哥','','','abc123456','0912345675','法拉利未來之星','./img/user_img/leclerc.jpg'),
('卡洛斯 塞恩斯','1994-09-01','cs55@gmail.com','','西班牙','','','abc123456','0912345674','麥拉倫好基友A','./img/user_img/Carlos Sainz.jpg'),
('丹尼爾 里卡多','1989-07-01','dr03@gmail.com','','澳大利亞','摩納哥','','abc123456','0912345673','平頭哥','./img/user_img/daniel-ricciardo.jpg'),
('蘭多 諾里斯','1999-11-13','ln04@gmail.com','','英國','','','abc123456','0912345672','麥拉倫好基友B','./img/user_img/Noris.jpg'),
('費南多 阿隆索','1981-7-29','fa14@gmail.com','','西班牙','','','abc123456','0912345671','龍嫂','./img/user_img/fernando-alonso.jpg'),
('埃斯特班 奧康','1996-09-17','eo31@gmail.com','','法國','','','abc123456','0912345660','','./img/user_img/ocon.jpg'),
('皮埃爾 蓋斯利','1996-02-07','pg10@gmail.com','','法國','','','abc123456','0912345669','小牛王','./img/user_img/gasly.jpg'),
('角田 裕毅','2000-05-11','yt22@gmail.com','','日本','','','abc123456','0912345668','角田小朋友','./img/user_img/Yuki-Tsunoda.jpg'),
('塞巴斯蒂安 維特爾','1987-07-03','sv05@gmail.com','','德國','','','abc123456','0912345667','德國老農','./img/user_img/vettel.jpg'),
('蘭斯 斯托爾','1998-10-29','ls18@gmail.com','','加拿大','','','abc123456','0912345666','太子哥','./img/user_img/stroll.jpg'),
('尼古拉斯 拉提菲','1995-06-29','nl06@gmail.com','','加拿大','','','abc123456','0912345665','','./img/user_img/latifi.jpg'),
('亞歷山大 阿邦','1996-03-23','aa23@gmail.com','','泰國','英國','','abc123456','0912345664','','./img/user_img/Albon.jpg'),
('周 冠宇','1999-5-30','gz24@gmail.com','','中國','','','abc123456','0912345663','','./img/user_img/zhou.jpg'),
('維爾特利 鮑達斯','1989-08-28','vb77@gmail.com','','芬蘭','','','abc123456','0912345662','老漢僚機','./img/user_img/bottas.jpg'),
('凱文 馬格努森','1992-10-5','km20@gmail.com','','丹麥','','','abc123456','0912345661','','./img/user_img/kevin-magnussen.jpg'),
('米克 舒馬赫','1999-03-22','ms47@gmail.com','','德國','','','abc123456','0912345650','車神之子','./img/user_img/mick.jpg'),
('尼可 羅斯堡','1985-06-27','nr06@gmail.com','','德國','','','abc123456','0912345659','辣個男人','./img/user_img/Nico_Rosberg.jpg'),
('馬克 舒馬赫','1969-01-03','rgms@gmail.com','','德國','','','abc123456','0912345658','7冠車神','./img/user_img/Michael_Schumacher.jpg'),
('艾爾頓 洗拿','1960-03-21','rgas@gmail.com','','巴西','','','abc123456','0912345657','永遠的車神','./img/user_img/ayrton-senna.jpg');


-- 使用者地址 
-- CREATE TABLE `user_address`(
--   `id` INT PRIMARY KEY AUTO_INCREMENT,
--   `fk_user_id` INT NOT NULL,
--   address VARCHAR(100) ,
--   foreign KEY (`fk_user_id`) references users(id),
-- );
-- 會員提問
CREATE TABLE `user_ask`(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `fk_user_id` INT NOT NULL,
  `main` VARCHAR(25) NOT NULL,
  `ask` VARCHAR(200) NOT NULL,
  `ans` VARCHAR(200),
  `CREATEd_at` TIMESTAMP DEFAULT NOW(),
  foreign KEY (`fk_user_id`) references users(id)
);
INSERT INTO `user_ask`(`fk_user_id`, `main`,`ask`,`ans`)
VALUES
('1','買一送一','請問買一送一要同品項嗎?',''),
('1','運費','請問合計運費會因為重量增加而改變運費，還是單次運費就是固定的呢?','不會喔，單筆若一起寄送，運費都是固定的，不會因為重量增加而改變，但有可能體積超出寄送規定，而分開寄出，若發生此問題，客服會主動向您聯絡'),
('2','大小包','咖啡豆有分大小包嗎?',''),
('3','我強不強','我是不是最強的車手?','是，你是'),
('4','車隊問題','今年會在哪個車隊','Mercedes-AMG Petronas F1 Team'),
('5','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('6','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('7','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('8','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('9','假世界冠軍','Max不是的世界冠軍','沒錯他不是'),
('10','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('11','假世界冠軍','Max不是真的世界冠軍',''),
('12','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('13','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('14','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('15','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('16','假世界冠軍','Max不是真的世界冠軍',''),
('17','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('18','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('19','假世界冠軍','Max不是真的世界冠軍','沒錯他不是'),
('20','假世界冠軍','Max不是真的世界冠軍',''),
('21','最多世界冠軍','我爸是不是擁有最多世界冠軍的車手',''),
('22','打折?','世界冠軍買咖啡有打折嗎?',''),
('23','代言問題','我想代言你們品牌方便嗎?',''),
('24','適用','有賣試用包嗎?','');



--------------------------------------------------------------------------------------------------------------------------------
-- 商品類別
CREATE TABLE `product_types`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`type_name` VARCHAR(20) NOT NULL
);
INSERT INTO `product_types`( `type_name`)
VALUES
('巴西'),
('哥倫比亞'),
('肯亞'),
('衣索比亞'),
('瓜地馬拉'),
('其他');

-- 商品
CREATE TABLE `products`(
`id` INT  PRIMARY KEY AUTO_INCREMENT,
`p_name` VARCHAR(20) NOT NULL,
`price` INT NOT NULL,
`content` VARCHAR(1000) NOT NULL,
`status` boolean NOT NULL,
`fk_product_types` INT(20) NOT NULL,
`url`  varchar(300),
foreign KEY (fk_product_types) references product_types(id)
);
INSERT INTO `products`( `p_name`, `price`, `content`,`status`,`fk_product_types`,`url`)
VALUES
('肯亞AA TOP(半磅)','499','產地:非洲 <br>

處理法:水洗<br>

風味:黑梅/李子/葡萄<br>

AA TOP最高等級的肯亞咖啡豆其濃郁的黑梅香氣,口感豐富且尾韻悠長,轉化為肯亞特有的甜,一入口紅酒般的餘韻在口中揮之不去','1','3','./img/3.jpeg'),
('耶加雪菲(半磅)','380','產地:衣索比亞<br>

處理法:水洗<br>

風味:核果/可可/花香味/柑橘<br>

花神具有非常愉悅優雅花香主體的風味,酸性柔和且以巧克力般的風味尾韻作結,整體口感乾淨且明亮','1','4','./img/3.jpeg'),
('瓜地馬拉花神(半磅)','400','產地:瓜地馬拉<br>

處理法:日曬<br>

風味:莓果/蜜桃<br>

日曬耶加雪菲具有濃郁奔放的水果香,柔和綿長的蜜桃莓果酸卻不刺激,風味甜度高酸度明亮且細膩','1','5','./img/3.jpeg'),
('模範生(半磅)','420','產地:哥倫比亞<br>

處理法:水洗<br>


風味:柑橘/可可/奶油<br>


具有豐富的芳香水果酸氣迷人,且帶有柑橘的明亮甜感,巧克力的餘韻油脂感特佳','1','2','./img/3.jpeg'),
('曼巴(半磅)','300','產地:印尼/巴西<br>

處理法:半水洗<br>

風味:可可韻/奶油/草本香韻<br>

口感厚實甘醇的曼特寧搭配核果香氣絕佳的巴西咖啡豆,奶油的質感與明顯的可可味搭配後清雅的回甘口感一直會讓人回味無窮','1','1','./img/3.jpeg'),
('黃金曼巴(半磅)','380','產地:印尼/巴西<br>
處理法:半水洗<br>

風味:可可韻味/草本香韻/奶油<br>

口感厚實甘醇的頂級黃金曼特寧搭配核果香氣絕佳的巴西咖啡豆,完美平衡呈現奶油的質感與明顯的可可味','1','1','./img/3.jpeg'),
('瓜地馬拉花神(半磅)','400','產地:瓜地馬拉<br>

處理法:日曬<br>

風味:莓果/蜜桃<br>

日曬耶加雪菲具有濃郁奔放的水果香,柔和綿長的蜜桃莓果酸卻不刺激,風味甜度高酸度明亮且細膩','1','5','./img/3.jpeg'),
('藍湖 黃金曼特寧(半磅)','390','產地:哥倫比亞<br>

處理法:日曬<br>

風味:黑松露乾香氣、奶油、桃子、巧克力、牛奶仙草蜜<br>

極品莊園咖啡的經典熱銷款，具有焦糖經典風味，同時能感受到榛果、堅果、肉桂與柔酸味譜，彷彿嚐一口戀愛的滋味，屬於滑順微酸的咖啡。','1','2','./img/3.jpeg'),
('伊莎米 精選招牌特調(半磅)','500','產地:肯亞<br>

處理法:日曬<br>

風味:黑巧克力/榛果<br>

中南美洲咖啡的整體風味以平衡而著稱，咖啡風味也非常豐富。普遍使用濕法處理生豆也是中南美洲咖啡的特色之一，豆型

相較於非洲咖啡大而更加均勻，好的加工過程也使得瑕疵率較其他產區也更低。','1','3','./img/3.jpeg'),
('瓜地馬拉花神(半磅)','400','產地:瓜地馬拉<br>

處理法:日曬<br>

風味:堅果/核果/焦糖/巧克力<br>

日曬耶加雪菲具有濃郁奔放的水果香,柔和綿長的蜜桃莓果酸卻不刺激,風味甜度高酸度明亮且細膩','1','5','./img/3.jpeg'),
('費洛索莊園(半磅)','390','產地:巴西<br>

處理法:日曬<br>

風味:莓果/蜜桃<br>

日曬耶加雪菲具有濃郁奔放的水果香,柔和綿長的蜜桃莓果酸卻不刺激,風味甜度高酸度明亮且細膩','1','1','./img/3.jpeg'),
('西達摩桃可可(半磅)','490','產地:衣索比亞<br>

處理法:日曬<br>

風味:莓果/桃子/佛手柑/橘皮/花香/蜂蜜<br>

一入口即可感受到桃子、草莓與橘汁的酸甜風味，隨後浮現橙花、佛手柑、白葡萄與紅茶，結尾是優雅花香與桃子餘韻，果汁般的甜美風味相當迷人','1','6','./img/3.jpeg');

-- 商品照片
CREATE TABLE `product_photos`(
  `id` INT  PRIMARY KEY AUTO_INCREMENT,
  `fk_product_id` INT NOT NULL,
  `url` VARCHAR(225) NOT NULL,
  foreign KEY (fk_product_id) references products(id)
);
INSERT INTO `product_photos`( `fk_product_id`,`url`)
VALUES
('9','/img/shop/coffee_bean.jpeg'),
('2','/img/shop/dog8.jpg'),
('3','/img/shop/dog7.jpg'),
('4','/img/shop/dog6.jpg'),
('5','/img/shop/dog5.jpg'),
('6','/img/shop/dog4.jpg'),
('7','/img/shop/dog3.jpg'),
('8','/img/shop/dog2.jpg'),
('1','/img/shop/dog1.jpg');

-- 商品狀態
CREATE TABLE `order_condition`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`conditon` VARCHAR(20) NOT NULL
);
INSERT INTO `order_condition`(`conditon`)
VALUES
('未出貨'),
('已出貨'),
('完成訂單'),
('取消出貨');

-- 商品訂單
CREATE TABLE `orders`(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `fk_user_id` INT NOT NULL,
  `pay` boolean NOT NULL,
  `shipment` boolean NOT NULL,
  `fk_condition_id`  INT NOT NULL,
  `CREATEd_at` TIMESTAMP DEFAULT NOW(),
  foreign KEY (fk_user_id) references users(id),
  foreign KEY (fk_condition_id) references order_condition(id)
);
INSERT INTO `orders`( `fk_user_id`,`pay`,`shipment`,`fk_condition_id`)
VALUES
('1','1','1','2'),
('2','0','0','1'),
('3','0','1','4'),
('4','0','0','2'),
('5','1','1','1'),
('6','1','0','3'),
('7','0','1','4'),
('8','1','0','2'),
('9','1','1','3'),
('10','0','0','2');


-- 商品訂單_詳細
CREATE TABLE `order_detail`(
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `fk_order_id` INT NOT NULL,
  `fk_product_id` INT NOT NULL,
  `qty` INT NOT NULL,
  foreign KEY (fk_order_id) references orders(id),
  foreign KEY (fk_product_id) references products(id)
);
INSERT INTO `order_detail`(`fk_order_id`,`fk_product_id`,`qty`)
VALUES('3','1','1'),
('10','1','1'),
('4','2','2'),
('5','4','1'),
('6','6','3'),
('7','7','1'),
('9','9','2'),
('2','9','2'),
('1','9','2'),
('1','7','3'),
('1','6','7'),
('8','10','1');



--------------------------------------------------------------------------------------------------------------------------------
-- 店家服務圖示
CREATE TABLE `store_serve_icon`(
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `serve_name` VARCHAR(40) NOT NULL,
  `serve_EN_name` VARCHAR(40) NOT NULL,
  `icon` VARCHAR(100) NOT NULL
);
INSERT INTO `store_serve_icon`( `serve_name`, `serve_EN_name`, `icon`)
VALUES
('無障礙廁所', 'freeman', '<i class="fa-solid fa-wheelchair"></i>'),
('無線網路', 'wifi','<i class="fa-solid fa-wifi"></i>'),
('寵物友善', 'pet','<i class="fa-solid fa-paw"></i>'),
('親子空間', 'babyroom', '<i class="fa-solid fa-baby"></i>');

-- 店家門市
CREATE TABLE `store`(
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `store_name` VARCHAR(20) NOT NULL UNIQUE, -- 不重複
  `city` VARCHAR(20) NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(20) NOT NULL UNIQUE, -- 不重複
  `photo` VARCHAR(200),
  `CREATEd_at` TIMESTAMP DEFAULT NOW()
);
INSERT INTO `store`(`store_name`, `city`, `address`, `phone`)
VALUES
('新店店', '新北市', '新店區中央路159號4F', '02-412-8869'),
('前金店', '高雄市', '前金區中正四路233號', '07-215-3233'),
('中正店', '高雄市', '新興區中正二路162號', '07-225-0973'),
('七賢店', '高雄市', '新興區七賢一路293號', '07-236-3743'),
('廣林店', '高雄市', '苓雅區廣州一街149-1號', '07-227-1360'),
('大順店', '高雄市', '三民區民族一路427號1F', '07-395-3647'),
('楠梓店', '高雄市', '楠梓區楠梓新路225號', '07-352-6213'),
('藍昌店', '高雄市', '楠梓區藍昌路480號', '07-352-6222'),
('府榮店', '台南市', '東區長榮路一段181號', '06-200-4907'),
('長榮店', '台南市', '東區長榮路三段139號', '06-200-5550'),
('永康店', '台南市', '永康區中華路157號', '06-311-3148'),
('湖美店', '台南市', '中西區中華西路二段865號', '06-358-1011'),
('垂楊店', '嘉義市', '東區垂楊路537號1樓', '05-283-2501');

-- 店家營業時間
CREATE TABLE `store_time`(
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `fk_store_id` INT UNSIGNED,
  `dow` VARCHAR(20) NOT NULL,
  `status` TINYINT NOT NULL,
  `status_name` VARCHAR(20) NOT NULL,
  `start_time` TIME, -- hh:mm:ss
  `end_time` TIME, -- hh:mm:ss
  FOREIGN KEY(fk_store_id) REFERENCES store(id)
);
INSERT INTO `store_time`(`fk_store_id`, `dow`, `status`, `status_name`, `start_time`, `end_time`)
VALUES
('1', '星期一', '0', '休息', '', ''),
('1', '星期二', '1', '營業', '080000', '220000'),
('1', '星期三', '1', '營業', '080000', '220000'),
('1', '星期四', '1', '營業', '080000', '220000'),
('1', '星期五', '1', '營業', '080000', '220000'),
('1', '星期六', '1', '營業', '080000', '220000'),
('1', '星期日', '1', '營業', '080000', '220000'),
('2', '星期一', '0', '休息', '', ''),
('2', '星期二', '1', '營業', '080000', '220000'),
('2', '星期三', '1', '營業', '080000', '220000'),
('2', '星期四', '1', '營業', '080000', '220000'),
('2', '星期五', '0', '休息', '', ''),
('2', '星期六', '1', '營業', '080000', '220000'),
('2', '星期日', '1', '營業', '080000', '220000'),
('3', '星期一', '1', '營業', '080000', '220000'),
('3', '星期二', '1', '營業', '080000', '220000'),
('3', '星期三', '1', '營業', '080000', '220000'),
('3', '星期四', '1', '營業', '080000', '220000'),
('3', '星期五', '1', '營業', '080000', '220000'),
('3', '星期六', '0', '休息', '', ''),
('3', '星期日', '0', '休息', '', ''),
('4', '星期一', '0', '休息', '', ''),
('4', '星期二', '1', '營業', '080000', '220000'),
('4', '星期三', '1', '營業', '080000', '220000'),
('4', '星期四', '1', '營業', '080000', '220000'),
('4', '星期五', '1', '營業', '080000', '220000'),
('4', '星期六', '1', '營業', '080000', '220000'),
('4', '星期日', '1', '營業', '080000', '220000'),
('5', '星期一', '0', '休息', '', ''),
('5', '星期二', '0', '休息', '', ''),
('5', '星期三', '1', '營業', '080000', '220000'),
('5', '星期四', '1', '營業', '080000', '220000'),
('5', '星期五', '1', '營業', '080000', '220000'),
('5', '星期六', '1', '營業', '080000', '220000'),
('5', '星期日', '1', '營業', '080000', '220000'),
('6', '星期一', '0', '休息', '', ''),
('6', '星期二', '0', '休息', '', ''),
('6', '星期三', '1', '營業', '080000', '220000'),
('6', '星期四', '1', '營業', '080000', '220000'),
('6', '星期五', '1', '營業', '080000', '220000'),
('6', '星期六', '1', '營業', '080000', '220000'),
('6', '星期日', '1', '營業', '080000', '220000'),
('7', '星期一', '0', '休息', '', ''),
('7', '星期二', '0', '休息', '', ''),
('7', '星期三', '1', '營業', '080000', '220000'),
('7', '星期四', '1', '營業', '080000', '220000'),
('7', '星期五', '1', '營業', '080000', '220000'),
('7', '星期六', '1', '營業', '080000', '220000'),
('7', '星期日', '1', '營業', '080000', '220000'),
('8', '星期一', '0', '休息', '', ''),
('8', '星期二', '0', '休息', '', ''),
('8', '星期三', '1', '營業', '080000', '220000'),
('8', '星期四', '1', '營業', '080000', '220000'),
('8', '星期五', '1', '營業', '080000', '220000'),
('8', '星期六', '1', '營業', '080000', '220000'),
('8', '星期日', '1', '營業', '080000', '220000'),
('9', '星期一', '0', '休息', '', ''),
('9', '星期二', '0', '休息', '', ''),
('9', '星期三', '1', '營業', '080000', '220000'),
('9', '星期四', '1', '營業', '080000', '220000'),
('9', '星期五', '1', '營業', '080000', '220000'),
('9', '星期六', '1', '營業', '080000', '220000'),
('9', '星期日', '1', '營業', '080000', '220000'),
('10', '星期一', '0', '休息', '', ''),
('10', '星期二', '0', '休息', '', ''),
('10', '星期三', '1', '營業', '080000', '220000'),
('10', '星期四', '1', '營業', '080000', '220000'),
('10', '星期五', '1', '營業', '080000', '220000'),
('10', '星期六', '1', '營業', '080000', '220000'),
('10', '星期日', '1', '營業', '080000', '220000'),
('11', '星期一', '0', '休息', '', ''),
('11', '星期二', '0', '休息', '', ''),
('11', '星期三', '1', '營業', '080000', '220000'),
('11', '星期四', '1', '營業', '080000', '220000'),
('11', '星期五', '1', '營業', '080000', '220000'),
('11', '星期六', '1', '營業', '080000', '220000'),
('11', '星期日', '1', '營業', '080000', '220000'),
('12', '星期一', '0', '休息', '', ''),
('12', '星期二', '0', '休息', '', ''),
('12', '星期三', '1', '營業', '080000', '220000'),
('12', '星期四', '1', '營業', '080000', '220000'),
('12', '星期五', '1', '營業', '080000', '220000'),
('12', '星期六', '1', '營業', '080000', '220000'),
('12', '星期日', '1', '營業', '080000', '220000'),
('13', '星期一', '0', '休息', '', ''),
('13', '星期二', '0', '休息', '', ''),
('13', '星期三', '1', '營業', '080000', '220000'),
('13', '星期四', '1', '營業', '080000', '220000'),
('13', '星期五', '1', '營業', '080000', '220000'),
('13', '星期六', '1', '營業', '080000', '220000'),
('13', '星期日', '1', '營業', '080000', '220000');


-- 店家服務
CREATE TABLE `store_serve`(
  `id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `fk_store_id` INT UNSIGNED,
  `fk_serve_id` INT UNSIGNED,
  `serve_status` boolean NOT NULL,
  FOREIGN KEY(fk_store_id) REFERENCES store(id),
  FOREIGN KEY(fk_serve_id) REFERENCES store_serve_icon(id)
);
INSERT INTO `store_serve`(`fk_store_id`, `fk_serve_id`, `serve_status`)
VALUES
('1', '1', '1'),('1', '2', '1'),('1', '3', '0'),('1', '4', '0'),
('2', '1', '1'),('2', '2', '1'),('2', '3', '0'),('2', '4', '1'),
('3', '1', '0'),('3', '2', '0'),('3', '3', '0'),('3', '4', '1'),
('4', '1', '1'),('4', '2', '1'),('4', '3', '1'),('4', '4', '1'),
('5', '1', '1'),('5', '2', '1'),('5', '3', '1'),('5', '4', '1'),
('6', '1', '1'),('6', '2', '1'),('6', '3', '1'),('6', '4', '1'),
('7', '1', '1'),('7', '2', '1'),('7', '3', '1'),('7', '4', '1'),
('8', '1', '1'),('8', '2', '1'),('8', '3', '1'),('8', '4', '1'),
('9', '1', '1'),('9', '2', '1'),('9', '3', '1'),('9', '4', '1'),
('10', '1', '1'),('10', '2', '1'),('10', '3', '1'),('10', '4', '1'),
('11', '1', '1'),('11', '2', '1'),('11', '3', '1'),('11', '4', '1'),
('12', '1', '1'),('12', '2', '1'),('12', '3', '1'),('12', '4', '1'),
('13', '1', '1'),('13', '2', '1'),('13', '3', '1'),('13', '4', '1');



--------------------------------------------------------------------------------------------------------------------------------
-- 菜單
CREATE TABLE `drink_menu`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `drink_name` VARCHAR(100) NOT NULL,
  `url` VARCHAR(200) NOT NULL,
  `price` INT NOT NULL,
  `content` VARCHAR(200) NOT NULL,
  `status` boolean NULL
);
INSERT INTO drink_menu(drink_name, url, price, content, status)
VALUES
('美式咖啡 Caffè Americano','./img/美式咖啡.jpg','110','以歐洲方式調製，結合經典濃縮咖啡及熱水，帶來濃郁豐富的咖啡滋味。','1'),
('冰美式咖啡 Iced Caffè Americano','./img/冰美式咖啡.jpg','110','以歐洲方式調製，帶來濃郁豐富的咖啡滋味。','0'),
('那堤','./img/那堤.jpg','100','濃郁醇厚的濃縮咖啡，搭配新鮮蒸煮的優質鮮奶，覆上綿密細緻的奶泡','1'),
('濃縮咖啡 Espresso','./img/濃縮咖啡.jpg','80','濃郁豐厚的濃縮咖啡是咖啡的靈魂，它醇厚的口感、綿長香氣及焦糖般的甜味，豐富而令人難忘。','1'),
('焦糖瑪奇朵 Caramel Macchiato','./img/焦糖瑪奇朵.jpg','155','融合新鮮蒸奶及香草風味糖漿後，倒入濃縮咖啡並在奶泡上覆以香甜焦糖醬，呈現多層次風味，是深受歡迎的飲料。','1'),
('冰焦糖瑪奇朵 Iced Caramel Macchiato','./img/冰焦糖瑪奇朵.jpg','100','加糖加奶精','1'),
('可可綿雲瑪奇朵 Cocoa Cloud Macchiato','./img/可可綿雲瑪奇朵.jpg','155','輕柔的雲朵泡沫結合經典濃縮咖啡與濃醇的巧克力，尾韻帶有些微香草甜美，豐富的層次帶給您多重的味蕾享受。','0'),
('冰可可綿雲瑪奇朵 Iced Cocoa Cloud Macchiato','./img/冰可可綿雲瑪奇朵.jpg','155','輕柔的雲朵泡沫結合經典濃縮咖啡與濃醇的巧克力，尾韻帶有些微香草甜美，豐富的層次帶給您多重的味蕾享受。','1'),
('可可瑪奇朵 Cocoa Macchiato','./img/可可瑪奇朵.jpg','155','第一口綿密香醇的奶泡混合著香甜可可的糖醬滋味，搭配經典義式濃縮咖啡，層次堆疊滿足味蕾的享受。感受猶如奶油般柔滑口感及細緻可可香氣。','0'),
('冰可可瑪奇朵 Iced Cocoa Macchiato','./img/冰可可瑪奇朵.jpg','155','第一口綿密香醇的奶泡混合著香甜可可的糖醬滋味，搭配經典義式濃縮咖啡，層次堆疊滿足味蕾的享受。感受猶如奶油般柔滑口感及細緻可可香氣。','1'),
('雲朵冰搖濃縮咖啡 Cold Foam Iced Espresso','./img/雲朵冰搖濃縮咖啡.jpg','145','創新的現煮義式飲品!滿足咖啡饕客的咖啡味蕾。綿滑香柔的雲朵(冰奶泡)是由低脂牛奶打製而成，倒入杯中後再添加手工搖製，濃郁香醇的冰搖濃縮咖啡，在冰鎮清爽的滋味中，品嘗兩者交織出的驚喜風味！','0'),
('摩卡 Caffè Mocha','./img/摩卡.jpg','150','由濃縮咖啡、摩卡醬及新鮮蒸奶調製，覆上輕盈柔細的鮮奶油，帶來香濃的巧克力及咖啡風味。','1'),
('冰摩卡 Iced Caffè Mocha','./img/冰摩卡.jpg','150','由濃縮咖啡、摩卡醬及新鮮蒸奶調製，覆上輕盈柔細的鮮奶油，帶來香濃的巧克力及咖啡風味。','1'),
('卡布奇諾 Cappuccino','./img/卡布奇諾.jpg','135','融合濃縮咖啡及現蒸牛奶，加上豐厚細緻的奶泡，呈現醇厚咖啡風味。','1'),
('特選馥郁那堤 Espresso Choice Extra Shot Latte','./img/特選馥郁那堤.jpg','160','精心為您挑選來自不同產區的濃縮咖啡，並選擇使用較多份的濃縮咖啡增加濃醇度，搭配牛奶凸顯咖啡甜感，帶給您多元的牛奶咖啡風味。','1'),
('冰特選馥郁那堤 Espresso Choice Extra Shot Iced Latte','./img/冰特選馥郁那堤.jpg','160','精心為您挑選來自不同產區的濃縮咖啡，並選擇使用較多份的濃縮咖啡增加濃醇度，搭配牛奶凸顯咖啡甜感，帶給您多元的牛奶咖啡風味。','0'),
('馥列白 Flat White','./img/馥列白.jpg','150','此款咖啡源由自與亞洲相鄰，精品咖啡文化紮實的澳洲，在濃縮咖啡與牛奶的比例上，選擇使用較多份的ristretto shots 短濃縮增加咖啡濃醇度的同時並凸顯咖啡甜感，由漂亮的圓點結束，完成一杯風味較濃郁且平衡的牛奶咖啡。','1'),
('冰馥列白 Iced Flat White','./img/冰馥列白.jpg','150','此款咖啡源由自與亞洲相鄰，精品咖啡文化紮實的澳洲，在濃縮咖啡與牛奶的比例上，選擇使用較多份的ristretto shots 短濃縮增加咖啡濃醇度的同時並凸顯咖啡甜感，由漂亮的圓點結束，完成一杯風味較濃郁且平衡的牛奶咖啡。','0');

-- 訂餐管理
CREATE TABLE `drink_order`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `fk_user_id` INT NOT NULL,
  `pay` VARCHAR(20) NOT NULL,
  `fk_store_id` INT UNSIGNED NOT NULL,
  `status` TINYINT NOT NULL,
   `CREATEd_at` TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(fk_user_id) REFERENCES users(id),
  FOREIGN KEY(fk_store_id) REFERENCES store(id)
);
INSERT INTO drink_order(fk_user_id, pay, fk_store_id, status)
VALUES
('1','信用卡','1','1'),
('1','現金','2','1'),
('1','信用卡','3','1'),
('2','APPLE PAY','4','1'),
('2','現金','5','1'),
('6','信用卡','6','1'),
('7','信用卡','7','0'),
('4','信用卡','8','1'),
('4','現金','9','1'),
('10','信用卡','10','1'),
('11','信用卡','11','1'),
('12','信用卡','12','0'),
('13','現金','9','1'),
('14','現金','9','1'),
('15','信用卡','7','1'),
('16','現金','12','0'),
('17','現金','13','1'),
('18','APPLE PAY','1','1'),
('19','信用卡','3','0'),
('20','信用卡','9','1'),
('21','APPLE PAY','6','1'),
('22','信用卡','5','1'),
('23','信用卡','11','0'),
('24','信用卡','13','1');

-- 訂餐管理詳細
CREATE TABLE `drink_order_detail`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `fk_drink_order_id` INT,
  `fk_drink_menu_id` INT,
  `qty` INT NOT NULL,
  FOREIGN KEY(fk_drink_order_id) REFERENCES drink_order(id),
  FOREIGN KEY(fk_drink_menu_id) REFERENCES drink_menu(id)
);
INSERT INTO drink_order_detail(fk_drink_order_id, fk_drink_menu_id, qty)
VALUES
('1','12','1'),
('1','10','1'),
('2','10','1'),
('2','10','1'),
('3','10','1'),
('4','10','1'),
('4','10','1'),
('4','10','1'),
('5','10','1'),
('5','10','1'),
('6','10','1'),
('6','10','1'),
('7','10','1'),
('8','10','1'),
('9','10','1'),
('10','11','2'),
('10','9','2'),
('11','5','3'),
('11','1','2'),
('12','2','2'),
('13','1','2'),
('14','4','2'),
('14','8','1'),
('15','1','2'),
('16','1','1'),
('17','9','1'),
('18','11','1'),
('19','1','2'),
('20','13','2'),
('21','12','1'),
('22','1','1'),
('23','11','2'),
('24','1','1');



--------------------------------------------------------------------------------------------------------------------------------
-- 首頁橫幅
CREATE TABLE `banner`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `photo` varchar(200),
  `title` VARCHAR(50) NOT NULL,
  `status` tinyint NOT NULL
);
INSERT INTO `banner`(`photo`,`title`,`status`)
VALUES
('./image/banner1.jpg','咖啡店室內環境1','0'),
('./image/banner2.jpg','咖啡店室內環境2','0'),
('./image/banner3.jpg','咖啡店室內環境3','0'),
('./image/banner4.jpg','咖啡店室內環境4','0'),
('./image/banner5.jpg','咖啡店室內環境5','0'),
('./image/banner6.jpg','咖啡店室內環境6','0');
-- 首頁消息
CREATE TABLE `news`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(50) NOT NULL,
  `contents` VARCHAR(225),
  `CREATEd_at` DATE NOT NULL
);
INSERT INTO `news`(`title`,`contents`,`CREATED_at`)
VALUES
('高雄總店公休公告','高雄總店將於2022年10月10日公休，因店內裝修故閉店一天，敬請見諒。','2022-10-09'),
('台北店公休公告','台北店將於2022年10月10日公休，因店內裝修故閉店一天，敬請見諒。','2022-10-09'),
('桃園店公休公告','桃園店將於2022年10月10日公休，因店內裝修故閉店一天，敬請見諒。','2022-10-09'),
('台中店公休公告','台中店將於2022年10月10日公休，因店內裝修故閉店一天，敬請見諒。','2022-10-09'),
('嘉義店公休公告','嘉義店將於2022年10月10日公休，因店內裝修故閉店一天，敬請見諒。','2022-10-09'),
('台南店公休公告','台南店將於2022年10月10日公休，因店內裝修故閉店一天，敬請見諒。','2022-10-09');
-- 優惠活動
CREATE TABLE `activity`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(50) NOT NULL,
  `start_time` DATE NOT NULL,
  `end_time` DATE NOT NULL,
  `discount` VARCHAR(50) NOT NULL,
  `contents` VARCHAR(225) NOT NULL,
  `status` tinyint NOT NULL, 
  `CREATEd_at` DATE NOT NULL
);
INSERT INTO `activity`(`title`,`start_time`,`end_time`,`discount`,`contents`,`status`,`CREATED_at`)
VALUES
('八五折活動','2021-12-25','2021-12-31','15OFF','為了歡慶新年，從12月25日至12月31日推出黑咖啡系列指定組合優惠價，皆可使用「八五折優惠」,超佛價格一起團購起來！','0','2021-12-24'),
('八折活動','2022-01-25','2022-01-31','20OFF','為了歡慶新年，從1月25日至1月31日推出黑咖啡系列指定組合優惠價，皆可使用「八折優惠」,超佛價格一起團購起來！','0','2022-1-24'),
('五折活動','2022-02-25','2022-02-28','50OFF','為了歡慶新年，從2月25日至2月31日推出黑咖啡系列指定組合優惠價，皆可使用「五折優惠」,超佛價格一起團購起來！','0','2022-2-24'),
('七五折活動','2022-03-25','2022-03-31','25OFF','為了歡慶新年，從3月25日至3月31日推出黑咖啡系列指定組合優惠價，皆可使用「七五折優惠」,超佛價格一起團購起來！','0','2022-3-24'),
('八八折活動','2022-04-25','2022-04-30','12OFF','為了歡慶新年，從4月25日至4月31日推出黑咖啡系列指定組合優惠價，皆可使用「八八折優惠」，超佛價格一起團購起來！','0','2022-4-24'),
('七折活動','2022-05-25','2022-05-31','30OFF','為了歡慶新年，從5月25日至5月31日推出黑咖啡系列指定組合優惠價，皆可使用「七折優惠」，超佛價格一起團購起來！','0','2022-5-24'),
('九折活動','2022-06-25','2022-06-30','10OFF','為了歡慶新年，從6月25日至6月31日推出黑咖啡系列指定組合優惠價，皆可使用「九折優惠」，超佛價格一起團購起來！','0','2022-6-24');



--------------------------------------------------------------------------------------------------------------------------------
-- 標籤
CREATE TABLE `tags`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `tag_name` VARCHAR(20) NOT NULL
);
INSERT INTO `tags`(`tag_name`)
VALUES
('#咖啡House'),
('#美味咖啡'),
('#名人專欄篇'),
('#大神好帥'),
('#咖啡地圖');

-- 文章類別
CREATE TABLE `blog_types`(
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `types_name` VARCHAR(20) NOT NULL
);
INSERT INTO `blog_types`(`types_name`)
VALUES
('咖啡篇'),
('沖煮篇'),
('咖啡豆篇'),
('名人專欄篇'),
('好物分享篇');

  -- 文章
CREATE TABLE `blogs`(
	`id` INT AUTO_INCREMENT PRIMARY KEY,
	`fk_type_id` INT NOT NULL,
	`title` VARCHAR(200) NOT NULL,
	`content` TEXT NOT NULL,
	`fk_tag_id` INT NOT NULL,
	`CREATEd_at` TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(`fk_type_id`) REFERENCES blog_types(id),
   FOREIGN KEY(`fk_tag_id`) REFERENCES tags(id)
);
INSERT INTO `blogs`(`fk_type_id`,`title`,`content`,`fk_tag_id`)
VALUES
('1','你聽過白咖啡嗎？跟拿鐵、卡布奇諾、瑪奇朵有什麼不同？','屬於義式濃縮咖啡一員的白咖啡，主要是以蒸汽牛奶搭配濃縮咖啡、最後再鋪上一層細緻奶泡而製成的義式花式咖啡，與拿鐵、卡布奇諾、瑪奇朵等牛奶咖啡屬同一家族，雖然主成分皆是以濃縮咖啡與牛奶沖調而成的咖啡飲品，但各款咖啡的調配都有不同的比例，稍有誤差可能就會製成另一款牛奶咖啡。
白咖啡的起源
白咖啡的起源
關於白咖啡的起源眾說紛紜，目前大致可依循的方向分別是緣起於「澳大利亞和紐西蘭」以及「馬來西亞」的白咖啡。馥芮白 Flat White，又稱為白咖啡、小白咖啡、平白咖啡，來自於紐澳一代，有一說是於1985年，由一家雪梨的咖啡館所研發；另一說則是在1989年，威靈頓的一家咖啡館因沖煮出錯誤比例的卡布奇諾奶泡，而藉此創新並為其命名。其實，不論是發跡於澳大利亞或是紐西蘭，這個來自南太平洋的馥芮白 Flat White，都為全球咖啡愛好者開啟了嶄新的味蕾饗宴。
第二個白咖啡的起源則來自馬來西亞，白咖啡 White Coffee，是馬來西亞主要的出口產品，起源於英屬馬來亞時期，會出現白咖啡的原因在於英國統治馬來半島時，常會雇用馬來西亞人作為家中管事，當英國雇主想喝黑咖啡時，管家便會送上沒加奶的純黑咖啡，而若是想來點富含奶香的咖啡，管家則會遞上加了牛奶的白咖啡，也因為有過這一段服務英國雇主的經驗，馬來西亞人不但對於咖啡知識有了更進一步的了解，也學習到豐富的義式咖啡製法。白咖啡的第一代創辦人曹運廷先生，就是運用過去受僱於英國人學習到的咖啡經驗，再結合當時於華人社會最火紅的焦糖黑咖啡，經多次調配測試，終於製成專屬華人口味的白咖啡 White Coffee，隨後並將此發揚光大，也成為馬來西亞最知名的名產之一。
白咖啡、拿鐵、卡布奇諾、瑪奇朵的牛奶和咖啡比例
白咖啡與拿鐵的差別？
▍白咖啡
濃縮咖啡：1～2份
奶泡＋牛奶：共約130ml，由絲滑綿密的細緻奶泡、香濃的蒸汽熱牛奶組成
▍拿鐵
濃縮咖啡：1～2份
奶泡＋牛奶：共約210ml，由絲滑綿密的細緻奶泡、香濃的蒸汽熱牛奶組成
( 推薦閱讀：「精品拿鐵」vs「一般拿鐵」怎麼選？ 最熱門的花式咖啡介紹 )
▍卡布奇諾
濃縮咖啡：1份
奶泡＋牛奶：共約150ml，由飽滿挺立的粗奶泡、香濃的蒸汽熱牛奶組成
▍瑪奇朵
濃縮咖啡：1份
奶泡：共約1～2匙的微量絲滑綿密的細緻奶泡
關於奶泡和牛奶，一般來說會分成最底層的香濃蒸汽熱牛奶、中上層的絲滑綿密細緻奶泡、最頂層的飽滿挺立粗奶泡，其中，白咖啡、拿鐵、卡布奇諾這三種咖啡，是最容易搞混的咖啡款式，三者皆是由濃縮咖啡、奶泡、牛奶所組成，不同之處在於奶泡打發的細緻度、以及調配比例的多寡。
而白咖啡的咖啡豆，多以中輕度低溫烘培至出現焦糖香氣而製成，沖調時再搭配絲滑綿密的細緻奶泡、以及香濃的蒸汽熱牛奶，入口油脂飽滿且富含焦糖甜香，整體滑順回甘、風味輕柔，在世界各地皆擁有一票白咖啡的忠實愛好者，從獨立咖啡店到各大連鎖咖啡廳都能見到其蹤跡，絕對是一款香醇又非常順口的咖啡選擇！', '1'),


('2','手沖咖啡，不同溫度對於咖啡風味的感受有何不同？','因為很重要，所以提及咖啡沖煮，不厭其煩地都會一再被講者、書籍、影片叮嚀，咖啡在沖煮時，最重要的沖煮變因是咖啡粉量、研磨粗細、沖煮時間，以及沖煮水溫。萃取與研磨之間的變化效應，通常緊接在四大沖煮變因之後，坊間針對萃取與研磨開設的課程更是不可計數。
那麼溫度呢？由於水溫會直接影響咖啡的萃取狀況，也會影響飲用者的飲用狀況，所有仰賴水作為介質的嗜好品，無一不重視水質與溫度，今天就讓我們來好好談談適宜沖煮的溫度，以及合適飲用的溫度吧！
手沖咖啡溫度
水溫與萃取率
通常情況下，我們知道沖泡紅茶的時候，適合95度以上的高溫，沖泡烏龍茶的時候，適合88至90度左右的中高溫，而沖泡日本茶的時候，則適合80至85度這樣略低的水溫。可是為什麼呢？與製作過程有關，紅茶的發酵狀態完全且焙火較深，需要較高的水溫刺激茶葉溶出風味物質、增加其萃取率，烏龍茶相較紅茶的發酵狀態淺，需要的水溫略低一些，而日本茶因為多屬蒸製，不若台灣與中國習慣炒焙茶葉，其細嫩的茶苗遇水，即開始釋放風味分子，除了水溫不宜太高、以免破壞芳香分子之外，也不適合如紅茶或烏龍茶般得以一再回沖。
回到咖啡亦然，水作為介質，會溶出咖啡內含的奎寧酸、氨基酸、咖啡因與單寧酸等物質，在不同階段的沖煮過程中，會產生不同反應、溶出不同的風味分子。以感官曲線來看，酸質會在最一開始被萃取出來，接著是甜感，最後是苦韻。
水的溫度越高，萃取物質的速度就會越快，儘管如此，也可能會將負面的味道壓榨出來。義式咖啡剛在台灣萌芽的初期，業內人士追求帶有「虎斑紋」的義式濃縮咖啡，實際上卻是高溫將極細的咖啡粉末迅速焦化，使得蛋白質變性的結果。而越低的水溫，由於無法完整地進行萃取，故而容易產生不同于單寧澀感的負面酸澀，或是猶如未熟穀物的噁心感。
( 推薦閱讀：沖出好咖啡關鍵要素「手沖咖啡萃取原理」介紹 )
因式制宜的水溫控制
不過上述的沖煮溫度討論，也不是一招打天下，雖然適用於義式沖煮、手沖等沖煮方式，不過因應不同的沖煮方式，也有各自不同的溫度選擇。比如延長水與咖啡粉作用時間的冷萃咖啡與冰滴咖啡，由於萃取時間較長，就不適合以高水溫進行萃取，否則會造成咖啡粉在時間與溫度均在高萃取狀況的極端狀態。
以低水溫進行萃取的咖啡，因為不是處在高溫環境，使得部分物質未溶出，避免了許多苦韻與雜味，讓滑順質地成為低水溫咖啡的特性，風味表現上以淡雅的果酸調性與甜感為主，接近水果茶的滋味相當討喜，在大眾市場很受青睞。
但是相同的萃取概念回到義式咖啡則不適用，即使延長萃取時間、調整研磨度也無法補償水溫過低造成物質未釋出的窘境。儘管酸質會是最早被釋出的物質，然後沒有油脂的析出，就無法溶出後段的甜感與苦韻，致使咖啡產生口感不平衡的結果。因此因應不同的沖煮方式，配合參數與萃取概念，挑選正確的水溫，是相當重要的事情。
虹吸咖啡沖煮
適宜的沖煮與恰當的飲用
除了把關沖煮上的水溫控制，提供給飲用者的溫度留意也不能小覷。熱飲溫杯、冰飲冰杯，以防製作好的液體置入盛裝容器時有過大的溫度變化，影響飲用者的飲用感受。
以熱拿鐵為例，萃取義式濃縮咖啡的溫度通常落在92至93度之間，萃取出的60ml液體，接著以蒸氣蒸打牛奶到55至65度，在不過度破壞乳蛋白的情況下、保留牛奶的甜度。兩者融合完成，溫度約莫落在50至55度之間，上層奶泡的溫度通常較底下液體的溫度再來得更低一點，飲用者入口時能感受到綿密口感、牛奶與咖啡交織的平衡感受，不至於燙口。
手沖咖啡一般來說會使用88至92度的水溫，由於沖煮過程中，水溫會不斷下降，將沖煮好的咖啡液體倒入預熱好的杯皿中，飲用者實際啜飲到的溫度約莫在65度左右。多數的咖啡沖煮方式，在沖煮過程中，水溫都是持續下降，唯有虹吸咖啡是採取完全不同的萃取方式，水溫持續攀升，因而虹吸咖啡的出杯溫度，通常會在80度左右，一般搭配大口徑的杯皿協助散熱。' , '2'),


('3','養豆重要嗎？為什麼咖啡烘焙完後，還需要養豆？','養豆，可以說是一個讓咖啡豆盡情呼吸的美妙過程，回溯咖啡的一生，大約可從咖啡果實談起，生命歷程則可分成三個階段，第一階段為生豆孕育期 – 採摘、篩豆、加工處理、包裝、販售生豆；第二階段為咖啡豆黃金期 – 烘豆、養豆、包裝、販售咖啡豆；第三階段為咖啡粉享受期 – 磨粉、沖煮、最後品飲，咖啡的生命週期就如同人類的日常般，隨著吸取空氣中的氧氣、以及釋放出二氧化碳的過程，全力演繹從青春到年邁的精彩時刻，這便是咖啡看似平凡卻讓人回味無窮的一生啊！
有經驗的烘豆者都知道慢工出細活、驚豔的咖啡豆值得等待，在烘焙的過程中，咖啡豆會釋放出大量的二氧化碳氣體，且會有微量的氣體直至烘焙完成後依然留存於咖啡豆中，滯留的時間不等、需隨著等待放置期慢慢流逝，至少約數天到一個月內，才能顯現咖啡原始的風味，口感上也更能品嚐出豐富的層次；若是在咖啡豆熱騰騰烘焙完成後就直接磨粉沖煮，喝到的多是因二氧化碳殘留而產生的酸澀、苦燥、悶雜味，會大大影響品飲者的味蕾感受！
而所謂的「等待放置期」，就是養豆，也有人稱之為排氣、醒豆、熟成，可以說是一個二氧化碳氣體釋放的過程，當烘豆開始時，生豆中所含有的水分和濕氣皆會快速蒸發，而隨著烘豆溫度逐漸升高，水分和高壓會產生化學反應，使油脂漸漸被帶入咖啡豆的細微毛孔中，也讓咖啡本身所富含的物質、香氣、和所釋放出的二氧化碳氣體被包覆留存於細胞之中。
咖啡養豆的方式
養豆的方法
關於養豆，是讓烘焙完成的咖啡豆放置於一個完全密閉、氣體只出不進的環境中，經由數天的時間，讓咖啡豆自然地排放氣體，最終才會獲得一份香醇順口的咖啡。目前最常被使用的養豆環境是單向排氣閥咖啡容器，其次也有人以氧氣填充容器來確保咖啡的新鮮度：
▍單向排氣閥容器
為防止咖啡豆碰到氧氣而造成變質，且又能同時排放出多餘的二氧化碳氣體，使用具有單向排氣閥的咖啡專用容器，就能有效避免氧氣、水氣、雜質等外來物質的進入，以及確保二氧化碳成功的釋放，促使養豆的過程更加順利。
▍氮氣填充容器
此方式主要是杜絕氧氣的干擾，避免咖啡豆腐敗變質，以利延長賞味期限。
咖啡新鮮度與最佳賞味期
咖啡豆的新鮮度以及最佳賞味期
咖啡豆是一個精細度極高的飲品，稍有因素微調就會影響其風味，雖然從生長環境和加工處理法等過程，就已確立其風味和特色的走向，但也確實會因為烘焙程度、養豆過程、沖煮方式等變因，而使得最後所品飲到的風味有所差異，為了讓咖啡豆最終可以順利將其風味和特色發揮出來，故盡可能地層層把關，將變因降至最低，而其中針對養豆所需要的等待放置期，並沒有一個制式的時間，主要還是會根據烘焙程度的不同，以及融合咖啡師過往的經驗，歸納出一個大概的通則：
義式咖啡豆：約需21天
極淺烘焙咖啡豆：約需12-14天
淺烘焙咖啡豆：約需10-12天
中淺烘焙咖啡豆：約需7-9天
中烘焙咖啡豆：約需5-8天
中深烘焙咖啡豆：約需4-6天
深烘焙咖啡豆：約需3天
在養豆的過程中，二氧化碳的存在也代表著咖啡豆新鮮的程度，隨著二氧化碳的釋放，咖啡豆也會根據不同烘焙程度所需養豆的天數來到風味高峰，爾後，最佳風味度也會與二氧化碳的留存一同漸漸減少，基本上大約在烘豆完成後一個月左右的時間，二氧化碳就會完全被排放，此時的咖啡風味也已經完全流逝，故若未沖氮保存咖啡豆，最佳賞味期限通常都不會超過一個月。
一般標榜新鮮烘焙的咖啡豆，皆會標明開始烘焙的日期，而部分沒有明顯標示的咖啡豆，則可根據香氣是否飽滿濃郁；咖啡豆是否過度出油；磨粉沖煮時悶蒸的膨脹度是否足夠等細節，來判斷咖啡豆的新鮮程度，此外，針對已開封但尚未品飲完畢的咖啡豆，通常直接存放於室內陰涼處保鮮即可，冷藏或冷凍容易因水氣和雜味而影響咖啡本身的風味，留存越久的咖啡豆，因二氧化碳的排氣狀況已大幅減少，故能被熱水萃取出的物質也相對增加，當磨粉沖煮時，拿捏也需更加精確小心！' , '3'),

('4','賴昱權 烘出咖啡的千百風情','賴昱權說：「第一次感覺到身為咖啡師的自己如此重要。因為，一杯咖啡可能是某個人的命運，溫暖，或是愛情。」
一個四歲就被診斷出有口吃的小孩，成績總是家族中唯一例外，更是高中時班上唯一落榜的人，自從大學時期到咖啡館當打工仔後，就此墜入令人驚艷的濃醇香。賴昱權笑稱自己是追著咖啡夢的浪漫傻瓜，每天窩在三坪大的烘豆室，四百多度高溫的烘焙鍋爐旁，從早上待到凌晨，烘十幾鍋、逾百公斤的咖啡豆，藉著不停的練習精進自己的烘豆技巧。
偶然間品嘗到一批咖啡豆，發現自己烘不出來如此「奔放的風味」，便辭去了工作，花盡積蓄飛往美國拜師、終獲歐美咖啡認證。
賴昱權 WCE 冠軍
Photo Credit：賴昱權
2014年，代表台灣前往義大利參加WCE世界盃咖啡烘豆大賽，從拿到大會提供的生豆起，參賽者必須憑藉著多年的經驗，先寫出一份生豆分析報告書，當中必須清楚說明拿到的生豆是否有瑕疵、好壞豆的比例、豆子水分飽和度⋯⋯等。
依據此寫出一份烘豆企劃書，從拿到豆子後一路研究分析，直到比賽的第三天才能真正站上烘焙機開始烘豆。三天的比賽是努力十四年的縮影，一身沾滿了咖啡燻香味的賴昱權說：「如果你沒有愛，你無法在這件事情登峰造極，因為你不夠瘋狂，便無法百分之百地投入。」
科技儀器挑戰人類專業
獲獎後的賴昱權依然不改初衷，堅持再忙也要陪客人喝一杯咖啡，他覺得只有透過與客人間的互動，才能真正掌握消費者需求，適時提供最好對味的咖啡給客人。因此在他店內，幾乎人人都有機會可看見金牌冠軍的身影。
「你覺得這杯咖啡濃嗎？」「挺爽口的，應該不算濃吧！」
arrow_forward_ios前往頁面
Powered by GliaStudio
「濃或不濃，不是我們說了算？」賴昱權邊說邊從手提箱中拿出一組精密的儀器，抽取了一些咖啡液體，滴到儀器上偵測的金屬片上。沒多久，顯示器跳出了1.8%的數字。他微皺了一下眉頭「這杯咖啡煮太濃了，我再親自煮一杯」
賴昱權 咖啡師
Photo Credit：賴昱權
這番場景在賴昱權店內常出現，也是他手下咖啡師最害怕的事情，但就因為有一個總是堅持用「科學」的方式，來挑戰大家咖啡功力的老闆，所以也讓每個店員都有能力考到國際咖啡證照。
那麼，你喝過為你特製的咖啡嗎?
賴昱權曾烘製過一款名為「Dear J.」的咖啡，以核果甜度為主軸，後段帶出熟梅果味，微酸卻糅和著甜味。它的誕生緣起於一個男孩向賴昱權「要幸福」的故事，賴昱權說：「因為這個特殊的要求，才讓他知道原來咖啡可以不只是咖啡，第一次感覺到身為咖啡師的自己如此重要。因為，一杯咖啡可能是某個人的命運，溫暖，或是愛情。」
咖啡職人的「一生懸命」
賴昱權與咖啡命定的相遇，打造出了不凡的人生態度。他說：「人可以不完美，但一定要特別。」別人看他是瘋子，因為他全心全意地投入；別人笑他是傻子，因為他堅持不放手；別人說他野心大，但他只是將咖啡化作生命的信仰，往夢想奔近。' , '4'),


('5','濾掛咖啡包推薦！錐形、方形各種類濾掛咖啡包評比','濾掛咖啡包的出現，受到許多上班族的推薦與喜愛，竄紅的主因為現代都市生活型態的步調非常快速。濾掛咖啡包起源於日本 – 山中產業株式會社，以茶包的沖泡概念運用於咖啡，進而發明了濾掛咖啡包，同時並申請專利，但因設計尚未純熟，濾掛咖啡包無法成功乘載咖啡粉與水的重量，故而沒有商業化量產，直到1998年大紀商社成功改良，才藉由行銷推薦給消費者、讓濾掛咖啡包發揚出去，也成為行程滿檔、沒有多餘時間等待者的新選擇，濾掛咖啡包更因此受到非常多人的推薦！
濾掛咖啡包，英文稱為Instant Drip Coffee Bag或是Drip Coffee Bag，有著即刻、迅速、方便之意，因其便利且極快速的特性，在亞洲市場一砲而紅，規模相當可觀！隨著濾掛咖啡包的技術不斷地改良和精進，可藉由添加真空氮氣充填技術，隔絕外界的空氣，維持咖啡的品質和新鮮度，讓濾掛咖啡包邁向可以媲美現磨手沖咖啡的完美口感之路。
市售的濾掛咖啡包，常見使用方形濾掛包呈現，因咖啡粉層分佈較為一致、且非專業手沖咖啡會使用的濾紙形狀，故較無法顯現特殊風味；反觀，由 iDrip 所推出的濾掛咖啡包，不但以錐形濾掛包呈現，且是專業手沖咖啡會使用的濾紙造型，同時更使用數十位世界冠軍咖啡大師所製作出的咖啡風味，並藉由悶蒸、沖煮等手法，完整還原咖啡大師的獨特手法，不用出國就能喝到一杯完美的精品咖啡，自2018年發表以來，受到各界人士的推薦！
iDrip錐形濾掛咖啡包
iDrip – 錐形濾掛咖啡包
| 簡介 |
市面最新型模擬咖啡師所普遍使用的錐形濾杯造型濾紙，除了設計能固定錐形的狀態，同時也因為流速較慢，可以同時利用浸泡以及沖泡的手法，讓咖啡師以均勻水柱沖煮咖啡粉層的手法得以完整保留。
| 特色 |
不織布材質製作
專業手沖濾紙造型
粉層呈現錐形分佈，經過悶蒸、沖煮等過程，即可萃取出一杯完整表現前、中、後段風味調性的精品咖啡
流速較慢，可同時利用浸泡與沖煮的優點
真空氮氣充填技術，完整封存咖啡的新鮮度與完美風味，撕開咖啡包瞬間就能感受到撲鼻香氣！
方形濾掛咖啡包
市售 – 方形濾掛咖啡包
| 簡介 |
市面上最常見到的濾掛咖啡包造型，可於咖啡各大廠牌所推出的濾掛咖啡包產品找到蹤跡。
| 特色 |
不織布材質製作
濾掛包底部幾乎與上方口徑同寬，呈現方型狀
因粉層分佈統一，故較無法將全部的風味都表現出來 (調性較單一)
由於濾掛包形狀的關係，如未能把握好沖煮的時間、水流速度等，較容易因浸泡而過度萃取
此濾掛包非專業手沖咖啡會使用的濾紙款式/形狀
浸泡式濾掛咖啡包
市售 – 浸泡式濾掛咖啡包
| 簡介 |
懶人沖煮法，可以熱水浸泡，亦可使用冷水沖泡後，放入冰箱長時間萃取。
| 特色 |
不織布材質製作
類似茶包的浸泡形式，因無需撕開沖煮，故沒有口徑問題
不論使用冷或熱水，都是直接浸泡，故風味調性較單一
由於濾掛包形狀以及懸掛方式的關係，咖啡包多半浸泡在咖啡杯中，如未能把握好沖煮的時間、水流速度等，較容易因浸泡而過度萃取
此濾掛包非專業手沖咖啡會使用的方式
濾掛咖啡包種類 – 綜合比較表
選擇濾掛咖啡包的好處
無需自行測量咖啡粉量
無需購買整包咖啡豆/粉，隨時可以喝到新鮮且不同產地、品種、風味的咖啡
方便、快速、可隨身攜帶，想喝時即可沖煮
沖煮時間短，幾乎不用等待
如選擇 iDrip濾掛咖啡包，可喝到由數十位咖啡冠軍、大師所製作出的精品咖啡風味
如搭配使用 iDrip Da Vinci S 智能職人手沖咖啡機，便可直接還原冠軍咖啡大師所沖煮出的完美精品咖啡風味
如果，可以近距離喝到一杯世界冠軍咖啡大師從咖啡產地選購、進行烘焙研磨、最後以獨特的手沖手法，沖煮出一杯稀有的世界冠軍咖啡，誰又會想要自己沖煮呢？然而，不可能隨時因為想喝世界冠軍大師的咖啡而每天坐飛機，許多人更是沒有多餘的時間深入研究精品咖啡，因此，直接選用 iDrip 的濾掛咖啡包，變成為最被推薦選用的方式！從選豆、製作、到品管，只有1/100的咖啡豆能成就最原始風味細節，也只有通過精品咖啡協會(SCA) 特選杯測分數80分以上的精品咖啡豆，可以入選 iDrip 濾掛咖啡包的名單，並與專業世界冠軍咖啡大師們合作，協力還原世界冠軍咖啡的完美風味。
不亞於手沖咖啡的濾掛咖啡包，有了世界冠軍咖啡大師的把關、iDrip 的獨家設計、以及各界人士的強力推薦，更讓 iDrip 濾掛咖啡包成為生活新品味，隨時隨地都能擁有一杯完美的精品好咖啡！' ,'5');

-- 文章照片
CREATE TABLE `blog_photos`(
  `id` INT AUTO_INCREMENT PRIMARY KEY, 
  `fk_blog_id` INT NOT NULL,
  `url` TEXT NOT NULL,
  `photo_alt` VARCHAR(20),
  FOREIGN KEY(fk_blog_id) REFERENCES blogs(id)
  );
INSERT INTO`blog_photos`(`fk_blog_id`,`url`,`photo_alt`)
VALUES
('1','./img/1coffee10001.jpg','coffee-photo001'),
('2','./img/2pourover20001.jpg','pourover-photo001'),
('3','./img/3beans30001.jpg','beans-photo001'),
('4','./img/4celebrity40001.jpg','celebrity-photo001'),
('5','./img/5share50001.jpg','share-photo001'),


('1','./img/1coffee10002.jpg','coffee-photo002'),
('2','./img/2pourover20002.jpg','pourover-photo002'),
('3','./img/3beans30002.jpg','beans-photo002'),
('4','./img/4celebrity40002.jpg','celebrity-photo002'),
('5','./img/5share50001.jpg','share-photo002'),




('1','./img/1coffee10003.jpg','coffee-photo003'),
('2','./img/2pourover20003.jpg','pourover-photo003'),
('3','./img/3beans30003.jpg','beans-photo003'),
('4','./img/4celebrity40003.jpg','celebrity-photo003'),
('5','./img/5share50003.jpg','share-photo003'),
('5','./img/5share50004.jpg','share-photo004'),



('1','./img/1coffee10004.jpg','coffee-photo004'),
('2','./img/2pourover20004.jpg','pourover-photo004'),
('3','./img/3beans30004.jpg','beans-photo004'),
('4','./img/4celebrity40004.jpg','celebrity-photo004'),



('1','./img/1coffee10005.jpg','coffee-photo005'),
('2','./img/2pourover20005.jpg','pourover-photo005'),
('3','./img/3beans30005.jpg','beans-photo005'),
('4','./img/4celebrity40005.jpg','celebrity-photo005'),
('5','./img/5share50005.jpg','share-photo005'),


('3','./img/3beans30006.jpg','beans-photo006');


-- 文章列表
select*from users;
SELECT blogs.id, url, title,CREATEd_at
FROM  blog_photos
JOIN  blogs
ON blogs.id = blog_photos.fk_blog_id ;
-- SELECT blogs.id, url, title,CREATEd_at
-- FROM  blog_photos
-- JOIN  blogs
-- ON blogs.id = blog_photos.fk_blog_id  DESC  LIMIT  %s, %s ;

