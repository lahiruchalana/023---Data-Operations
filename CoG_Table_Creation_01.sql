CREATE TABLE `User` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `auth_user_id` int unsigned NOT NULL,
  `user_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38355 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `User_Address` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `zipcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_1` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_line_3` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordination` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38330 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `Order` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `borrower_id` int unsigned NOT NULL,
  `order_status_id` int unsigned NOT NULL,
  `hourly_start_time` int DEFAULT NULL,
  `total_hours` int DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `delivery_charge` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `other_fee` decimal(8,2) DEFAULT '0.00',
  `other_fee_memo` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `next_day_morning_pickup_fee` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `delivery_type_status` int NOT NULL DEFAULT '2' COMMENT '1-all, 2-deliveryonly, 3-pickuponly',
  `payment_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lender_delivery_pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lender_delivery_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrower_delivery_pin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `borrower_delivery_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `braintree_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `escrow_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `referral_agent` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `support_agent` int DEFAULT NULL,
  `card_owner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `referee` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  `flag_note` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `review_request_sent` tinyint(1) NOT NULL DEFAULT '0',
  `reply_recieved` tinyint(1) NOT NULL DEFAULT '0',
  `review_channel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reservation_page_version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'v1',
  `channel_code_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `kiosk_source_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hasDamageWaiver` tinyint(1) NOT NULL DEFAULT '0',
  `damageWaiverFees` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ab_test_version` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `happy_customer` tinyint(1) NOT NULL,
  `unhappy_customer` tinyint(1) DEFAULT NULL,
  `follow_up_sent` tinyint(1) NOT NULL,
  `admin_order_medium` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `order_conversion_type_id` int DEFAULT NULL,
  `order_conversion_reference_id` int DEFAULT NULL,
  `driver_notes` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `black_listed_place_called` tinyint(1) NOT NULL DEFAULT '0',
  `black_listed_place` int NOT NULL DEFAULT '0',
  `is_auto_cancelled` int NOT NULL DEFAULT '0',
  `affiliate_id` int NOT NULL,
  `payment_intent_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_height` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_weight` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_height_inch` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipping_initiated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46062 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `Item` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `item_description` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `charging_status` int NOT NULL DEFAULT '1' COMMENT '1=Daily,2=Hourly,3=both',
  `rate` double NOT NULL DEFAULT '0',
  `hourly_rate` double NOT NULL DEFAULT '0',
  `deposit` double NOT NULL DEFAULT '0',
  `damage_waiver_fees` double NOT NULL DEFAULT '1',
  `max_damage_waiver_fees` double NOT NULL DEFAULT '1',
  `limit_damage_waiver` tinyint(1) NOT NULL DEFAULT '0',
  `has_price_variation` tinyint(1) NOT NULL DEFAULT '0',
  `is_globally_available` tinyint(1) NOT NULL DEFAULT '1',
  `has_availability_variation` tinyint(1) NOT NULL DEFAULT '0',
  `condition` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_age` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_purchase_price` double NOT NULL DEFAULT '0',
  `min_rent_duration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_description` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `image_root` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_prefix_dir` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `quantity` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `Category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `singular_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vendor_seo_dscription` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `city_seo_dscription` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `Delivery` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned DEFAULT NULL,
  `reservation_id` int unsigned DEFAULT NULL,
  `delivery_status_id` int unsigned DEFAULT NULL,
  `driver_id` int unsigned DEFAULT NULL,
  `delivery_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` datetime NOT NULL,
  `delivery_time` time NOT NULL DEFAULT '00:00:00',
  `item_acctepted_by` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `notes` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `driver_notes` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `reminder_sent` tinyint(1) NOT NULL DEFAULT '0',
  `manifest_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `instruction_from_borrower` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `inspection_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_archieved` tinyint(1) NOT NULL DEFAULT '0',
  `city_id` int unsigned DEFAULT NULL,
  `trip_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_trip_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_of_complete` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap_reason` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `mobile_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `followed_up` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=126083 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
  
  CREATE TABLE `Rating` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reservation_id` int unsigned NOT NULL,
  `rater_id` int unsigned NOT NULL,
  `rated_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `star_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_rated_as` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
  
CREATE TABLE `abandoned_orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `cart_id` int NOT NULL,
  `mobile_no` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT '',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `delivery_charge` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `has_next_day_morning_pickup` tinyint(1) NOT NULL DEFAULT '0',
  `next_day_morning_pickup_fee` decimal(10,2) NOT NULL,
  `has_damageWaiver` tinyint(1) NOT NULL DEFAULT '0',
  `damageWaiver_fee` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11927 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `User_Email` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `email_updates` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Auth_User` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `auth_user_id` int NOT NULL,
  `referral_vendor` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agreed_at` datetime DEFAULT NULL,
  `is_agreed` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci DEFAULT NULL,
  `enable_cc` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_customer_id` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38355 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

CREATE TABLE `Auth_Role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `auth_user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

  INSERT INTO cog_v5.Item (
  `user_id`,
  `title`,
  `item_description`,
  `charging_status`,
  `rate`,
  `hourly_rate`,
  `deposit`,
  `damage_waiver_fees`,
  `max_damage_waiver_fees`,
  `limit_damage_waiver`,
  `has_price_variation`,
  `delivery_description`,
  `state`,
  `featured`,
  `image_root`,
  `image_prefix_dir`,
  `created_at`,
  `updated_at`,
  `delivery_type_status`,
  `delivery_dl`,
  `delivery_note`
)
SELECT
  `user_id`,
  `title`,
  `item_description`,
  `charging_status`,
  `rate`,
  `hourly_rate`,
  `deposit`,
  `damage_waiver_fees`,
  `max_damage_waiver_fees`,
  `limit_damage_waiver`,
  `has_price_variation`,
  `delivery_description`,
  `state`,
  `featured`,
  `image_root`,
  `image_prefix_dir`,
  `created_at`,
  `updated_at`,
  `delivery_type_status`,
  0 AS `delivery_dl`,
  0 AS `delivery_note`
FROM qapay.items;

SELECT * FROM cog_v5.Item;
TRUNCATE TABLE cog_v5.Item;

INSERT INTO cog_v5.User (first_name, last_name, auth_user_id, user_status, address, created_at, updated_at)
SELECT first_name, last_name, 1234, "Active", address, created_at, updated_at
FROM qapay.users;

SELECT * FROM cog_v5.User;
TRUNCATE TABLE cog_v5.User;

INSERT INTO cog_v5.User_Email (email, email_status, user_id, email_updates, created_at, updated_at)
SELECT email, CONCAT('Status_', ROUND(RAND() * 100)), id, email_updates, created_at, updated_at
FROM qapay.users;

SELECT * FROM cog_v5.User;
TRUNCATE TABLE cog_v5.User;

INSERT INTO cog_v5.Auth_User (username, email, password, auth_user_id, referral_vendor, description, agreed_at, is_agreed, remember_token, enable_cc, stripe_customer_id, created_at, updated_at)
SELECT username, email, password, FLOOR(RAND() * 1000000) AS auth_user_id, referral_vendor, description, agreed_at, is_agreed, remember_token, enable_cc, stripe_customer_id, created_at, updated_at
FROM qapay.users;

SELECT * FROM cog_v5.Auth_User;
TRUNCATE TABLE cog_v5.Auth_User;

INSERT INTO cog_v5.User_Address (user_id, zipcode, address_line_1, address_line_2, address_line_3, coordination, address_status, city, latitude, longitude, type, created_at, updated_at)
SELECT user_id, zipcode, address_line_1, address_line_2, address_line_3, CONCAT(ROUND(RAND() * 100), ',', ROUND(RAND() * 100)), CONCAT('Status_', ROUND(RAND() * 100)), city, latitude, longitude, type, created_at, updated_at
FROM qapay.user_addresses;

SELECT * FROM cog_v5.User_Address;
TRUNCATE TABLE cog_v5.User_Address;

INSERT INTO `cog_v5`.`Auth_Role` (`name`, `category`, `auth_user_id`, `created_at`, `updated_at`)
SELECT `name`, `category`, 21235, `created_at`, `updated_at` 
FROM `qapay`.`roles`;

SELECT * FROM cog_v5.Auth_Role;
TRUNCATE TABLE cog_v5.Auth_Role;

INSERT INTO `cog_v5`.`Delivery` (`order_id`, `reservation_id`, `delivery_status_id`, `driver_id`, `delivery_type`, `delivery_date`, `delivery_time`, `item_acctepted_by`, `asset`, `notes`, `driver_notes`, `reminder_sent`, `manifest_id`, `created_at`, `updated_at`)
SELECT `order_id`, `reservation_id`, `delivery_status_id`, `driver_id`, `delivery_type`, `delivery_date`, `delivery_time`, `item_acctepted_by`, `asset`, `notes`, `driver_notes`, `reminder_sent`, `manifest_id`, `created_at`, `updated_at` 
FROM `qapay`.`deliveries`;

SELECT * FROM cog_v5.Delivery;
TRUNCATE TABLE cog_v5.Delivery;






