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
) ENGINE=InnoDB AUTO_INCREMENT=38355 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci