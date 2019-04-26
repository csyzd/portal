CREATE DATABASE IF NOT EXISTS yzd3008biz;

USE yzd3008biz;

CREATE TABLE IF NOT EXISTS t_product_category(
	product_category_id INT AUTO_INCREMENT PRIMARY KEY,
	product_category_name VARCHAR(100) NOT NULL,
	parent_category_id INT
);

CREATE TABLE IF NOT EXISTS t_product(
	product_id INT AUTO_INCREMENT PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	product_category_id INT NOT NULL,
	product_category_image_src VARCHAR(1000)
);

CREATE TABLE IF NOT EXISTS t_site_meta_info(
	site_id INT AUTO_INCREMENT PRIMARY KEY,
	site_title VARCHAR(500),
	site_url VARCHAR(500),
	site_logo_src VARCHAR(100),
	site_company_introduction_image_url VARCHAR(1000),
	site_company_introduction VARCHAR(1000),
	site_wechat_img_url VARCHAR(1000),
	site_keywords VARCHAR(500),
	site_description VARCHAR(1000),
	site_contact_telephone VARCHAR(50),
	site_copyright VARCHAR(200),
	site_address VARCHAR(200),
	site_fax VARCHAR(50),
	site_mail VARCHAR(50),
	site_contact_cell_phone VARCHAR(50),
	site_contact_name VARCHAR(50),
	site_technical_support VARCHAR(50),
	site_support_1_name VARCHAR(50),
	site_support_1_qq VARCHAR(50),
	site_support_2_name VARCHAR(50),
	site_support_2_qq VARCHAR(50),
	site_support_3_name VARCHAR(50),
	site_support_3_qq VARCHAR(50),
	site_support_4_name VARCHAR(50),
	site_support_4_qq VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS t_news_category(
	news_categry_id INT AUTO_INCREMENT PRIMARY KEY,
	news_category_name VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS t_news(
	news_id INT AUTO_INCREMENT PRIMARY KEY,
	news_categry_id INT NOT NULL,
	news_title VARCHAR(200) NOT NULL,
	news_content VARCHAR(5000),
	news_publish_date DATETIME NOT NULL,
	news_read_times INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS t_site_menu_item(
	menu_item_id INT AUTO_INCREMENT PRIMARY KEY,
	menu_item_name VARCHAR(100),
	parent_menu_item_id INT
);

CREATE TABLE IF NOT EXISTS t_feedback_category(
	feedback_category_id INT AUTO_INCREMENT PRIMARY KEY,
	feedback_category_name VARCHAR(100) NOT NULL	
);


CREATE TABLE IF NOT EXISTS t_feedback(
	feedback_id INT AUTO_INCREMENT PRIMARY KEY,
	feedback_class_id INT NOT NULL,
	feedback_title VARCHAR(100),
	feedback_by VARCHAR(50),
	feedback_contact_telephone VARCHAR(50),
	feedback_contact_mail VARCHAR(100),
	feedback_content VARCHAR(5000)
);

