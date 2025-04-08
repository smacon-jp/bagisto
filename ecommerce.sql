-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2025 at 06:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_type` varchar(191) NOT NULL,
  `parent_address_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'null if guest checkout',
  `cart_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for cart_addresses',
  `order_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for order_addresses',
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `postcode` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `vat_id` varchar(191) DEFAULT NULL,
  `default_address` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'only for customer_addresses',
  `use_for_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `address_type`, `parent_address_id`, `customer_id`, `cart_id`, `order_id`, `first_name`, `last_name`, `gender`, `company_name`, `address`, `city`, `state`, `country`, `postcode`, `email`, `phone`, `vat_id`, `default_address`, `use_for_shipping`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'customer', NULL, 1, NULL, NULL, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 04:56:14', '2025-02-14 04:56:14'),
(2, 'cart_billing', 1, 1, 1, NULL, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 1, NULL, '2025-02-14 04:56:16', '2025-02-14 04:56:16'),
(3, 'cart_shipping', 1, 1, 1, NULL, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 04:56:16', '2025-02-14 04:56:16'),
(4, 'order_shipping', NULL, NULL, NULL, 1, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 04:56:32', '2025-02-14 04:56:32'),
(5, 'order_billing', NULL, NULL, NULL, 1, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 04:56:32', '2025-02-14 04:56:32'),
(6, 'cart_billing', 1, 1, 2, NULL, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 1, NULL, '2025-02-14 04:56:55', '2025-02-14 04:56:55'),
(7, 'cart_shipping', 1, 1, 2, NULL, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 04:56:55', '2025-02-14 04:56:55'),
(8, 'order_shipping', NULL, NULL, NULL, 2, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 04:57:12', '2025-02-14 04:57:12'),
(9, 'order_billing', NULL, NULL, NULL, 2, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 04:57:12', '2025-02-14 04:57:12'),
(12, 'order_shipping', NULL, NULL, NULL, 3, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 05:01:58', '2025-02-14 05:01:58'),
(13, 'order_billing', NULL, NULL, NULL, 3, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 05:01:58', '2025-02-14 05:01:58'),
(16, 'order_shipping', NULL, NULL, NULL, 4, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 05:06:50', '2025-02-14 05:06:50'),
(17, 'order_billing', NULL, NULL, NULL, 4, 'kjnbd', 'jdbskjd', NULL, 'jbds', 'jd', 'bsjkdbf', '012', 'RS', '1200', 'jkdb@gmail.com', '312312312312', NULL, 0, 0, NULL, '2025-02-14 05:06:50', '2025-02-14 05:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `api_token`, `status`, `role_id`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '$2y$10$3oVZWFIuaTIn9gkue7vBtOwSvGSE1NhVy.pTLl7LOWMJMsfn5.Oze', 'iLkFu3yrQ1o1Jh1sujsjt9XZhXxI33pcjT7RxzWfeqztBQXUNDyjaFjdhLXUramy7qKXuGkGRaY8HId9', 1, 1, NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `admin_name` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `swatch_type` varchar(191) DEFAULT NULL,
  `validation` varchar(191) DEFAULT NULL,
  `regex` varchar(191) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_comparable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_locale` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_channel` tinyint(1) NOT NULL DEFAULT 0,
  `default_value` int(11) DEFAULT NULL,
  `enable_wysiwyg` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `admin_name`, `type`, `swatch_type`, `validation`, `regex`, `position`, `is_required`, `is_unique`, `is_filterable`, `is_comparable`, `is_configurable`, `is_user_defined`, `is_visible_on_front`, `value_per_locale`, `value_per_channel`, `default_value`, `enable_wysiwyg`, `created_at`, `updated_at`) VALUES
(1, 'sku', 'SKU', 'text', NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(2, 'name', 'Name', 'text', NULL, NULL, NULL, 3, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(3, 'url_key', 'URL Key', 'text', NULL, NULL, NULL, 4, 1, 1, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(4, 'tax_category_id', 'Tax Category', 'select', NULL, NULL, NULL, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(5, 'new', 'New', 'boolean', NULL, NULL, NULL, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(6, 'featured', 'Featured', 'boolean', NULL, NULL, NULL, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(7, 'visible_individually', 'Visible Individually', 'boolean', NULL, NULL, NULL, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(8, 'status', 'Status', 'boolean', NULL, NULL, NULL, 10, 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(9, 'short_description', 'Short Description', 'textarea', NULL, NULL, NULL, 11, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(10, 'description', 'Description', 'textarea', NULL, NULL, NULL, 12, 1, 0, 0, 1, 0, 0, 0, 1, 0, NULL, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(11, 'price', 'Price', 'price', NULL, 'decimal', NULL, 13, 1, 0, 1, 1, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(12, 'cost', 'Cost', 'price', NULL, 'decimal', NULL, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(13, 'special_price', 'Special Price', 'price', NULL, 'decimal', NULL, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(14, 'special_price_from', 'Special Price From', 'date', NULL, NULL, NULL, 16, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(15, 'special_price_to', 'Special Price To', 'date', NULL, NULL, NULL, 17, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(16, 'meta_title', 'Meta Title', 'textarea', NULL, NULL, NULL, 18, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(17, 'meta_keywords', 'Meta Keywords', 'textarea', NULL, NULL, NULL, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(18, 'meta_description', 'Meta Description', 'textarea', NULL, NULL, NULL, 21, 0, 0, 0, 0, 0, 1, 0, 1, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(19, 'length', 'Length', 'text', NULL, 'decimal', NULL, 22, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(20, 'width', 'Width', 'text', NULL, 'decimal', NULL, 23, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(21, 'height', 'Height', 'text', NULL, 'decimal', NULL, 24, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(22, 'weight', 'Weight', 'text', NULL, 'decimal', NULL, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(23, 'color', 'Color', 'select', NULL, NULL, NULL, 26, 0, 0, 1, 0, 1, 1, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(24, 'size', 'Size', 'select', NULL, NULL, NULL, 27, 0, 0, 1, 0, 1, 1, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(25, 'brand', 'Brand', 'select', NULL, NULL, NULL, 28, 0, 0, 1, 0, 0, 1, 1, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(26, 'guest_checkout', 'Guest Checkout', 'boolean', NULL, NULL, NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(27, 'product_number', 'Product Number', 'text', NULL, NULL, NULL, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(28, 'manage_stock', 'Manage Stock', 'boolean', NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(29, 'product_code', 'Product Code', 'textarea', NULL, 'decimal', NULL, 9, 1, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, '2025-02-26 09:57:39', '2025-02-26 09:57:39'),
(30, 'manufacturer_detail', 'Manufacturer Detail', 'textarea', NULL, NULL, NULL, 10, 1, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, '2025-02-26 09:57:39', '2025-02-26 09:57:39'),
(31, 'packer_detail', 'Packer Detail', 'textarea', NULL, NULL, NULL, 11, 1, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, '2025-02-26 09:57:39', '2025-02-26 09:57:39'),
(32, 'importer_detail', 'Importer Detail', 'textarea', NULL, NULL, NULL, 12, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, '2025-02-26 09:57:39', '2025-02-26 09:57:39'),
(33, 'country_of_origin', 'Country Of Origin', 'select', NULL, NULL, NULL, 13, 1, 0, 0, 0, 1, 0, 1, 0, 0, NULL, 0, '2025-02-26 09:57:39', '2025-02-26 09:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_families`
--

CREATE TABLE `attribute_families` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_families`
--

INSERT INTO `attribute_families` (`id`, `code`, `name`, `status`, `is_user_defined`) VALUES
(1, 'default', 'Default', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_groups`
--

CREATE TABLE `attribute_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `column` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_groups`
--

INSERT INTO `attribute_groups` (`id`, `code`, `attribute_family_id`, `name`, `column`, `position`, `is_user_defined`) VALUES
(1, 'general', 1, 'General', 1, 1, 0),
(2, 'description', 1, 'Description', 1, 2, 0),
(3, 'meta_description', 1, 'Meta Description', 1, 3, 0),
(4, 'price', 1, 'Price', 2, 1, 0),
(5, 'shipping', 1, 'Shipping', 2, 2, 0),
(6, 'settings', 1, 'Settings', 2, 3, 0),
(7, 'inventories', 1, 'Inventories', 2, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_group_mappings`
--

CREATE TABLE `attribute_group_mappings` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_group_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_group_mappings`
--

INSERT INTO `attribute_group_mappings` (`attribute_id`, `attribute_group_id`, `position`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 5),
(5, 6, 1),
(6, 6, 2),
(7, 6, 3),
(8, 6, 4),
(9, 2, 1),
(10, 2, 2),
(11, 4, 1),
(12, 4, 2),
(13, 4, 3),
(14, 4, 4),
(15, 4, 5),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(19, 5, 1),
(20, 5, 2),
(21, 5, 3),
(22, 5, 4),
(23, 1, 6),
(24, 1, 7),
(25, 1, 8),
(26, 6, 5),
(27, 1, 2),
(28, 7, 1),
(29, 1, 9),
(30, 1, 10),
(31, 1, 11),
(32, 1, 12),
(33, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(191) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `swatch_value` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `admin_name`, `sort_order`, `swatch_value`) VALUES
(1, 33, 'Afghanistan', 1, NULL),
(2, 33, 'Åland Islands', 2, NULL),
(3, 33, 'Albania', 3, NULL),
(4, 33, 'Algeria', 4, NULL),
(5, 33, 'American Samoa', 5, NULL),
(6, 33, 'Andorra', 6, NULL),
(7, 33, 'Angola', 7, NULL),
(8, 33, 'Anguilla', 8, NULL),
(9, 33, 'Antarctica', 9, NULL),
(10, 33, 'Antigua & Barbuda', 10, NULL),
(11, 33, 'Argentina', 11, NULL),
(12, 33, 'Armenia', 12, NULL),
(13, 33, 'Aruba', 13, NULL),
(14, 33, 'Ascension Island', 14, NULL),
(15, 33, 'Australia', 15, NULL),
(16, 33, 'Austria', 16, NULL),
(17, 33, 'Azerbaijan', 17, NULL),
(18, 33, 'Bahamas', 18, NULL),
(19, 33, 'Bahrain', 19, NULL),
(20, 33, 'Bangladesh', 20, NULL),
(21, 33, 'Barbados', 21, NULL),
(22, 33, 'Belarus', 22, NULL),
(23, 33, 'Belgium', 23, NULL),
(24, 33, 'Belize', 24, NULL),
(25, 33, 'Benin', 25, NULL),
(26, 33, 'Bermuda', 26, NULL),
(27, 33, 'Bhutan', 27, NULL),
(28, 33, 'Bolivia', 28, NULL),
(29, 33, 'Bosnia & Herzegovina', 29, NULL),
(30, 33, 'Botswana', 30, NULL),
(31, 33, 'Brazil', 31, NULL),
(32, 33, 'British Indian Ocean Territory', 32, NULL),
(33, 33, 'British Virgin Islands', 33, NULL),
(34, 33, 'Brunei', 34, NULL),
(35, 33, 'Bulgaria', 35, NULL),
(36, 33, 'Burkina Faso', 36, NULL),
(37, 33, 'Burundi', 37, NULL),
(38, 33, 'Cambodia', 38, NULL),
(39, 33, 'Cameroon', 39, NULL),
(40, 33, 'Canada', 40, NULL),
(41, 33, 'Canary Islands', 41, NULL),
(42, 33, 'Cape Verde', 42, NULL),
(43, 33, 'Caribbean Netherlands', 43, NULL),
(44, 33, 'Cayman Islands', 44, NULL),
(45, 33, 'Central African Republic', 45, NULL),
(46, 33, 'Ceuta & Melilla', 46, NULL),
(47, 33, 'Chad', 47, NULL),
(48, 33, 'Chile', 48, NULL),
(49, 33, 'China', 49, NULL),
(50, 33, 'Christmas Island', 50, NULL),
(51, 33, 'Cocos (Keeling) Islands', 51, NULL),
(52, 33, 'Colombia', 52, NULL),
(53, 33, 'Comoros', 53, NULL),
(54, 33, 'Congo - Brazzaville', 54, NULL),
(55, 33, 'Congo - Kinshasa', 55, NULL),
(56, 33, 'Cook Islands', 56, NULL),
(57, 33, 'Costa Rica', 57, NULL),
(58, 33, 'Côte d’Ivoire', 58, NULL),
(59, 33, 'Croatia', 59, NULL),
(60, 33, 'Cuba', 60, NULL),
(61, 33, 'Curaçao', 61, NULL),
(62, 33, 'Cyprus', 62, NULL),
(63, 33, 'Czechia', 63, NULL),
(64, 33, 'Denmark', 64, NULL),
(65, 33, 'Diego Garcia', 65, NULL),
(66, 33, 'Djibouti', 66, NULL),
(67, 33, 'Dominica', 67, NULL),
(68, 33, 'Dominican Republic', 68, NULL),
(69, 33, 'Ecuador', 69, NULL),
(70, 33, 'Egypt', 70, NULL),
(71, 33, 'El Salvador', 71, NULL),
(72, 33, 'Equatorial Guinea', 72, NULL),
(73, 33, 'Eritrea', 73, NULL),
(74, 33, 'Estonia', 74, NULL),
(75, 33, 'Ethiopia', 75, NULL),
(76, 33, 'Eurozone', 76, NULL),
(77, 33, 'Falkland Islands', 77, NULL),
(78, 33, 'Faroe Islands', 78, NULL),
(79, 33, 'Fiji', 79, NULL),
(80, 33, 'Finland', 80, NULL),
(81, 33, 'France', 81, NULL),
(82, 33, 'French Guiana', 82, NULL),
(83, 33, 'French Polynesia', 83, NULL),
(84, 33, 'French Southern Territories', 84, NULL),
(85, 33, 'Gabon', 85, NULL),
(86, 33, 'Gambia', 86, NULL),
(87, 33, 'Georgia', 87, NULL),
(88, 33, 'Germany', 88, NULL),
(89, 33, 'Ghana', 89, NULL),
(90, 33, 'Gibraltar', 90, NULL),
(91, 33, 'Greece', 91, NULL),
(92, 33, 'Greenland', 92, NULL),
(93, 33, 'Grenada', 93, NULL),
(94, 33, 'Guadeloupe', 94, NULL),
(95, 33, 'Guam', 95, NULL),
(96, 33, 'Guatemala', 96, NULL),
(97, 33, 'Guernsey', 97, NULL),
(98, 33, 'Guinea', 98, NULL),
(99, 33, 'Guinea-Bissau', 99, NULL),
(100, 33, 'Guyana', 100, NULL),
(101, 33, 'Haiti', 101, NULL),
(102, 33, 'Honduras', 102, NULL),
(103, 33, 'Hong Kong SAR China', 103, NULL),
(104, 33, 'Hungary', 104, NULL),
(105, 33, 'Iceland', 105, NULL),
(106, 33, 'India', 106, NULL),
(107, 33, 'Indonesia', 107, NULL),
(108, 33, 'Iran', 108, NULL),
(109, 33, 'Iraq', 109, NULL),
(110, 33, 'Ireland', 110, NULL),
(111, 33, 'Isle of Man', 111, NULL),
(112, 33, 'Israel', 112, NULL),
(113, 33, 'Italy', 113, NULL),
(114, 33, 'Jamaica', 114, NULL),
(115, 33, 'Japan', 115, NULL),
(116, 33, 'Jersey', 116, NULL),
(117, 33, 'Jordan', 117, NULL),
(118, 33, 'Kazakhstan', 118, NULL),
(119, 33, 'Kenya', 119, NULL),
(120, 33, 'Kiribati', 120, NULL),
(121, 33, 'Kosovo', 121, NULL),
(122, 33, 'Kuwait', 122, NULL),
(123, 33, 'Kyrgyzstan', 123, NULL),
(124, 33, 'Laos', 124, NULL),
(125, 33, 'Latvia', 125, NULL),
(126, 33, 'Lebanon', 126, NULL),
(127, 33, 'Lesotho', 127, NULL),
(128, 33, 'Liberia', 128, NULL),
(129, 33, 'Libya', 129, NULL),
(130, 33, 'Liechtenstein', 130, NULL),
(131, 33, 'Lithuania', 131, NULL),
(132, 33, 'Luxembourg', 132, NULL),
(133, 33, 'Macau SAR China', 133, NULL),
(134, 33, 'Macedonia', 134, NULL),
(135, 33, 'Madagascar', 135, NULL),
(136, 33, 'Malawi', 136, NULL),
(137, 33, 'Malaysia', 137, NULL),
(138, 33, 'Maldives', 138, NULL),
(139, 33, 'Mali', 139, NULL),
(140, 33, 'Malta', 140, NULL),
(141, 33, 'Marshall Islands', 141, NULL),
(142, 33, 'Martinique', 142, NULL),
(143, 33, 'Mauritania', 143, NULL),
(144, 33, 'Mauritius', 144, NULL),
(145, 33, 'Mayotte', 145, NULL),
(146, 33, 'Mexico', 146, NULL),
(147, 33, 'Micronesia', 147, NULL),
(148, 33, 'Moldova', 148, NULL),
(149, 33, 'Monaco', 149, NULL),
(150, 33, 'Mongolia', 150, NULL),
(151, 33, 'Montenegro', 151, NULL),
(152, 33, 'Montserrat', 152, NULL),
(153, 33, 'Morocco', 153, NULL),
(154, 33, 'Mozambique', 154, NULL),
(155, 33, 'Myanmar (Burma)', 155, NULL),
(156, 33, 'Namibia', 156, NULL),
(157, 33, 'Nauru', 157, NULL),
(158, 33, 'Nepal', 158, NULL),
(159, 33, 'Netherlands', 159, NULL),
(160, 33, 'New Caledonia', 160, NULL),
(161, 33, 'New Zealand', 161, NULL),
(162, 33, 'Nicaragua', 162, NULL),
(163, 33, 'Niger', 163, NULL),
(164, 33, 'Nigeria', 164, NULL),
(165, 33, 'Niue', 165, NULL),
(166, 33, 'Norfolk Island', 166, NULL),
(167, 33, 'North Korea', 167, NULL),
(168, 33, 'Northern Mariana Islands', 168, NULL),
(169, 33, 'Norway', 169, NULL),
(170, 33, 'Oman', 170, NULL),
(171, 33, 'Pakistan', 171, NULL),
(172, 33, 'Palau', 172, NULL),
(173, 33, 'Palestinian Territories', 173, NULL),
(174, 33, 'Panama', 174, NULL),
(175, 33, 'Papua New Guinea', 175, NULL),
(176, 33, 'Paraguay', 176, NULL),
(177, 33, 'Peru', 177, NULL),
(178, 33, 'Philippines', 178, NULL),
(179, 33, 'Pitcairn Islands', 179, NULL),
(180, 33, 'Poland', 180, NULL),
(181, 33, 'Portugal', 181, NULL),
(182, 33, 'Puerto Rico', 182, NULL),
(183, 33, 'Qatar', 183, NULL),
(184, 33, 'Réunion', 184, NULL),
(185, 33, 'Romania', 185, NULL),
(186, 33, 'Russia', 186, NULL),
(187, 33, 'Rwanda', 187, NULL),
(188, 33, 'Samoa', 188, NULL),
(189, 33, 'San Marino', 189, NULL),
(190, 33, 'São Tomé & Príncipe', 190, NULL),
(191, 33, 'Saudi Arabia', 191, NULL),
(192, 33, 'Senegal', 192, NULL),
(193, 33, 'Serbia', 193, NULL),
(194, 33, 'Seychelles', 194, NULL),
(195, 33, 'Sierra Leone', 195, NULL),
(196, 33, 'Singapore', 196, NULL),
(197, 33, 'Sint Maarten', 197, NULL),
(198, 33, 'Slovakia', 198, NULL),
(199, 33, 'Slovenia', 199, NULL),
(200, 33, 'Solomon Islands', 200, NULL),
(201, 33, 'Somalia', 201, NULL),
(202, 33, 'South Africa', 202, NULL),
(203, 33, 'South Georgia & South Sandwich Islands', 203, NULL),
(204, 33, 'South Korea', 204, NULL),
(205, 33, 'South Sudan', 205, NULL),
(206, 33, 'Spain', 206, NULL),
(207, 33, 'Sri Lanka', 207, NULL),
(208, 33, 'St. Barthélemy', 208, NULL),
(209, 33, 'St. Helena', 209, NULL),
(210, 33, 'St. Kitts & Nevis', 210, NULL),
(211, 33, 'St. Lucia', 211, NULL),
(212, 33, 'St. Martin', 212, NULL),
(213, 33, 'St. Pierre & Miquelon', 213, NULL),
(214, 33, 'St. Vincent & Grenadines', 214, NULL),
(215, 33, 'Sudan', 215, NULL),
(216, 33, 'Suriname', 216, NULL),
(217, 33, 'Svalbard & Jan Mayen', 217, NULL),
(218, 33, 'Swaziland', 218, NULL),
(219, 33, 'Sweden', 219, NULL),
(220, 33, 'Switzerland', 220, NULL),
(221, 33, 'Syria', 221, NULL),
(222, 33, 'Taiwan', 222, NULL),
(223, 33, 'Tajikistan', 223, NULL),
(224, 33, 'Tanzania', 224, NULL),
(225, 33, 'Thailand', 225, NULL),
(226, 33, 'Timor-Leste', 226, NULL),
(227, 33, 'Togo', 227, NULL),
(228, 33, 'Tokelau', 228, NULL),
(229, 33, 'Tonga', 229, NULL),
(230, 33, 'Trinidad & Tobago', 230, NULL),
(231, 33, 'Tristan da Cunha', 231, NULL),
(232, 33, 'Tunisia', 232, NULL),
(233, 33, 'Turkey', 233, NULL),
(234, 33, 'Turkmenistan', 234, NULL),
(235, 33, 'Turks & Caicos Islands', 235, NULL),
(236, 33, 'Tuvalu', 236, NULL),
(237, 33, 'U.S. Outlying Islands', 237, NULL),
(238, 33, 'U.S. Virgin Islands', 238, NULL),
(239, 33, 'Uganda', 239, NULL),
(240, 33, 'Ukraine', 240, NULL),
(241, 33, 'United Arab Emirates', 241, NULL),
(242, 33, 'United Kingdom', 242, NULL),
(243, 33, 'United Nations', 243, NULL),
(244, 33, 'United States', 244, NULL),
(245, 33, 'Uruguay', 245, NULL),
(246, 33, 'Uzbekistan', 246, NULL),
(247, 33, 'Vanuatu', 247, NULL),
(248, 33, 'Vatican City', 248, NULL),
(249, 33, 'Venezuela', 249, NULL),
(250, 33, 'Vietnam', 250, NULL),
(251, 33, 'Wallis & Futuna', 251, NULL),
(252, 33, 'Western Sahara', 252, NULL),
(253, 33, 'Yemen', 253, NULL),
(254, 33, 'Zambia', 254, NULL),
(255, 33, 'Zimbabwe', 255, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_option_translations`
--

CREATE TABLE `attribute_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_option_translations`
--

INSERT INTO `attribute_option_translations` (`id`, `attribute_option_id`, `locale`, `label`) VALUES
(10, 1, 'en', 'Afghanistan'),
(11, 2, 'en', 'Åland Islands'),
(12, 3, 'en', 'Albania'),
(13, 4, 'en', 'Algeria'),
(14, 5, 'en', 'American Samoa'),
(15, 6, 'en', 'Andorra'),
(16, 7, 'en', 'Angola'),
(17, 8, 'en', 'Anguilla'),
(18, 9, 'en', 'Antarctica'),
(19, 10, 'en', 'Antigua & Barbuda'),
(20, 11, 'en', 'Argentina'),
(21, 12, 'en', 'Armenia'),
(22, 13, 'en', 'Aruba'),
(23, 14, 'en', 'Ascension Island'),
(24, 15, 'en', 'Australia'),
(25, 16, 'en', 'Austria'),
(26, 17, 'en', 'Azerbaijan'),
(27, 18, 'en', 'Bahamas'),
(28, 19, 'en', 'Bahrain'),
(29, 20, 'en', 'Bangladesh'),
(30, 21, 'en', 'Barbados'),
(31, 22, 'en', 'Belarus'),
(32, 23, 'en', 'Belgium'),
(33, 24, 'en', 'Belize'),
(34, 25, 'en', 'Benin'),
(35, 26, 'en', 'Bermuda'),
(36, 27, 'en', 'Bhutan'),
(37, 28, 'en', 'Bolivia'),
(38, 29, 'en', 'Bosnia & Herzegovina'),
(39, 30, 'en', 'Botswana'),
(40, 31, 'en', 'Brazil'),
(41, 32, 'en', 'British Indian Ocean Territory'),
(42, 33, 'en', 'British Virgin Islands'),
(43, 34, 'en', 'Brunei'),
(44, 35, 'en', 'Bulgaria'),
(45, 36, 'en', 'Burkina Faso'),
(46, 37, 'en', 'Burundi'),
(47, 38, 'en', 'Cambodia'),
(48, 39, 'en', 'Cameroon'),
(49, 40, 'en', 'Canada'),
(50, 41, 'en', 'Canary Islands'),
(51, 42, 'en', 'Cape Verde'),
(52, 43, 'en', 'Caribbean Netherlands'),
(53, 44, 'en', 'Cayman Islands'),
(54, 45, 'en', 'Central African Republic'),
(55, 46, 'en', 'Ceuta & Melilla'),
(56, 47, 'en', 'Chad'),
(57, 48, 'en', 'Chile'),
(58, 49, 'en', 'China'),
(59, 50, 'en', 'Christmas Island'),
(60, 51, 'en', 'Cocos (Keeling) Islands'),
(61, 52, 'en', 'Colombia'),
(62, 53, 'en', 'Comoros'),
(63, 54, 'en', 'Congo - Brazzaville'),
(64, 55, 'en', 'Congo - Kinshasa'),
(65, 56, 'en', 'Cook Islands'),
(66, 57, 'en', 'Costa Rica'),
(67, 58, 'en', 'Côte d’Ivoire'),
(68, 59, 'en', 'Croatia'),
(69, 60, 'en', 'Cuba'),
(70, 61, 'en', 'Curaçao'),
(71, 62, 'en', 'Cyprus'),
(72, 63, 'en', 'Czechia'),
(73, 64, 'en', 'Denmark'),
(74, 65, 'en', 'Diego Garcia'),
(75, 66, 'en', 'Djibouti'),
(76, 67, 'en', 'Dominica'),
(77, 68, 'en', 'Dominican Republic'),
(78, 69, 'en', 'Ecuador'),
(79, 70, 'en', 'Egypt'),
(80, 71, 'en', 'El Salvador'),
(81, 72, 'en', 'Equatorial Guinea'),
(82, 73, 'en', 'Eritrea'),
(83, 74, 'en', 'Estonia'),
(84, 75, 'en', 'Ethiopia'),
(85, 76, 'en', 'Eurozone'),
(86, 77, 'en', 'Falkland Islands'),
(87, 78, 'en', 'Faroe Islands'),
(88, 79, 'en', 'Fiji'),
(89, 80, 'en', 'Finland'),
(90, 81, 'en', 'France'),
(91, 82, 'en', 'French Guiana'),
(92, 83, 'en', 'French Polynesia'),
(93, 84, 'en', 'French Southern Territories'),
(94, 85, 'en', 'Gabon'),
(95, 86, 'en', 'Gambia'),
(96, 87, 'en', 'Georgia'),
(97, 88, 'en', 'Germany'),
(98, 89, 'en', 'Ghana'),
(99, 90, 'en', 'Gibraltar'),
(100, 91, 'en', 'Greece'),
(101, 92, 'en', 'Greenland'),
(102, 93, 'en', 'Grenada'),
(103, 94, 'en', 'Guadeloupe'),
(104, 95, 'en', 'Guam'),
(105, 96, 'en', 'Guatemala'),
(106, 97, 'en', 'Guernsey'),
(107, 98, 'en', 'Guinea'),
(108, 99, 'en', 'Guinea-Bissau'),
(109, 100, 'en', 'Guyana'),
(110, 101, 'en', 'Haiti'),
(111, 102, 'en', 'Honduras'),
(112, 103, 'en', 'Hong Kong SAR China'),
(113, 104, 'en', 'Hungary'),
(114, 105, 'en', 'Iceland'),
(115, 106, 'en', 'India'),
(116, 107, 'en', 'Indonesia'),
(117, 108, 'en', 'Iran'),
(118, 109, 'en', 'Iraq'),
(119, 110, 'en', 'Ireland'),
(120, 111, 'en', 'Isle of Man'),
(121, 112, 'en', 'Israel'),
(122, 113, 'en', 'Italy'),
(123, 114, 'en', 'Jamaica'),
(124, 115, 'en', 'Japan'),
(125, 116, 'en', 'Jersey'),
(126, 117, 'en', 'Jordan'),
(127, 118, 'en', 'Kazakhstan'),
(128, 119, 'en', 'Kenya'),
(129, 120, 'en', 'Kiribati'),
(130, 121, 'en', 'Kosovo'),
(131, 122, 'en', 'Kuwait'),
(132, 123, 'en', 'Kyrgyzstan'),
(133, 124, 'en', 'Laos'),
(134, 125, 'en', 'Latvia'),
(135, 126, 'en', 'Lebanon'),
(136, 127, 'en', 'Lesotho'),
(137, 128, 'en', 'Liberia'),
(138, 129, 'en', 'Libya'),
(139, 130, 'en', 'Liechtenstein'),
(140, 131, 'en', 'Lithuania'),
(141, 132, 'en', 'Luxembourg'),
(142, 133, 'en', 'Macau SAR China'),
(143, 134, 'en', 'Macedonia'),
(144, 135, 'en', 'Madagascar'),
(145, 136, 'en', 'Malawi'),
(146, 137, 'en', 'Malaysia'),
(147, 138, 'en', 'Maldives'),
(148, 139, 'en', 'Mali'),
(149, 140, 'en', 'Malta'),
(150, 141, 'en', 'Marshall Islands'),
(151, 142, 'en', 'Martinique'),
(152, 143, 'en', 'Mauritania'),
(153, 144, 'en', 'Mauritius'),
(154, 145, 'en', 'Mayotte'),
(155, 146, 'en', 'Mexico'),
(156, 147, 'en', 'Micronesia'),
(157, 148, 'en', 'Moldova'),
(158, 149, 'en', 'Monaco'),
(159, 150, 'en', 'Mongolia'),
(160, 151, 'en', 'Montenegro'),
(161, 152, 'en', 'Montserrat'),
(162, 153, 'en', 'Morocco'),
(163, 154, 'en', 'Mozambique'),
(164, 155, 'en', 'Myanmar (Burma)'),
(165, 156, 'en', 'Namibia'),
(166, 157, 'en', 'Nauru'),
(167, 158, 'en', 'Nepal'),
(168, 159, 'en', 'Netherlands'),
(169, 160, 'en', 'New Caledonia'),
(170, 161, 'en', 'New Zealand'),
(171, 162, 'en', 'Nicaragua'),
(172, 163, 'en', 'Niger'),
(173, 164, 'en', 'Nigeria'),
(174, 165, 'en', 'Niue'),
(175, 166, 'en', 'Norfolk Island'),
(176, 167, 'en', 'North Korea'),
(177, 168, 'en', 'Northern Mariana Islands'),
(178, 169, 'en', 'Norway'),
(179, 170, 'en', 'Oman'),
(180, 171, 'en', 'Pakistan'),
(181, 172, 'en', 'Palau'),
(182, 173, 'en', 'Palestinian Territories'),
(183, 174, 'en', 'Panama'),
(184, 175, 'en', 'Papua New Guinea'),
(185, 176, 'en', 'Paraguay'),
(186, 177, 'en', 'Peru'),
(187, 178, 'en', 'Philippines'),
(188, 179, 'en', 'Pitcairn Islands'),
(189, 180, 'en', 'Poland'),
(190, 181, 'en', 'Portugal'),
(191, 182, 'en', 'Puerto Rico'),
(192, 183, 'en', 'Qatar'),
(193, 184, 'en', 'Réunion'),
(194, 185, 'en', 'Romania'),
(195, 186, 'en', 'Russia'),
(196, 187, 'en', 'Rwanda'),
(197, 188, 'en', 'Samoa'),
(198, 189, 'en', 'San Marino'),
(199, 190, 'en', 'São Tomé & Príncipe'),
(200, 191, 'en', 'Saudi Arabia'),
(201, 192, 'en', 'Senegal'),
(202, 193, 'en', 'Serbia'),
(203, 194, 'en', 'Seychelles'),
(204, 195, 'en', 'Sierra Leone'),
(205, 196, 'en', 'Singapore'),
(206, 197, 'en', 'Sint Maarten'),
(207, 198, 'en', 'Slovakia'),
(208, 199, 'en', 'Slovenia'),
(209, 200, 'en', 'Solomon Islands'),
(210, 201, 'en', 'Somalia'),
(211, 202, 'en', 'South Africa'),
(212, 203, 'en', 'South Georgia & South Sandwich Islands'),
(213, 204, 'en', 'South Korea'),
(214, 205, 'en', 'South Sudan'),
(215, 206, 'en', 'Spain'),
(216, 207, 'en', 'Sri Lanka'),
(217, 208, 'en', 'St. Barthélemy'),
(218, 209, 'en', 'St. Helena'),
(219, 210, 'en', 'St. Kitts & Nevis'),
(220, 211, 'en', 'St. Lucia'),
(221, 212, 'en', 'St. Martin'),
(222, 213, 'en', 'St. Pierre & Miquelon'),
(223, 214, 'en', 'St. Vincent & Grenadines'),
(224, 215, 'en', 'Sudan'),
(225, 216, 'en', 'Suriname'),
(226, 217, 'en', 'Svalbard & Jan Mayen'),
(227, 218, 'en', 'Swaziland'),
(228, 219, 'en', 'Sweden'),
(229, 220, 'en', 'Switzerland'),
(230, 221, 'en', 'Syria'),
(231, 222, 'en', 'Taiwan'),
(232, 223, 'en', 'Tajikistan'),
(233, 224, 'en', 'Tanzania'),
(234, 225, 'en', 'Thailand'),
(235, 226, 'en', 'Timor-Leste'),
(236, 227, 'en', 'Togo'),
(237, 228, 'en', 'Tokelau'),
(238, 229, 'en', 'Tonga'),
(239, 230, 'en', 'Trinidad & Tobago'),
(240, 231, 'en', 'Tristan da Cunha'),
(241, 232, 'en', 'Tunisia'),
(242, 233, 'en', 'Turkey'),
(243, 234, 'en', 'Turkmenistan'),
(244, 235, 'en', 'Turks & Caicos Islands'),
(245, 236, 'en', 'Tuvalu'),
(246, 237, 'en', 'U.S. Outlying Islands'),
(247, 238, 'en', 'U.S. Virgin Islands'),
(248, 239, 'en', 'Uganda'),
(249, 240, 'en', 'Ukraine'),
(250, 241, 'en', 'United Arab Emirates'),
(251, 242, 'en', 'United Kingdom'),
(252, 243, 'en', 'United Nations'),
(253, 244, 'en', 'United States'),
(254, 245, 'en', 'Uruguay'),
(255, 246, 'en', 'Uzbekistan'),
(256, 247, 'en', 'Vanuatu'),
(257, 248, 'en', 'Vatican City'),
(258, 249, 'en', 'Venezuela'),
(259, 250, 'en', 'Vietnam'),
(260, 251, 'en', 'Wallis & Futuna'),
(261, 252, 'en', 'Western Sahara'),
(262, 253, 'en', 'Yemen'),
(263, 254, 'en', 'Zambia'),
(264, 255, 'en', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `locale`, `name`) VALUES
(1, 1, 'en', 'SKU'),
(2, 2, 'en', 'Name'),
(3, 3, 'en', 'URL Key'),
(4, 4, 'en', 'Tax Category'),
(5, 5, 'en', 'New'),
(6, 6, 'en', 'Featured'),
(7, 7, 'en', 'Visible Individually'),
(8, 8, 'en', 'Status'),
(9, 9, 'en', 'Short Description'),
(10, 10, 'en', 'Description'),
(11, 11, 'en', 'Price'),
(12, 12, 'en', 'Cost'),
(13, 13, 'en', 'Special Price'),
(14, 14, 'en', 'Special Price From'),
(15, 15, 'en', 'Special Price To'),
(16, 16, 'en', 'Meta Title'),
(17, 17, 'en', 'Meta Keywords'),
(18, 18, 'en', 'Meta Description'),
(19, 19, 'en', 'Length'),
(20, 20, 'en', 'Width'),
(21, 21, 'en', 'Height'),
(22, 22, 'en', 'Weight'),
(23, 23, 'en', 'Color'),
(24, 24, 'en', 'Size'),
(25, 25, 'en', 'Brand'),
(26, 26, 'en', 'Guest Checkout'),
(27, 27, 'en', 'Product Number'),
(28, 28, 'en', 'Manage Stock'),
(29, 29, 'en', 'Product Code'),
(30, 30, 'en', 'Manufacturer Detail'),
(31, 31, 'en', 'Packer Detail'),
(32, 32, 'en', 'Importer Detail'),
(33, 33, 'en', 'Country Of Origin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_first_name` varchar(191) DEFAULT NULL,
  `customer_last_name` varchar(191) DEFAULT NULL,
  `shipping_method` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `items_count` int(11) DEFAULT NULL,
  `items_qty` decimal(12,4) DEFAULT NULL,
  `exchange_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(191) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `cart_currency_code` varchar(191) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `tax_total` decimal(12,4) DEFAULT 0.0000,
  `base_tax_total` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `checkout_method` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `giftcard_number` varchar(191) DEFAULT NULL,
  `giftcard_amount` decimal(10,0) DEFAULT NULL,
  `remaining_giftcard_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `coupon_code`, `is_gift`, `items_count`, `items_qty`, `exchange_rate`, `global_currency_code`, `base_currency_code`, `channel_currency_code`, `cart_currency_code`, `grand_total`, `base_grand_total`, `sub_total`, `base_sub_total`, `tax_total`, `base_tax_total`, `discount_amount`, `base_discount_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `checkout_method`, `is_guest`, `is_active`, `applied_cart_rule_ids`, `giftcard_number`, `giftcard_amount`, `remaining_giftcard_amount`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'abhishekthapa115@gmail.com', 'Abhishek', 'Thapa', 'free_free', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'USD', 'USD', 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, NULL, 0, 0, NULL, NULL, NULL, 0.00, 1, 1, '2025-02-14 04:30:39', '2025-02-14 04:56:36'),
(2, 'abhishekthapa115@gmail.com', 'Abhishek', 'Thapa', 'free_free', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'USD', 'USD', 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, NULL, 0, 0, NULL, NULL, NULL, 0.00, 1, 1, '2025-02-14 04:56:44', '2025-02-14 04:57:16'),
(5, 'abhishekthapa115@gmail.com', 'Abhishek', 'Thapa', NULL, NULL, 0, NULL, NULL, NULL, 'USD', 'USD', 'USD', 'USD', 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 0, NULL, NULL, NULL, 0.00, 1, 1, '2025-03-04 16:31:38', '2025-03-04 16:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sku` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price` decimal(12,4) NOT NULL DEFAULT 1.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `custom_price` decimal(12,4) DEFAULT NULL,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `applied_tax_rate` varchar(191) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `base_total_weight`, `price`, `base_price`, `custom_price`, `total`, `base_total`, `tax_percent`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `applied_tax_rate`, `parent_id`, `product_id`, `cart_id`, `tax_category_id`, `applied_cart_rule_ids`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'SP-001', 'simple', 'Arctic Cozy Knit Unisex Beanie', NULL, 1.2300, 1.2300, 1.2300, 14.0000, 14.0000, NULL, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 14.0000, 14.0000, NULL, NULL, 1, 1, NULL, NULL, '{\"quantity\":1,\"product_id\":1}', '2025-02-14 04:30:39', '2025-02-14 04:30:39'),
(2, 1, 'SP-001', 'simple', 'Arctic Cozy Knit Unisex Beanie', NULL, 1.2300, 1.2300, 1.2300, 14.0000, 14.0000, NULL, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 14.0000, 14.0000, NULL, NULL, 1, 2, NULL, NULL, '{\"quantity\":1,\"product_id\":1}', '2025-02-14 04:56:44', '2025-02-14 04:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item_inventories`
--

CREATE TABLE `cart_item_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_payment`
--

CREATE TABLE `cart_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_payment`
--

INSERT INTO `cart_payment` (`id`, `method`, `method_title`, `cart_id`, `created_at`, `updated_at`) VALUES
(2, 'cashondelivery', 'Cash On Delivery', 1, '2025-02-14 04:56:30', '2025-02-14 04:56:30'),
(5, 'moneytransfer', 'Money Transfer', 2, '2025-02-14 04:57:10', '2025-02-14 04:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `cart_rules`
--

CREATE TABLE `cart_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_type` int(11) NOT NULL DEFAULT 1,
  `use_auto_generation` tinyint(1) NOT NULL DEFAULT 0,
  `usage_per_customer` int(11) NOT NULL DEFAULT 0,
  `uses_per_coupon` int(11) NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `uses_attribute_conditions` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_quantity` int(11) NOT NULL DEFAULT 1,
  `discount_step` varchar(191) NOT NULL DEFAULT '1',
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_channels`
--

CREATE TABLE `cart_rule_channels` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupons`
--

CREATE TABLE `cart_rule_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL,
  `usage_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usage_per_customer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `expired_at` date DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_coupon_usage`
--

CREATE TABLE `cart_rule_coupon_usage` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` int(11) NOT NULL DEFAULT 0,
  `cart_rule_coupon_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customers`
--

CREATE TABLE `cart_rule_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_customer_groups`
--

CREATE TABLE `cart_rule_customer_groups` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_rule_translations`
--

CREATE TABLE `cart_rule_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` text DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cart_shipping_rates`
--

CREATE TABLE `cart_shipping_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `carrier` varchar(191) NOT NULL,
  `carrier_title` varchar(191) NOT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) NOT NULL,
  `method_description` varchar(191) DEFAULT NULL,
  `price` double DEFAULT 0,
  `base_price` double DEFAULT 0,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `applied_tax_rate` varchar(191) DEFAULT NULL,
  `is_calculate_tax` tinyint(1) NOT NULL DEFAULT 1,
  `cart_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart_shipping_rates`
--

INSERT INTO `cart_shipping_rates` (`id`, `carrier`, `carrier_title`, `method`, `method_title`, `method_description`, `price`, `base_price`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `price_incl_tax`, `base_price_incl_tax`, `applied_tax_rate`, `is_calculate_tax`, `cart_address_id`, `created_at`, `updated_at`, `cart_id`) VALUES
(7, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, NULL, 1, 3, '2025-02-14 04:56:29', '2025-02-14 04:56:29', 1),
(8, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 3, '2025-02-14 04:56:29', '2025-02-14 04:56:29', 1),
(11, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, NULL, 1, 7, '2025-02-14 04:56:57', '2025-02-14 04:56:57', 2),
(12, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 7, '2025-02-14 04:56:57', '2025-02-14 04:56:57', 2);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rules`
--

CREATE TABLE `catalog_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `starts_from` date DEFAULT NULL,
  `ends_till` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_channels`
--

CREATE TABLE `catalog_rule_channels` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_customer_groups`
--

CREATE TABLE `catalog_rule_customer_groups` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_products`
--

CREATE TABLE `catalog_rule_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_rule_product_prices`
--

CREATE TABLE `catalog_rule_product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `rule_date` date NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `logo_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `display_mode` varchar(191) DEFAULT 'products_and_description',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `banner_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `logo_path`, `status`, `display_mode`, `_lft`, `_rgt`, `parent_id`, `additional`, `banner_path`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 'products_and_description', 1, 16, NULL, NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(2, 1, NULL, 1, 'products_and_description', 1, 1, 1, NULL, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(3, 2, NULL, 1, 'products_and_description', 1, 1, 1, NULL, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(4, 2, NULL, 1, 'products_and_description', 14, 15, 1, NULL, NULL, '2025-03-04 05:28:30', '2025-03-04 16:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `category_filterable_attributes`
--

CREATE TABLE `category_filterable_attributes` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_filterable_attributes`
--

INSERT INTO `category_filterable_attributes` (`category_id`, `attribute_id`) VALUES
(2, 11),
(2, 23),
(2, 24),
(2, 25),
(3, 11),
(3, 23),
(3, 24),
(3, 25),
(4, 25);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `url_path` varchar(2048) NOT NULL,
  `description` text DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `locale_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `slug`, `url_path`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `locale_id`, `locale`) VALUES
(1, 1, 'Root', 'root', '', 'Root Category Description', '', '', '', NULL, 'en'),
(2, 2, 'Men', 'men', '', 'Men Category Description', 'Men Category Meta Title', 'Men Category Meta Description', 'Men Category Meta Keywords', NULL, 'en'),
(3, 3, 'Winter Wear', 'winter-wear', '', 'Winter Wear Category Description', 'Winter Wear Category Meta Title', 'Winter Wear Category Meta Description', 'Winter Wear Category Meta Keywords', NULL, 'en'),
(4, 4, 'Women Wear', 'women-wear', '', '<p>Women wearning</p>', '', '', '', 1, 'en'),
(5, 4, 'Women Wear', 'women-wear', '', '<p>Women wearning</p>', '', '', '', 2, 'jp');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `timezone` varchar(191) DEFAULT NULL,
  `theme` varchar(191) DEFAULT NULL,
  `hostname` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`home_seo`)),
  `is_maintenance_on` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_ips` text DEFAULT NULL,
  `root_category_id` int(10) UNSIGNED DEFAULT NULL,
  `default_locale_id` int(10) UNSIGNED NOT NULL,
  `base_currency_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `code`, `timezone`, `theme`, `hostname`, `logo`, `favicon`, `home_seo`, `is_maintenance_on`, `allowed_ips`, `root_category_id`, `default_locale_id`, `base_currency_id`, `created_at`, `updated_at`) VALUES
(1, 'default', NULL, 'default', 'http://localhost', NULL, NULL, NULL, 0, NULL, 1, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `channel_currencies`
--

CREATE TABLE `channel_currencies` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_currencies`
--

INSERT INTO `channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_inventory_sources`
--

CREATE TABLE `channel_inventory_sources` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_inventory_sources`
--

INSERT INTO `channel_inventory_sources` (`channel_id`, `inventory_source_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_locales`
--

CREATE TABLE `channel_locales` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_locales`
--

INSERT INTO `channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `channel_translations`
--

CREATE TABLE `channel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `maintenance_mode_text` text DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`home_seo`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `channel_translations`
--

INSERT INTO `channel_translations` (`id`, `channel_id`, `locale`, `name`, `description`, `maintenance_mode_text`, `home_seo`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Default', NULL, NULL, '{\"meta_title\":\"Demo store\",\"meta_description\":\"Demo store meta description\",\"meta_keywords\":\"Demo store meta keyword\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `layout`, `created_at`, `updated_at`) VALUES
(1, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(2, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(3, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(4, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(5, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(6, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(7, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(8, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(9, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(10, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_channels`
--

CREATE TABLE `cms_page_channels` (
  `cms_page_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_translations`
--

CREATE TABLE `cms_page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_title` varchar(191) NOT NULL,
  `url_key` varchar(191) NOT NULL,
  `html_content` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `locale` varchar(191) NOT NULL,
  `cms_page_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cms_page_translations`
--

INSERT INTO `cms_page_translations` (`id`, `page_title`, `url_key`, `html_content`, `meta_title`, `meta_description`, `meta_keywords`, `locale`, `cms_page_id`) VALUES
(1, 'About Us', 'about-us', '<div class=\"static-container\"><div class=\"mb-5\">About Us Page Content</div></div>', 'about us', '', 'aboutus', 'en', 1),
(2, 'Return Policy', 'return-policy', '<div class=\"static-container\"><div class=\"mb-5\">Return Policy Page Content</div></div>', 'return policy', '', 'return, policy', 'en', 2),
(3, 'Refund Policy', 'refund-policy', '<div class=\"static-container\"><div class=\"mb-5\">Refund Policy Page Content</div></div>', 'Refund policy', '', 'refund, policy', 'en', 3),
(4, 'Terms & Conditions', 'terms-conditions', '<div class=\"static-container\"><div class=\"mb-5\">Terms & Conditions Page Content</div></div>', 'Terms & Conditions', '', 'term, conditions', 'en', 4),
(5, 'Terms of Use', 'terms-of-use', '<div class=\"static-container\"><div class=\"mb-5\">Terms of Use Page Content</div></div>', 'Terms of use', '', 'term, use', 'en', 5),
(6, 'Customer Service', 'customer-service', '<div class=\"static-container\"><div class=\"mb-5\">Customer Service Page Content</div></div>', 'Customer Service', '', 'customer, service', 'en', 6),
(7, 'What\'s New', 'whats-new', '<div class=\"static-container\"><div class=\"mb-5\">What\'s New page content</div></div>', 'What\'s New', '', 'new', 'en', 7),
(8, 'Payment Policy', 'payment-policy', '<div class=\"static-container\"><div class=\"mb-5\">Payment Policy Page Content</div></div>', 'Payment Policy', '', 'payment, policy', 'en', 8),
(9, 'Shipping Policy', 'shipping-policy', '<div class=\"static-container\"><div class=\"mb-5\">Shipping Policy Page Content</div></div>', 'Shipping Policy', '', 'shipping, policy', 'en', 9),
(10, 'Privacy Policy', 'privacy-policy', '<div class=\"static-container\"><div class=\"mb-5\">Privacy Policy Page Content</div></div>', 'Privacy Policy', '', 'privacy, policy', 'en', 10);

-- --------------------------------------------------------

--
-- Table structure for table `compare_items`
--

CREATE TABLE `compare_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `core_config`
--

CREATE TABLE `core_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `channel_code` varchar(191) DEFAULT NULL,
  `locale_code` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `core_config`
--

INSERT INTO `core_config` (`id`, `code`, `value`, `channel_code`, `locale_code`, `created_at`, `updated_at`) VALUES
(1, 'sales.checkout.shopping_cart.allow_guest_checkout', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(2, 'emails.general.notifications.emails.general.notifications.verification', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(3, 'emails.general.notifications.emails.general.notifications.registration', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(4, 'emails.general.notifications.emails.general.notifications.customer_registration_confirmation_mail_to_admin', '0', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(5, 'emails.general.notifications.emails.general.notifications.customer_account_credentials', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(6, 'emails.general.notifications.emails.general.notifications.new_order', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(7, 'emails.general.notifications.emails.general.notifications.new_order_mail_to_admin', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(8, 'emails.general.notifications.emails.general.notifications.new_invoice', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(9, 'emails.general.notifications.emails.general.notifications.new_invoice_mail_to_admin', '0', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(10, 'emails.general.notifications.emails.general.notifications.new_refund', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(11, 'emails.general.notifications.emails.general.notifications.new_refund_mail_to_admin', '0', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(12, 'emails.general.notifications.emails.general.notifications.new_shipment', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(13, 'emails.general.notifications.emails.general.notifications.new_shipment_mail_to_admin', '0', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(14, 'emails.general.notifications.emails.general.notifications.new_inventory_source', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(15, 'emails.general.notifications.emails.general.notifications.cancel_order', '1', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(16, 'emails.general.notifications.emails.general.notifications.cancel_order_mail_to_admin', '0', NULL, NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(17, 'customer.settings.social_login.enable_facebook', '1', 'default', NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(18, 'customer.settings.social_login.enable_twitter', '1', 'default', NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(19, 'customer.settings.social_login.enable_google', '1', 'default', NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(20, 'customer.settings.social_login.enable_linkedin', '1', 'default', NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(21, 'customer.settings.social_login.enable_github', '1', 'default', NULL, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(22, 'general.design.admin_logo.logo_image', 'configuration/YH2A69A7dje5dO8Ehq5GL5OclpYtG7dmSRZpP3dN.png', NULL, NULL, '2025-02-14 03:53:34', '2025-02-14 03:53:34'),
(23, 'sales.shipping.origin.country', 'JP', 'default', 'en', '2025-02-14 04:59:36', '2025-02-14 04:59:36'),
(24, 'sales.shipping.origin.state', 'adsd', 'default', 'en', '2025-02-14 04:59:36', '2025-02-14 04:59:36'),
(25, 'sales.shipping.origin.city', 'dasdsa', 'default', 'en', '2025-02-14 04:59:36', '2025-02-14 04:59:36'),
(26, 'sales.shipping.origin.address', 'dasd', 'default', 'en', '2025-02-14 04:59:36', '2025-02-14 04:59:36'),
(27, 'sales.shipping.origin.zipcode', '1212', 'default', 'en', '2025-02-14 04:59:36', '2025-02-14 04:59:36'),
(28, 'sales.shipping.origin.store_name', '', 'default', 'en', '2025-02-14 04:59:36', '2025-02-14 04:59:36'),
(29, 'sales.shipping.origin.vat_number', '', 'default', NULL, '2025-02-14 04:59:36', '2025-02-14 04:59:36'),
(30, 'sales.shipping.origin.contact', '', 'default', NULL, '2025-02-14 04:59:36', '2025-02-14 04:59:36'),
(31, 'sales.shipping.origin.bank_details', '', 'default', 'en', '2025-02-14 04:59:36', '2025-02-14 04:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `country_code` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `default_name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `country_code`, `code`, `default_name`) VALUES
(1, 244, 'US', 'AL', 'Alabama'),
(2, 244, 'US', 'AK', 'Alaska'),
(3, 244, 'US', 'AS', 'American Samoa'),
(4, 244, 'US', 'AZ', 'Arizona'),
(5, 244, 'US', 'AR', 'Arkansas'),
(6, 244, 'US', 'AE', 'Armed Forces Africa'),
(7, 244, 'US', 'AA', 'Armed Forces Americas'),
(8, 244, 'US', 'AE', 'Armed Forces Canada'),
(9, 244, 'US', 'AE', 'Armed Forces Europe'),
(10, 244, 'US', 'AE', 'Armed Forces Middle East'),
(11, 244, 'US', 'AP', 'Armed Forces Pacific'),
(12, 244, 'US', 'CA', 'California'),
(13, 244, 'US', 'CO', 'Colorado'),
(14, 244, 'US', 'CT', 'Connecticut'),
(15, 244, 'US', 'DE', 'Delaware'),
(16, 244, 'US', 'DC', 'District of Columbia'),
(17, 244, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 244, 'US', 'FL', 'Florida'),
(19, 244, 'US', 'GA', 'Georgia'),
(20, 244, 'US', 'GU', 'Guam'),
(21, 244, 'US', 'HI', 'Hawaii'),
(22, 244, 'US', 'ID', 'Idaho'),
(23, 244, 'US', 'IL', 'Illinois'),
(24, 244, 'US', 'IN', 'Indiana'),
(25, 244, 'US', 'IA', 'Iowa'),
(26, 244, 'US', 'KS', 'Kansas'),
(27, 244, 'US', 'KY', 'Kentucky'),
(28, 244, 'US', 'LA', 'Louisiana'),
(29, 244, 'US', 'ME', 'Maine'),
(30, 244, 'US', 'MH', 'Marshall Islands'),
(31, 244, 'US', 'MD', 'Maryland'),
(32, 244, 'US', 'MA', 'Massachusetts'),
(33, 244, 'US', 'MI', 'Michigan'),
(34, 244, 'US', 'MN', 'Minnesota'),
(35, 244, 'US', 'MS', 'Mississippi'),
(36, 244, 'US', 'MO', 'Missouri'),
(37, 244, 'US', 'MT', 'Montana'),
(38, 244, 'US', 'NE', 'Nebraska'),
(39, 244, 'US', 'NV', 'Nevada'),
(40, 244, 'US', 'NH', 'New Hampshire'),
(41, 244, 'US', 'NJ', 'New Jersey'),
(42, 244, 'US', 'NM', 'New Mexico'),
(43, 244, 'US', 'NY', 'New York'),
(44, 244, 'US', 'NC', 'North Carolina'),
(45, 244, 'US', 'ND', 'North Dakota'),
(46, 244, 'US', 'MP', 'Northern Mariana Islands'),
(47, 244, 'US', 'OH', 'Ohio'),
(48, 244, 'US', 'OK', 'Oklahoma'),
(49, 244, 'US', 'OR', 'Oregon'),
(50, 244, 'US', 'PW', 'Palau'),
(51, 244, 'US', 'PA', 'Pennsylvania'),
(52, 244, 'US', 'PR', 'Puerto Rico'),
(53, 244, 'US', 'RI', 'Rhode Island'),
(54, 244, 'US', 'SC', 'South Carolina'),
(55, 244, 'US', 'SD', 'South Dakota'),
(56, 244, 'US', 'TN', 'Tennessee'),
(57, 244, 'US', 'TX', 'Texas'),
(58, 244, 'US', 'UT', 'Utah'),
(59, 244, 'US', 'VT', 'Vermont'),
(60, 244, 'US', 'VI', 'Virgin Islands'),
(61, 244, 'US', 'VA', 'Virginia'),
(62, 244, 'US', 'WA', 'Washington'),
(63, 244, 'US', 'WV', 'West Virginia'),
(64, 244, 'US', 'WI', 'Wisconsin'),
(65, 244, 'US', 'WY', 'Wyoming'),
(66, 40, 'CA', 'AB', 'Alberta'),
(67, 40, 'CA', 'BC', 'British Columbia'),
(68, 40, 'CA', 'MB', 'Manitoba'),
(69, 40, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 40, 'CA', 'NB', 'New Brunswick'),
(71, 40, 'CA', 'NS', 'Nova Scotia'),
(72, 40, 'CA', 'NT', 'Northwest Territories'),
(73, 40, 'CA', 'NU', 'Nunavut'),
(74, 40, 'CA', 'ON', 'Ontario'),
(75, 40, 'CA', 'PE', 'Prince Edward Island'),
(76, 40, 'CA', 'QC', 'Quebec'),
(77, 40, 'CA', 'SK', 'Saskatchewan'),
(78, 40, 'CA', 'YT', 'Yukon Territory'),
(79, 88, 'DE', 'NDS', 'Niedersachsen'),
(80, 88, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 88, 'DE', 'BAY', 'Bayern'),
(82, 88, 'DE', 'BER', 'Berlin'),
(83, 88, 'DE', 'BRG', 'Brandenburg'),
(84, 88, 'DE', 'BRE', 'Bremen'),
(85, 88, 'DE', 'HAM', 'Hamburg'),
(86, 88, 'DE', 'HES', 'Hessen'),
(87, 88, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 88, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 88, 'DE', 'SAR', 'Saarland'),
(91, 88, 'DE', 'SAS', 'Sachsen'),
(92, 88, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 88, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 88, 'DE', 'THE', 'Thüringen'),
(95, 16, 'AT', 'WI', 'Wien'),
(96, 16, 'AT', 'NO', 'Niederösterreich'),
(97, 16, 'AT', 'OO', 'Oberösterreich'),
(98, 16, 'AT', 'SB', 'Salzburg'),
(99, 16, 'AT', 'KN', 'Kärnten'),
(100, 16, 'AT', 'ST', 'Steiermark'),
(101, 16, 'AT', 'TI', 'Tirol'),
(102, 16, 'AT', 'BL', 'Burgenland'),
(103, 16, 'AT', 'VB', 'Vorarlberg'),
(104, 220, 'CH', 'AG', 'Aargau'),
(105, 220, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 220, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 220, 'CH', 'BE', 'Bern'),
(108, 220, 'CH', 'BL', 'Basel-Landschaft'),
(109, 220, 'CH', 'BS', 'Basel-Stadt'),
(110, 220, 'CH', 'FR', 'Freiburg'),
(111, 220, 'CH', 'GE', 'Genf'),
(112, 220, 'CH', 'GL', 'Glarus'),
(113, 220, 'CH', 'GR', 'Graubünden'),
(114, 220, 'CH', 'JU', 'Jura'),
(115, 220, 'CH', 'LU', 'Luzern'),
(116, 220, 'CH', 'NE', 'Neuenburg'),
(117, 220, 'CH', 'NW', 'Nidwalden'),
(118, 220, 'CH', 'OW', 'Obwalden'),
(119, 220, 'CH', 'SG', 'St. Gallen'),
(120, 220, 'CH', 'SH', 'Schaffhausen'),
(121, 220, 'CH', 'SO', 'Solothurn'),
(122, 220, 'CH', 'SZ', 'Schwyz'),
(123, 220, 'CH', 'TG', 'Thurgau'),
(124, 220, 'CH', 'TI', 'Tessin'),
(125, 220, 'CH', 'UR', 'Uri'),
(126, 220, 'CH', 'VD', 'Waadt'),
(127, 220, 'CH', 'VS', 'Wallis'),
(128, 220, 'CH', 'ZG', 'Zug'),
(129, 220, 'CH', 'ZH', 'Zürich'),
(130, 206, 'ES', 'A Coruсa', 'A Coruña'),
(131, 206, 'ES', 'Alava', 'Alava'),
(132, 206, 'ES', 'Albacete', 'Albacete'),
(133, 206, 'ES', 'Alicante', 'Alicante'),
(134, 206, 'ES', 'Almeria', 'Almeria'),
(135, 206, 'ES', 'Asturias', 'Asturias'),
(136, 206, 'ES', 'Avila', 'Avila'),
(137, 206, 'ES', 'Badajoz', 'Badajoz'),
(138, 206, 'ES', 'Baleares', 'Baleares'),
(139, 206, 'ES', 'Barcelona', 'Barcelona'),
(140, 206, 'ES', 'Burgos', 'Burgos'),
(141, 206, 'ES', 'Caceres', 'Caceres'),
(142, 206, 'ES', 'Cadiz', 'Cadiz'),
(143, 206, 'ES', 'Cantabria', 'Cantabria'),
(144, 206, 'ES', 'Castellon', 'Castellon'),
(145, 206, 'ES', 'Ceuta', 'Ceuta'),
(146, 206, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 206, 'ES', 'Cordoba', 'Cordoba'),
(148, 206, 'ES', 'Cuenca', 'Cuenca'),
(149, 206, 'ES', 'Girona', 'Girona'),
(150, 206, 'ES', 'Granada', 'Granada'),
(151, 206, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 206, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 206, 'ES', 'Huelva', 'Huelva'),
(154, 206, 'ES', 'Huesca', 'Huesca'),
(155, 206, 'ES', 'Jaen', 'Jaen'),
(156, 206, 'ES', 'La Rioja', 'La Rioja'),
(157, 206, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 206, 'ES', 'Leon', 'Leon'),
(159, 206, 'ES', 'Lleida', 'Lleida'),
(160, 206, 'ES', 'Lugo', 'Lugo'),
(161, 206, 'ES', 'Madrid', 'Madrid'),
(162, 206, 'ES', 'Malaga', 'Malaga'),
(163, 206, 'ES', 'Melilla', 'Melilla'),
(164, 206, 'ES', 'Murcia', 'Murcia'),
(165, 206, 'ES', 'Navarra', 'Navarra'),
(166, 206, 'ES', 'Ourense', 'Ourense'),
(167, 206, 'ES', 'Palencia', 'Palencia'),
(168, 206, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 206, 'ES', 'Salamanca', 'Salamanca'),
(170, 206, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 206, 'ES', 'Segovia', 'Segovia'),
(172, 206, 'ES', 'Sevilla', 'Sevilla'),
(173, 206, 'ES', 'Soria', 'Soria'),
(174, 206, 'ES', 'Tarragona', 'Tarragona'),
(175, 206, 'ES', 'Teruel', 'Teruel'),
(176, 206, 'ES', 'Toledo', 'Toledo'),
(177, 206, 'ES', 'Valencia', 'Valencia'),
(178, 206, 'ES', 'Valladolid', 'Valladolid'),
(179, 206, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 206, 'ES', 'Zamora', 'Zamora'),
(181, 206, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 81, 'FR', '1', 'Ain'),
(183, 81, 'FR', '2', 'Aisne'),
(184, 81, 'FR', '3', 'Allier'),
(185, 81, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 81, 'FR', '5', 'Hautes-Alpes'),
(187, 81, 'FR', '6', 'Alpes-Maritimes'),
(188, 81, 'FR', '7', 'Ardèche'),
(189, 81, 'FR', '8', 'Ardennes'),
(190, 81, 'FR', '9', 'Ariège'),
(191, 81, 'FR', '10', 'Aube'),
(192, 81, 'FR', '11', 'Aude'),
(193, 81, 'FR', '12', 'Aveyron'),
(194, 81, 'FR', '13', 'Bouches-du-Rhône'),
(195, 81, 'FR', '14', 'Calvados'),
(196, 81, 'FR', '15', 'Cantal'),
(197, 81, 'FR', '16', 'Charente'),
(198, 81, 'FR', '17', 'Charente-Maritime'),
(199, 81, 'FR', '18', 'Cher'),
(200, 81, 'FR', '19', 'Corrèze'),
(201, 81, 'FR', '2A', 'Corse-du-Sud'),
(202, 81, 'FR', '2B', 'Haute-Corse'),
(203, 81, 'FR', '21', 'Côte-d\'Or'),
(204, 81, 'FR', '22', 'Côtes-d\'Armor'),
(205, 81, 'FR', '23', 'Creuse'),
(206, 81, 'FR', '24', 'Dordogne'),
(207, 81, 'FR', '25', 'Doubs'),
(208, 81, 'FR', '26', 'Drôme'),
(209, 81, 'FR', '27', 'Eure'),
(210, 81, 'FR', '28', 'Eure-et-Loir'),
(211, 81, 'FR', '29', 'Finistère'),
(212, 81, 'FR', '30', 'Gard'),
(213, 81, 'FR', '31', 'Haute-Garonne'),
(214, 81, 'FR', '32', 'Gers'),
(215, 81, 'FR', '33', 'Gironde'),
(216, 81, 'FR', '34', 'Hérault'),
(217, 81, 'FR', '35', 'Ille-et-Vilaine'),
(218, 81, 'FR', '36', 'Indre'),
(219, 81, 'FR', '37', 'Indre-et-Loire'),
(220, 81, 'FR', '38', 'Isère'),
(221, 81, 'FR', '39', 'Jura'),
(222, 81, 'FR', '40', 'Landes'),
(223, 81, 'FR', '41', 'Loir-et-Cher'),
(224, 81, 'FR', '42', 'Loire'),
(225, 81, 'FR', '43', 'Haute-Loire'),
(226, 81, 'FR', '44', 'Loire-Atlantique'),
(227, 81, 'FR', '45', 'Loiret'),
(228, 81, 'FR', '46', 'Lot'),
(229, 81, 'FR', '47', 'Lot-et-Garonne'),
(230, 81, 'FR', '48', 'Lozère'),
(231, 81, 'FR', '49', 'Maine-et-Loire'),
(232, 81, 'FR', '50', 'Manche'),
(233, 81, 'FR', '51', 'Marne'),
(234, 81, 'FR', '52', 'Haute-Marne'),
(235, 81, 'FR', '53', 'Mayenne'),
(236, 81, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 81, 'FR', '55', 'Meuse'),
(238, 81, 'FR', '56', 'Morbihan'),
(239, 81, 'FR', '57', 'Moselle'),
(240, 81, 'FR', '58', 'Nièvre'),
(241, 81, 'FR', '59', 'Nord'),
(242, 81, 'FR', '60', 'Oise'),
(243, 81, 'FR', '61', 'Orne'),
(244, 81, 'FR', '62', 'Pas-de-Calais'),
(245, 81, 'FR', '63', 'Puy-de-Dôme'),
(246, 81, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 81, 'FR', '65', 'Hautes-Pyrénées'),
(248, 81, 'FR', '66', 'Pyrénées-Orientales'),
(249, 81, 'FR', '67', 'Bas-Rhin'),
(250, 81, 'FR', '68', 'Haut-Rhin'),
(251, 81, 'FR', '69', 'Rhône'),
(252, 81, 'FR', '70', 'Haute-Saône'),
(253, 81, 'FR', '71', 'Saône-et-Loire'),
(254, 81, 'FR', '72', 'Sarthe'),
(255, 81, 'FR', '73', 'Savoie'),
(256, 81, 'FR', '74', 'Haute-Savoie'),
(257, 81, 'FR', '75', 'Paris'),
(258, 81, 'FR', '76', 'Seine-Maritime'),
(259, 81, 'FR', '77', 'Seine-et-Marne'),
(260, 81, 'FR', '78', 'Yvelines'),
(261, 81, 'FR', '79', 'Deux-Sèvres'),
(262, 81, 'FR', '80', 'Somme'),
(263, 81, 'FR', '81', 'Tarn'),
(264, 81, 'FR', '82', 'Tarn-et-Garonne'),
(265, 81, 'FR', '83', 'Var'),
(266, 81, 'FR', '84', 'Vaucluse'),
(267, 81, 'FR', '85', 'Vendée'),
(268, 81, 'FR', '86', 'Vienne'),
(269, 81, 'FR', '87', 'Haute-Vienne'),
(270, 81, 'FR', '88', 'Vosges'),
(271, 81, 'FR', '89', 'Yonne'),
(272, 81, 'FR', '90', 'Territoire-de-Belfort'),
(273, 81, 'FR', '91', 'Essonne'),
(274, 81, 'FR', '92', 'Hauts-de-Seine'),
(275, 81, 'FR', '93', 'Seine-Saint-Denis'),
(276, 81, 'FR', '94', 'Val-de-Marne'),
(277, 81, 'FR', '95', 'Val-d\'Oise'),
(278, 185, 'RO', 'AB', 'Alba'),
(279, 185, 'RO', 'AR', 'Arad'),
(280, 185, 'RO', 'AG', 'Argeş'),
(281, 185, 'RO', 'BC', 'Bacău'),
(282, 185, 'RO', 'BH', 'Bihor'),
(283, 185, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 185, 'RO', 'BT', 'Botoşani'),
(285, 185, 'RO', 'BV', 'Braşov'),
(286, 185, 'RO', 'BR', 'Brăila'),
(287, 185, 'RO', 'B', 'Bucureşti'),
(288, 185, 'RO', 'BZ', 'Buzău'),
(289, 185, 'RO', 'CS', 'Caraş-Severin'),
(290, 185, 'RO', 'CL', 'Călăraşi'),
(291, 185, 'RO', 'CJ', 'Cluj'),
(292, 185, 'RO', 'CT', 'Constanţa'),
(293, 185, 'RO', 'CV', 'Covasna'),
(294, 185, 'RO', 'DB', 'Dâmboviţa'),
(295, 185, 'RO', 'DJ', 'Dolj'),
(296, 185, 'RO', 'GL', 'Galaţi'),
(297, 185, 'RO', 'GR', 'Giurgiu'),
(298, 185, 'RO', 'GJ', 'Gorj'),
(299, 185, 'RO', 'HR', 'Harghita'),
(300, 185, 'RO', 'HD', 'Hunedoara'),
(301, 185, 'RO', 'IL', 'Ialomiţa'),
(302, 185, 'RO', 'IS', 'Iaşi'),
(303, 185, 'RO', 'IF', 'Ilfov'),
(304, 185, 'RO', 'MM', 'Maramureş'),
(305, 185, 'RO', 'MH', 'Mehedinţi'),
(306, 185, 'RO', 'MS', 'Mureş'),
(307, 185, 'RO', 'NT', 'Neamţ'),
(308, 185, 'RO', 'OT', 'Olt'),
(309, 185, 'RO', 'PH', 'Prahova'),
(310, 185, 'RO', 'SM', 'Satu-Mare'),
(311, 185, 'RO', 'SJ', 'Sălaj'),
(312, 185, 'RO', 'SB', 'Sibiu'),
(313, 185, 'RO', 'SV', 'Suceava'),
(314, 185, 'RO', 'TR', 'Teleorman'),
(315, 185, 'RO', 'TM', 'Timiş'),
(316, 185, 'RO', 'TL', 'Tulcea'),
(317, 185, 'RO', 'VS', 'Vaslui'),
(318, 185, 'RO', 'VL', 'Vâlcea'),
(319, 185, 'RO', 'VN', 'Vrancea'),
(320, 80, 'FI', 'Lappi', 'Lappi'),
(321, 80, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 80, 'FI', 'Kainuu', 'Kainuu'),
(323, 80, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 80, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 80, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 80, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 80, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 80, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 80, 'FI', 'Satakunta', 'Satakunta'),
(330, 80, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 80, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 80, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 80, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 80, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 80, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 80, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 80, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 80, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 80, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 74, 'EE', 'EE-37', 'Harjumaa'),
(341, 74, 'EE', 'EE-39', 'Hiiumaa'),
(342, 74, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 74, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 74, 'EE', 'EE-51', 'Järvamaa'),
(345, 74, 'EE', 'EE-57', 'Läänemaa'),
(346, 74, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 74, 'EE', 'EE-65', 'Põlvamaa'),
(348, 74, 'EE', 'EE-67', 'Pärnumaa'),
(349, 74, 'EE', 'EE-70', 'Raplamaa'),
(350, 74, 'EE', 'EE-74', 'Saaremaa'),
(351, 74, 'EE', 'EE-78', 'Tartumaa'),
(352, 74, 'EE', 'EE-82', 'Valgamaa'),
(353, 74, 'EE', 'EE-84', 'Viljandimaa'),
(354, 74, 'EE', 'EE-86', 'Võrumaa'),
(355, 125, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 125, 'LV', 'LV-JEL', 'Jelgava'),
(357, 125, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 125, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 125, 'LV', 'LV-LPX', 'Liepāja'),
(360, 125, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 125, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 125, 'LV', 'LV-RIX', 'Rīga'),
(363, 125, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 125, 'LV', 'Valmiera', 'Valmiera'),
(365, 125, 'LV', 'LV-VEN', 'Ventspils'),
(366, 125, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 125, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 125, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 125, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 125, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 125, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 125, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 125, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 125, 'LV', 'Apes novads', 'Apes novads'),
(375, 125, 'LV', 'Auces novads', 'Auces novads'),
(376, 125, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 125, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 125, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 125, 'LV', 'LV-BL', 'Balvu novads'),
(380, 125, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 125, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 125, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 125, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 125, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 125, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 125, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 125, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 125, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 125, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 125, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 125, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 125, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 125, 'LV', 'Engures novads', 'Engures novads'),
(394, 125, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 125, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 125, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 125, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 125, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 125, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 125, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 125, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 125, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 125, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 125, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 125, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 125, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 125, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 125, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 125, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 125, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 125, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 125, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 125, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 125, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 125, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 125, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 125, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 125, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 125, 'LV', 'LV-MA', 'Madonas novads'),
(420, 125, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 125, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 125, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 125, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 125, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 125, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 125, 'LV', 'LV-OG', 'Ogres novads'),
(427, 125, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 125, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 125, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 125, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 125, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 125, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 125, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 125, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 125, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 125, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 125, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 125, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 125, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 125, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 125, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 125, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 125, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 125, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 125, 'LV', 'Salas novads', 'Salas novads'),
(446, 125, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 125, 'LV', 'LV-SA', 'Saldus novads'),
(448, 125, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 125, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 125, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 125, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 125, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 125, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 125, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 125, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 125, 'LV', 'LV-TA', 'Talsu novads'),
(457, 125, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 125, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 125, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 125, 'LV', 'LV-VK', 'Valkas novads'),
(461, 125, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 125, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 125, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 125, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 125, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 125, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 125, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 125, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 125, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 125, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 125, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 125, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 125, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 125, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 131, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 131, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 131, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 131, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 131, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 131, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 131, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 131, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 131, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 131, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 31, 'BR', 'AC', 'Acre'),
(486, 31, 'BR', 'AL', 'Alagoas'),
(487, 31, 'BR', 'AP', 'Amapá'),
(488, 31, 'BR', 'AM', 'Amazonas'),
(489, 31, 'BR', 'BA', 'Bahia'),
(490, 31, 'BR', 'CE', 'Ceará'),
(491, 31, 'BR', 'ES', 'Espírito Santo'),
(492, 31, 'BR', 'GO', 'Goiás'),
(493, 31, 'BR', 'MA', 'Maranhão'),
(494, 31, 'BR', 'MT', 'Mato Grosso'),
(495, 31, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 31, 'BR', 'MG', 'Minas Gerais'),
(497, 31, 'BR', 'PA', 'Pará'),
(498, 31, 'BR', 'PB', 'Paraíba'),
(499, 31, 'BR', 'PR', 'Paraná'),
(500, 31, 'BR', 'PE', 'Pernambuco'),
(501, 31, 'BR', 'PI', 'Piauí'),
(502, 31, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 31, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 31, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 31, 'BR', 'RO', 'Rondônia'),
(506, 31, 'BR', 'RR', 'Roraima'),
(507, 31, 'BR', 'SC', 'Santa Catarina'),
(508, 31, 'BR', 'SP', 'São Paulo'),
(509, 31, 'BR', 'SE', 'Sergipe'),
(510, 31, 'BR', 'TO', 'Tocantins'),
(511, 31, 'BR', 'DF', 'Distrito Federal'),
(512, 59, 'HR', 'HR-01', 'Zagrebačka županija'),
(513, 59, 'HR', 'HR-02', 'Krapinsko-zagorska županija'),
(514, 59, 'HR', 'HR-03', 'Sisačko-moslavačka županija'),
(515, 59, 'HR', 'HR-04', 'Karlovačka županija'),
(516, 59, 'HR', 'HR-05', 'Varaždinska županija'),
(517, 59, 'HR', 'HR-06', 'Koprivničko-križevačka županija'),
(518, 59, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija'),
(519, 59, 'HR', 'HR-08', 'Primorsko-goranska županija'),
(520, 59, 'HR', 'HR-09', 'Ličko-senjska županija'),
(521, 59, 'HR', 'HR-10', 'Virovitičko-podravska županija'),
(522, 59, 'HR', 'HR-11', 'Požeško-slavonska županija'),
(523, 59, 'HR', 'HR-12', 'Brodsko-posavska županija'),
(524, 59, 'HR', 'HR-13', 'Zadarska županija'),
(525, 59, 'HR', 'HR-14', 'Osječko-baranjska županija'),
(526, 59, 'HR', 'HR-15', 'Šibensko-kninska županija'),
(527, 59, 'HR', 'HR-16', 'Vukovarsko-srijemska županija'),
(528, 59, 'HR', 'HR-17', 'Splitsko-dalmatinska županija'),
(529, 59, 'HR', 'HR-18', 'Istarska županija'),
(530, 59, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija'),
(531, 59, 'HR', 'HR-20', 'Međimurska županija'),
(532, 59, 'HR', 'HR-21', 'Grad Zagreb'),
(533, 106, 'IN', 'AN', 'Andaman and Nicobar Islands'),
(534, 106, 'IN', 'AP', 'Andhra Pradesh'),
(535, 106, 'IN', 'AR', 'Arunachal Pradesh'),
(536, 106, 'IN', 'AS', 'Assam'),
(537, 106, 'IN', 'BR', 'Bihar'),
(538, 106, 'IN', 'CH', 'Chandigarh'),
(539, 106, 'IN', 'CT', 'Chhattisgarh'),
(540, 106, 'IN', 'DN', 'Dadra and Nagar Haveli'),
(541, 106, 'IN', 'DD', 'Daman and Diu'),
(542, 106, 'IN', 'DL', 'Delhi'),
(543, 106, 'IN', 'GA', 'Goa'),
(544, 106, 'IN', 'GJ', 'Gujarat'),
(545, 106, 'IN', 'HR', 'Haryana'),
(546, 106, 'IN', 'HP', 'Himachal Pradesh'),
(547, 106, 'IN', 'JK', 'Jammu and Kashmir'),
(548, 106, 'IN', 'JH', 'Jharkhand'),
(549, 106, 'IN', 'KA', 'Karnataka'),
(550, 106, 'IN', 'KL', 'Kerala'),
(551, 106, 'IN', 'LD', 'Lakshadweep'),
(552, 106, 'IN', 'MP', 'Madhya Pradesh'),
(553, 106, 'IN', 'MH', 'Maharashtra'),
(554, 106, 'IN', 'MN', 'Manipur'),
(555, 106, 'IN', 'ML', 'Meghalaya'),
(556, 106, 'IN', 'MZ', 'Mizoram'),
(557, 106, 'IN', 'NL', 'Nagaland'),
(558, 106, 'IN', 'OR', 'Odisha'),
(559, 106, 'IN', 'PY', 'Puducherry'),
(560, 106, 'IN', 'PB', 'Punjab'),
(561, 106, 'IN', 'RJ', 'Rajasthan'),
(562, 106, 'IN', 'SK', 'Sikkim'),
(563, 106, 'IN', 'TN', 'Tamil Nadu'),
(564, 106, 'IN', 'TG', 'Telangana'),
(565, 106, 'IN', 'TR', 'Tripura'),
(566, 106, 'IN', 'UP', 'Uttar Pradesh'),
(567, 106, 'IN', 'UT', 'Uttarakhand'),
(568, 106, 'IN', 'WB', 'West Bengal'),
(569, 176, 'PY', 'PY-16', 'Alto Paraguay'),
(570, 176, 'PY', 'PY-10', 'Alto Paraná'),
(571, 176, 'PY', 'PY-13', 'Amambay'),
(572, 176, 'PY', 'PY-ASU', 'Asunción'),
(573, 176, 'PY', 'PY-19', 'Boquerón'),
(574, 176, 'PY', 'PY-5', 'Caaguazú'),
(575, 176, 'PY', 'PY-6', 'Caazapá'),
(576, 176, 'PY', 'PY-14', 'Canindeyú'),
(577, 176, 'PY', 'PY-11', 'Central'),
(578, 176, 'PY', 'PY-1', 'Concepción'),
(579, 176, 'PY', 'PY-3', 'Cordillera'),
(580, 176, 'PY', 'PY-4', 'Guairá'),
(581, 176, 'PY', 'PY-7', 'Itapúa'),
(582, 176, 'PY', 'PY-8', 'Misiones'),
(583, 176, 'PY', 'PY-9', 'Paraguarí'),
(584, 176, 'PY', 'PY-15', 'Presidente Hayes'),
(585, 176, 'PY', 'PY-2', 'San Pedro'),
(586, 176, 'PY', 'PY-12', 'Ñeembucú');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_translations`
--

CREATE TABLE `country_state_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_state_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `default_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `country_translations`
--

CREATE TABLE `country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `symbol` varchar(191) DEFAULT NULL,
  `decimal` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `group_separator` varchar(191) NOT NULL DEFAULT ',',
  `decimal_separator` varchar(191) NOT NULL DEFAULT '.',
  `currency_position` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `symbol`, `decimal`, `group_separator`, `decimal_separator`, `currency_position`, `created_at`, `updated_at`) VALUES
(1, 'USD', 'United States Dollar', '$', 2, ',', '.', NULL, NULL, NULL),
(2, 'JPY', 'Japanese', '¥', 2, ',', '.', 'left', '2025-02-14 05:17:23', '2025-02-14 05:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `currency_exchange_rates`
--

CREATE TABLE `currency_exchange_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` decimal(24,12) NOT NULL,
  `target_currency` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `currency_exchange_rates`
--

INSERT INTO `currency_exchange_rates` (`id`, `rate`, `target_currency`, `created_at`, `updated_at`) VALUES
(1, 112.000000000000, 2, '2025-03-04 17:00:50', '2025-03-04 17:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(191) DEFAULT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribed_to_news_letter` tinyint(1) NOT NULL DEFAULT 0,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `is_suspended` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `token` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `email`, `phone`, `image`, `status`, `password`, `api_token`, `customer_group_id`, `channel_id`, `subscribed_to_news_letter`, `is_verified`, `is_suspended`, `token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abhishek', 'Thapa', NULL, NULL, 'abhishekthapa115@gmail.com', NULL, NULL, 1, '$2y$10$3oVZWFIuaTIn9gkue7vBtOwSvGSE1NhVy.pTLl7LOWMJMsfn5.Oze', 'tNZrllhxXPCodcMhPdVMzavnscVJutvBKyH3MWQB7nfzYfN3c6NLLJWUzOla9H7Hnb3QklgC3bQCYZzh', 1, 1, 1, 1, 0, 'e24e0a7a6ca02d6bc539010bfa968a31', NULL, '2025-02-14 04:31:27', '2025-02-14 04:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `code`, `name`, `is_user_defined`, `created_at`, `updated_at`) VALUES
(1, 'guest', 'Guest', 0, NULL, NULL),
(2, 'general', 'General', 0, NULL, NULL),
(3, 'wholesale', 'Wholesale', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_notes`
--

CREATE TABLE `customer_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `note` text NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customer_password_resets`
--

CREATE TABLE `customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customer_social_accounts`
--

CREATE TABLE `customer_social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(191) DEFAULT NULL,
  `provider_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customization_details`
--

CREATE TABLE `customization_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(191) DEFAULT NULL,
  `section_slug` varchar(191) DEFAULT NULL,
  `field_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`field_details`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `customization_pages`
--

CREATE TABLE `customization_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customization_pages`
--

INSERT INTO `customization_pages` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Home 1', 'home', '2025-02-26 10:12:02', '2025-02-26 10:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `customization_sections`
--

CREATE TABLE `customization_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customization_sections`
--

INSERT INTO `customization_sections` (`id`, `page_slug`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'home', 'banner', 'banner', '2025-02-26 10:12:17', '2025-02-26 10:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `customization_settings`
--

CREATE TABLE `customization_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(191) DEFAULT NULL,
  `section_slug` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `required` int(11) DEFAULT 0,
  `multiple` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 0,
  `parent_id` int(11) DEFAULT 0,
  `setting_type` varchar(191) DEFAULT NULL,
  `other_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`other_settings`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `datagrid_saved_filters`
--

CREATE TABLE `datagrid_saved_filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `src` varchar(191) NOT NULL,
  `applied` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`applied`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `download_bought` int(11) NOT NULL DEFAULT 0,
  `download_used` int(11) NOT NULL DEFAULT 0,
  `status` varchar(191) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `download_canceled` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `giftcard_number` varchar(100) NOT NULL,
  `giftcard_amount` decimal(10,0) NOT NULL,
  `expirationdate` date NOT NULL,
  `expirein` varchar(190) NOT NULL,
  `giftcard_status` varchar(191) NOT NULL,
  `sendername` varchar(191) NOT NULL,
  `senderemail` varchar(255) NOT NULL,
  `recipientname` varchar(255) NOT NULL,
  `recipientemail` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL,
  `creationdate` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_balances`
--

CREATE TABLE `gift_card_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `giftcard_number` varchar(191) NOT NULL,
  `giftcard_amount` decimal(10,2) NOT NULL,
  `used_giftcard_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `remaining_giftcard_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_payments`
--

CREATE TABLE `gift_card_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `giftcard_number` varchar(191) NOT NULL,
  `order_id` varchar(191) NOT NULL,
  `payment_id` varchar(191) NOT NULL,
  `payer_id` varchar(191) NOT NULL,
  `payer_email` varchar(191) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `status` varchar(191) NOT NULL,
  `payment_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`payment_data`)),
  `payment_type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(191) NOT NULL DEFAULT 'pending',
  `process_in_queue` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(191) NOT NULL,
  `action` varchar(191) NOT NULL,
  `validation_strategy` varchar(191) NOT NULL,
  `allowed_errors` int(11) NOT NULL DEFAULT 0,
  `processed_rows_count` int(11) NOT NULL DEFAULT 0,
  `invalid_rows_count` int(11) NOT NULL DEFAULT 0,
  `errors_count` int(11) NOT NULL DEFAULT 0,
  `errors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`errors`)),
  `field_separator` varchar(191) NOT NULL,
  `file_path` varchar(191) NOT NULL,
  `images_directory_path` varchar(191) DEFAULT NULL,
  `error_file_path` varchar(191) DEFAULT NULL,
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `import_batches`
--

CREATE TABLE `import_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(191) NOT NULL DEFAULT 'pending',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`summary`)),
  `import_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_sources`
--

CREATE TABLE `inventory_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `contact_name` varchar(191) NOT NULL,
  `contact_email` varchar(191) NOT NULL,
  `contact_number` varchar(191) NOT NULL,
  `contact_fax` varchar(191) DEFAULT NULL,
  `country` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `street` varchar(191) NOT NULL,
  `postcode` varchar(191) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `inventory_sources`
--

INSERT INTO `inventory_sources` (`id`, `code`, `name`, `description`, `contact_name`, `contact_email`, `contact_number`, `contact_fax`, `country`, `state`, `city`, `street`, `postcode`, `priority`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Default', NULL, 'Default', 'warehouse@example.com', '1234567899', NULL, 'US', 'MI', 'Detroit', '12th Street', '48127', 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `giftcard_number` varchar(191) DEFAULT NULL,
  `giftcard_amount` decimal(12,4) DEFAULT NULL,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `transaction_id` varchar(191) DEFAULT NULL,
  `reminders` int(11) NOT NULL DEFAULT 0,
  `next_reminder_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `increment_id`, `state`, `email_sent`, `total_qty`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `sub_total`, `base_sub_total`, `grand_total`, `giftcard_number`, `giftcard_amount`, `base_grand_total`, `shipping_amount`, `base_shipping_amount`, `tax_amount`, `base_tax_amount`, `discount_amount`, `base_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `order_id`, `transaction_id`, `reminders`, `next_reminder_at`, `created_at`, `updated_at`) VALUES
(1, '1', 'paid', 1, 1, 'USD', 'USD', 'USD', 14.0000, 14.0000, 14.0000, NULL, NULL, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 0.0000, 0.0000, 1, NULL, 0, NULL, '2025-02-14 04:58:33', '2025-02-14 04:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `parent_id`, `name`, `description`, `sku`, `qty`, `price`, `base_price`, `total`, `base_total`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_item_id`, `invoice_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Arctic Cozy Knit Unisex Beanie', NULL, 'SP-001', 1, 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 14.0000, 14.0000, 1, 'Webkul\\Product\\Models\\Product', 1, 1, '{\"quantity\":1,\"product_id\":1,\"locale\":\"en\"}', '2025-02-14 04:58:33', '2025-02-14 04:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` text NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

CREATE TABLE `locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `direction` enum('ltr','rtl') NOT NULL DEFAULT 'ltr',
  `logo_path` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `locales`
--

INSERT INTO `locales` (`id`, `code`, `name`, `direction`, `logo_path`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'ltr', 'locales/aY4ZEC432XwttJhuDbsgxt30AtdKKlpu05GxDuyg.png', NULL, NULL),
(2, 'jp', 'Japanese', 'ltr', 'locales/jp.png', '2025-02-14 05:15:52', '2025-02-14 05:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `marketing_campaigns`
--

CREATE TABLE `marketing_campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(191) NOT NULL,
  `mail_to` varchar(191) NOT NULL,
  `spooling` varchar(191) DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_template_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_event_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_events`
--

CREATE TABLE `marketing_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `marketing_events`
--

INSERT INTO `marketing_events` (`id`, `name`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Birthday', 'Birthday', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marketing_templates`
--

CREATE TABLE `marketing_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_admin_password_resets_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_06_12_111907_create_admins_table', 1),
(5, '2018_06_13_055341_create_roles_table', 1),
(6, '2018_07_05_130148_create_attributes_table', 1),
(7, '2018_07_05_132854_create_attribute_translations_table', 1),
(8, '2018_07_05_135150_create_attribute_families_table', 1),
(9, '2018_07_05_135152_create_attribute_groups_table', 1),
(10, '2018_07_05_140832_create_attribute_options_table', 1),
(11, '2018_07_05_140856_create_attribute_option_translations_table', 1),
(12, '2018_07_05_142820_create_categories_table', 1),
(13, '2018_07_10_055143_create_locales_table', 1),
(14, '2018_07_20_054426_create_countries_table', 1),
(15, '2018_07_20_054502_create_currencies_table', 1),
(16, '2018_07_20_054542_create_currency_exchange_rates_table', 1),
(17, '2018_07_20_064849_create_channels_table', 1),
(18, '2018_07_21_142836_create_category_translations_table', 1),
(19, '2018_07_23_110040_create_inventory_sources_table', 1),
(20, '2018_07_24_082635_create_customer_groups_table', 1),
(21, '2018_07_24_082930_create_customers_table', 1),
(22, '2018_07_27_065727_create_products_table', 1),
(23, '2018_07_27_070011_create_product_attribute_values_table', 1),
(24, '2018_07_27_092623_create_product_reviews_table', 1),
(25, '2018_07_27_113941_create_product_images_table', 1),
(26, '2018_07_27_113956_create_product_inventories_table', 1),
(27, '2018_08_30_064755_create_tax_categories_table', 1),
(28, '2018_08_30_065042_create_tax_rates_table', 1),
(29, '2018_08_30_065840_create_tax_mappings_table', 1),
(30, '2018_09_05_150444_create_cart_table', 1),
(31, '2018_09_05_150915_create_cart_items_table', 1),
(32, '2018_09_11_064045_customer_password_resets', 1),
(33, '2018_09_19_093453_create_cart_payment', 1),
(34, '2018_09_19_093508_create_cart_shipping_rates_table', 1),
(35, '2018_09_20_060658_create_core_config_table', 1),
(36, '2018_09_27_113154_create_orders_table', 1),
(37, '2018_09_27_113207_create_order_items_table', 1),
(38, '2018_09_27_115022_create_shipments_table', 1),
(39, '2018_09_27_115029_create_shipment_items_table', 1),
(40, '2018_09_27_115135_create_invoices_table', 1),
(41, '2018_09_27_115144_create_invoice_items_table', 1),
(42, '2018_10_01_095504_create_order_payment_table', 1),
(43, '2018_10_03_025230_create_wishlist_table', 1),
(44, '2018_10_12_101803_create_country_translations_table', 1),
(45, '2018_10_12_101913_create_country_states_table', 1),
(46, '2018_10_12_101923_create_country_state_translations_table', 1),
(47, '2018_11_16_173504_create_subscribers_list_table', 1),
(48, '2018_11_21_144411_create_cart_item_inventories_table', 1),
(49, '2018_12_06_185202_create_product_flat_table', 1),
(50, '2018_12_24_123812_create_channel_inventory_sources_table', 1),
(51, '2018_12_26_165327_create_product_ordered_inventories_table', 1),
(52, '2019_05_13_024321_create_cart_rules_table', 1),
(53, '2019_05_13_024322_create_cart_rule_channels_table', 1),
(54, '2019_05_13_024323_create_cart_rule_customer_groups_table', 1),
(55, '2019_05_13_024324_create_cart_rule_translations_table', 1),
(56, '2019_05_13_024325_create_cart_rule_customers_table', 1),
(57, '2019_05_13_024326_create_cart_rule_coupons_table', 1),
(58, '2019_05_13_024327_create_cart_rule_coupon_usage_table', 1),
(59, '2019_06_17_180258_create_product_downloadable_samples_table', 1),
(60, '2019_06_17_180314_create_product_downloadable_sample_translations_table', 1),
(61, '2019_06_17_180325_create_product_downloadable_links_table', 1),
(62, '2019_06_17_180346_create_product_downloadable_link_translations_table', 1),
(63, '2019_06_21_202249_create_downloadable_link_purchased_table', 1),
(64, '2019_07_30_153530_create_cms_pages_table', 1),
(65, '2019_07_31_143339_create_category_filterable_attributes_table', 1),
(66, '2019_08_02_105320_create_product_grouped_products_table', 1),
(67, '2019_08_20_170510_create_product_bundle_options_table', 1),
(68, '2019_08_20_170520_create_product_bundle_option_translations_table', 1),
(69, '2019_08_20_170528_create_product_bundle_option_products_table', 1),
(70, '2019_09_11_184511_create_refunds_table', 1),
(71, '2019_09_11_184519_create_refund_items_table', 1),
(72, '2019_12_03_184613_create_catalog_rules_table', 1),
(73, '2019_12_03_184651_create_catalog_rule_channels_table', 1),
(74, '2019_12_03_184732_create_catalog_rule_customer_groups_table', 1),
(75, '2019_12_06_101110_create_catalog_rule_products_table', 1),
(76, '2019_12_06_110507_create_catalog_rule_product_prices_table', 1),
(77, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(78, '2020_01_14_191854_create_cms_page_translations_table', 1),
(79, '2020_01_15_130209_create_cms_page_channels_table', 1),
(80, '2020_04_16_185147_add_table_addresses', 1),
(81, '2020_05_06_171638_create_order_comments_table', 1),
(82, '2020_05_21_171500_create_product_customer_group_prices_table', 1),
(83, '2020_06_25_162154_create_customer_social_accounts_table', 1),
(84, '2020_11_19_112228_create_product_videos_table', 1),
(85, '2020_11_26_141455_create_marketing_templates_table', 1),
(86, '2020_11_26_150534_create_marketing_events_table', 1),
(87, '2020_11_26_150644_create_marketing_campaigns_table', 1),
(88, '2020_12_21_000200_create_channel_translations_table', 1),
(89, '2020_12_27_121950_create_jobs_table', 1),
(90, '2021_03_11_212124_create_order_transactions_table', 1),
(91, '2021_04_07_132010_create_product_review_images_table', 1),
(92, '2021_12_15_104544_notifications', 1),
(93, '2022_03_15_160510_create_failed_jobs_table', 1),
(94, '2022_04_01_094622_create_sitemaps_table', 1),
(95, '2022_10_03_144232_create_product_price_indices_table', 1),
(96, '2022_10_04_144444_create_job_batches_table', 1),
(97, '2022_10_08_134150_create_product_inventory_indices_table', 1),
(98, '2023_05_26_213105_create_wishlist_items_table', 1),
(99, '2023_05_26_213120_create_compare_items_table', 1),
(100, '2023_06_27_163529_rename_product_review_images_to_product_review_attachments', 1),
(101, '2023_07_06_140013_add_logo_path_column_to_locales', 1),
(102, '2023_07_10_184256_create_theme_customizations_table', 1),
(103, '2023_07_12_181722_remove_home_page_and_footer_content_column_from_channel_translations_table', 1),
(104, '2023_07_20_185324_add_column_column_in_attribute_groups_table', 1),
(105, '2023_07_25_145943_add_regex_column_in_attributes_table', 1),
(106, '2023_07_25_165945_drop_notes_column_from_customers_table', 1),
(107, '2023_07_25_171058_create_customer_notes_table', 1),
(108, '2023_07_31_125232_rename_image_and_category_banner_columns_from_categories_table', 1),
(109, '2023_09_15_170053_create_theme_customization_translations_table', 1),
(110, '2023_09_20_102031_add_default_value_column_in_attributes_table', 1),
(111, '2023_09_20_102635_add_inventories_group_in_attribute_groups_table', 1),
(112, '2023_09_26_155709_add_columns_to_currencies', 1),
(113, '2023_10_05_163612_create_visits_table', 1),
(114, '2023_10_12_090446_add_tax_category_id_column_in_order_items_table', 1),
(115, '2023_11_08_054614_add_code_column_in_attribute_groups_table', 1),
(116, '2023_11_08_140116_create_search_terms_table', 1),
(117, '2023_11_09_162805_create_url_rewrites_table', 1),
(118, '2023_11_17_150401_create_search_synonyms_table', 1),
(119, '2023_12_11_054614_add_channel_id_column_in_product_price_indices_table', 1),
(120, '2024_01_11_154640_create_imports_table', 1),
(121, '2024_01_11_154741_create_import_batches_table', 1),
(122, '2024_01_19_170350_add_unique_id_column_in_product_attribute_values_table', 1),
(123, '2024_01_19_170350_add_unique_id_column_in_product_customer_group_prices_table', 1),
(124, '2024_01_22_170814_add_unique_index_in_mapping_tables', 1),
(125, '2024_02_26_153000_add_columns_to_addresses_table', 1),
(126, '2024_03_07_193421_rename_address1_column_in_addresses_table', 1),
(127, '2024_04_16_144400_add_cart_id_column_in_cart_shipping_rates_table', 1),
(128, '2024_04_19_102939_add_incl_tax_columns_in_orders_table', 1),
(129, '2024_04_19_135405_add_incl_tax_columns_in_cart_items_table', 1),
(130, '2024_04_19_144641_add_incl_tax_columns_in_order_items_table', 1),
(131, '2024_04_23_133154_add_incl_tax_columns_in_cart_table', 1),
(132, '2024_04_23_150945_add_incl_tax_columns_in_cart_shipping_rates_table', 1),
(133, '2024_04_24_102939_add_incl_tax_columns_in_invoices_table', 1),
(134, '2024_04_24_102939_add_incl_tax_columns_in_refunds_table', 1),
(135, '2024_04_24_144641_add_incl_tax_columns_in_invoice_items_table', 1),
(136, '2024_04_24_144641_add_incl_tax_columns_in_refund_items_table', 1),
(137, '2024_04_24_144641_add_incl_tax_columns_in_shipment_items_table', 1),
(138, '2024_05_10_152848_create_saved_filters_table', 1),
(139, '2024_06_03_174128_create_product_channels_table', 1),
(140, '2024_06_04_130527_add_channel_id_column_in_customers_table', 1),
(141, '2024_06_04_134403_add_channel_id_column_in_visits_table', 1),
(142, '2024_06_13_184426_add_theme_column_into_theme_customizations_table', 1),
(143, '2024_08_20_145955_add_details_to_product_flat_table', 2),
(144, '2024_03_22_180505_create_customization_pages_table', 3),
(145, '2024_03_27_151626_create_customization_details_table', 3),
(146, '2024_03_30_144709_create_customization_sections_table', 3),
(147, '2024_04_09_112148_create_customization_settings_table', 3),
(148, '2024_05_16_171007_create_gift_cards_table', 4),
(149, '2024_05_16_171240_create_gift_card_balances_table', 4),
(150, '2024_05_16_171417_create_gift_card_payments_table', 4),
(151, '2024_05_27_102417_add_giftcard_fields_to_cart_table', 4),
(152, '2024_05_28_162854_add_giftcard_fields_to_orders_table', 4),
(153, '2024_05_28_163618_add_giftcard_info_to_invoices_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `read`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'order', 0, 1, '2025-02-14 04:56:35', '2025-02-14 04:56:35'),
(2, 'order', 0, 2, '2025-02-14 04:57:16', '2025-02-14 04:57:16'),
(3, 'order', 0, 3, '2025-02-14 05:02:02', '2025-02-14 05:02:02'),
(4, 'order', 0, 4, '2025-02-14 05:06:53', '2025-02-14 05:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `channel_name` varchar(191) DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `customer_email` varchar(191) DEFAULT NULL,
  `customer_first_name` varchar(191) DEFAULT NULL,
  `customer_last_name` varchar(191) DEFAULT NULL,
  `shipping_method` varchar(191) DEFAULT NULL,
  `shipping_title` varchar(191) DEFAULT NULL,
  `shipping_description` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `giftcard_number` varchar(191) DEFAULT NULL,
  `giftcard_amount` decimal(12,4) DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `total_item_count` int(11) DEFAULT NULL,
  `total_qty_ordered` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_type` varchar(191) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `increment_id`, `status`, `channel_name`, `is_guest`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `shipping_title`, `shipping_description`, `coupon_code`, `giftcard_number`, `giftcard_amount`, `is_gift`, `total_item_count`, `total_qty_ordered`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `grand_total`, `base_grand_total`, `grand_total_invoiced`, `base_grand_total_invoiced`, `grand_total_refunded`, `base_grand_total_refunded`, `sub_total`, `base_sub_total`, `sub_total_invoiced`, `base_sub_total_invoiced`, `sub_total_refunded`, `base_sub_total_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `shipping_amount`, `base_shipping_amount`, `shipping_invoiced`, `base_shipping_invoiced`, `shipping_refunded`, `base_shipping_refunded`, `shipping_discount_amount`, `base_shipping_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `shipping_tax_refunded`, `base_shipping_tax_refunded`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `customer_id`, `customer_type`, `channel_id`, `channel_type`, `cart_id`, `applied_cart_rule_ids`, `created_at`, `updated_at`) VALUES
(1, '1', 'closed', 'Default', 0, 'abhishekthapa115@gmail.com', 'Abhishek', 'Thapa', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, NULL, NULL, 0, 1, 1, 'USD', 'USD', 'USD', 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 1, NULL, '2025-02-14 04:56:32', '2025-02-14 05:06:10'),
(2, '2', 'pending', 'Default', 0, 'abhishekthapa115@gmail.com', 'Abhishek', 'Thapa', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, NULL, NULL, 0, 1, 1, 'USD', 'USD', 'USD', 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 2, NULL, '2025-02-14 04:57:12', '2025-02-14 04:57:12'),
(3, '3', 'processing', 'Default', 0, 'abhishekthapa115@gmail.com', 'Abhishek', 'Thapa', 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, NULL, NULL, 0, 1, 2, 'USD', 'USD', 'USD', 34.0000, 34.0000, 0.0000, 0.0000, 0.0000, 0.0000, 34.0000, 34.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 34.0000, 34.0000, 0.0000, 0.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 3, NULL, '2025-02-14 05:01:58', '2025-03-04 16:41:50'),
(4, '4', 'canceled', 'Default', 0, 'abhishekthapa115@gmail.com', 'Abhishek', 'Thapa', 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, NULL, NULL, 0, 1, 1, 'USD', 'USD', 'USD', 24.0000, 24.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 10.0000, 10.0000, 1, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', 4, NULL, '2025-02-14 05:06:50', '2025-02-14 05:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_comments`
--

CREATE TABLE `order_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT 0.0000,
  `total_weight` decimal(12,4) DEFAULT 0.0000,
  `qty_ordered` int(11) DEFAULT 0,
  `qty_shipped` int(11) DEFAULT 0,
  `qty_invoiced` int(11) DEFAULT 0,
  `qty_canceled` int(11) DEFAULT 0,
  `qty_refunded` int(11) DEFAULT 0,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `qty_ordered`, `qty_shipped`, `qty_invoiced`, `qty_canceled`, `qty_refunded`, `price`, `base_price`, `total`, `base_total`, `total_invoiced`, `base_total_invoiced`, `amount_refunded`, `base_amount_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_id`, `tax_category_id`, `parent_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'SP-001', 'simple', 'Arctic Cozy Knit Unisex Beanie', NULL, 1.2300, 1.2300, 1, 1, 1, 0, 1, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 14.0000, 14.0000, 1, 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, '{\"quantity\":1,\"product_id\":1,\"locale\":\"en\"}', '2025-02-14 04:56:32', '2025-02-14 05:06:10'),
(2, 'SP-001', 'simple', 'Arctic Cozy Knit Unisex Beanie', NULL, 1.2300, 1.2300, 1, 0, 0, 0, 0, 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 14.0000, 14.0000, 1, 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, '{\"quantity\":1,\"product_id\":1,\"locale\":\"en\"}', '2025-02-14 04:57:12', '2025-02-14 04:57:12'),
(3, 'SP-003', 'simple', 'Arctic Touchscreen Winter Gloves', NULL, 1.0000, 2.0000, 2, 2, 0, 0, 0, 17.0000, 17.0000, 34.0000, 34.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 17.0000, 17.0000, 34.0000, 34.0000, 3, 'Webkul\\Product\\Models\\Product', 3, NULL, NULL, '{\"product_id\":\"3\",\"quantity\":2,\"locale\":\"en\"}', '2025-02-14 05:01:58', '2025-03-04 16:41:50'),
(4, 'SP-001', 'simple', 'Arctic Cozy Knit Unisex Beanie', NULL, 1.2300, 1.2300, 1, 0, 0, 1, 0, 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 14.0000, 14.0000, 1, 'Webkul\\Product\\Models\\Product', 4, NULL, NULL, '{\"quantity\":1,\"product_id\":1,\"locale\":\"en\"}', '2025-02-14 05:06:50', '2025-02-14 05:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `method` varchar(191) NOT NULL,
  `method_title` varchar(191) DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`id`, `order_id`, `method`, `method_title`, `additional`, `created_at`, `updated_at`) VALUES
(1, 1, 'cashondelivery', 'Cash On Delivery', NULL, '2025-02-14 04:56:32', '2025-02-14 04:56:32'),
(2, 2, 'moneytransfer', 'Money Transfer', NULL, '2025-02-14 04:57:12', '2025-02-14 04:57:12'),
(3, 3, 'cashondelivery', 'Cash On Delivery', NULL, '2025-02-14 05:01:58', '2025-02-14 05:01:58'),
(4, 4, 'cashondelivery', 'Cash On Delivery', NULL, '2025-02-14 05:06:50', '2025-02-14 05:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `amount` decimal(12,4) DEFAULT 0.0000,
  `payment_method` varchar(191) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `type`, `parent_id`, `attribute_family_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'SP-001', 'simple', NULL, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(2, 'SP-002', 'simple', NULL, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(3, 'SP-003', 'simple', NULL, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(4, 'SP-004', 'simple', NULL, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(5, 'GP-001', 'grouped', NULL, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(6, 'BP-001', 'bundle', NULL, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(7, 'CP-001', 'configurable', NULL, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(8, 'SP-005', 'simple', 7, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(9, 'SP-006', 'simple', 7, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(10, 'SP-007', 'simple', 7, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(11, 'SP-008', 'simple', 7, 1, NULL, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(12, 'SP-012', 'downloadable', NULL, 1, NULL, '2025-02-14 05:11:54', '2025-02-14 05:11:54'),
(13, '1234', 'configurable', NULL, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(14, '1234-variant-1', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(15, '1234-variant-2', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(16, '1234-variant-3', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(17, '1234-variant-4', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(18, '1234-variant-5', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(19, '1234-variant-6', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(20, '1234-variant-7', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(21, '1234-variant-8', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(22, '1234-variant-9', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(23, '1234-variant-10', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(24, '1234-variant-11', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(25, '1234-variant-12', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(26, '1234-variant-13', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(27, '1234-variant-14', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(28, '1234-variant-15', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(29, '1234-variant-17', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(30, '1234-variant-18', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(31, '1234-variant-19', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(32, '1234-variant-21', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(33, '1234-variant-22', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(34, '1234-variant-23', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(35, '1234-variant-24', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(36, '1234-variant-25', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(37, '1234-variant-26', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(38, '1234-variant-27', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(39, '1234-variant-28', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(40, '1234-variant-29', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(41, '1234-variant-30', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(42, '1234-variant-31', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(43, '1234-variant-32', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(44, '1234-variant-33', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(45, '1234-variant-34', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(46, '1234-variant-35', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(47, '1234-variant-36', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(48, '1234-variant-37', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(49, '1234-variant-38', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(50, '1234-variant-39', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(51, '1234-variant-40', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(52, '1234-variant-41', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(53, '1234-variant-42', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(54, '1234-variant-44', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(55, '1234-variant-45', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(56, '1234-variant-46', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(57, '1234-variant-47', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(58, '1234-variant-48', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(59, '1234-variant-49', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(60, '1234-variant-50', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(61, '1234-variant-51', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(62, '1234-variant-52', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(63, '1234-variant-53', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(64, '1234-variant-54', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(65, '1234-variant-55', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(66, '1234-variant-56', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(67, '1234-variant-57', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(68, '1234-variant-58', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(69, '1234-variant-59', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(70, '1234-variant-60', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(71, '1234-variant-61', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(72, '1234-variant-62', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(73, '1234-variant-63', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(74, '1234-variant-64', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(75, '1234-variant-65', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(76, '1234-variant-66', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(77, '1234-variant-67', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(78, '1234-variant-68', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(79, '1234-variant-69', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(80, '1234-variant-70', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(81, '1234-variant-71', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(82, '1234-variant-72', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(83, '1234-variant-73', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(84, '1234-variant-74', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(85, '1234-variant-75', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(86, '1234-variant-76', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(87, '1234-variant-77', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(88, '1234-variant-78', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(89, '1234-variant-79', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(90, '1234-variant-80', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(91, '1234-variant-81', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(92, '1234-variant-82', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(93, '1234-variant-83', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(94, '1234-variant-84', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(95, '1234-variant-85', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(96, '1234-variant-86', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(97, '1234-variant-87', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(98, '1234-variant-88', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(99, '1234-variant-89', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(100, '1234-variant-90', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(101, '1234-variant-91', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(102, '1234-variant-92', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(103, '1234-variant-93', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(104, '1234-variant-94', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(105, '1234-variant-95', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(106, '1234-variant-96', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(107, '1234-variant-97', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(108, '1234-variant-98', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(109, '1234-variant-99', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(110, '1234-variant-100', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(111, '1234-variant-101', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(112, '1234-variant-102', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(113, '1234-variant-103', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(114, '1234-variant-104', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(115, '1234-variant-105', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(116, '1234-variant-106', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(117, '1234-variant-107', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(118, '1234-variant-108', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(119, '1234-variant-109', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(120, '1234-variant-110', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(121, '1234-variant-111', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(122, '1234-variant-112', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(123, '1234-variant-113', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(124, '1234-variant-114', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(125, '1234-variant-115', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(126, '1234-variant-116', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(127, '1234-variant-117', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(128, '1234-variant-118', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(129, '1234-variant-119', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(130, '1234-variant-120', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(131, '1234-variant-121', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(132, '1234-variant-122', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(133, '1234-variant-123', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(134, '1234-variant-124', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(135, '1234-variant-125', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(136, '1234-variant-126', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(137, '1234-variant-127', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(138, '1234-variant-128', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(139, '1234-variant-129', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(140, '1234-variant-130', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(141, '1234-variant-131', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(142, '1234-variant-132', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(143, '1234-variant-133', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(144, '1234-variant-134', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(145, '1234-variant-135', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(146, '1234-variant-136', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(147, '1234-variant-137', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(148, '1234-variant-138', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(149, '1234-variant-139', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(150, '1234-variant-140', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(151, '1234-variant-141', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(152, '1234-variant-142', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(153, '1234-variant-143', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(154, '1234-variant-144', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(155, '1234-variant-145', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(156, '1234-variant-146', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(157, '1234-variant-147', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(158, '1234-variant-148', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(159, '1234-variant-149', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(160, '1234-variant-150', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(161, '1234-variant-151', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(162, '1234-variant-152', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(163, '1234-variant-153', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(164, '1234-variant-154', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(165, '1234-variant-155', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(166, '1234-variant-156', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(167, '1234-variant-157', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(168, '1234-variant-158', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(169, '1234-variant-159', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(170, '1234-variant-160', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(171, '1234-variant-161', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(172, '1234-variant-162', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(173, '1234-variant-163', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(174, '1234-variant-164', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(175, '1234-variant-165', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(176, '1234-variant-166', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(177, '1234-variant-167', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(178, '1234-variant-168', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(179, '1234-variant-169', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(180, '1234-variant-170', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(181, '1234-variant-171', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(182, '1234-variant-172', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(183, '1234-variant-173', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(184, '1234-variant-174', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(185, '1234-variant-175', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(186, '1234-variant-176', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(187, '1234-variant-177', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(188, '1234-variant-178', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(189, '1234-variant-179', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(190, '1234-variant-180', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(191, '1234-variant-181', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(192, '1234-variant-182', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(193, '1234-variant-183', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(194, '1234-variant-184', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(195, '1234-variant-185', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(196, '1234-variant-186', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(197, '1234-variant-187', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(198, '1234-variant-188', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(199, '1234-variant-189', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(200, '1234-variant-190', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(201, '1234-variant-191', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(202, '1234-variant-192', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(203, '1234-variant-193', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(204, '1234-variant-194', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(205, '1234-variant-195', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(206, '1234-variant-196', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(207, '1234-variant-197', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(208, '1234-variant-198', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(209, '1234-variant-199', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(210, '1234-variant-200', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(211, '1234-variant-201', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(212, '1234-variant-202', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(213, '1234-variant-203', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(214, '1234-variant-204', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(215, '1234-variant-205', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(216, '1234-variant-206', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(217, '1234-variant-207', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(218, '1234-variant-208', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(219, '1234-variant-209', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(220, '1234-variant-210', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(221, '1234-variant-211', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(222, '1234-variant-212', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(223, '1234-variant-213', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(224, '1234-variant-214', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(225, '1234-variant-215', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(226, '1234-variant-216', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(227, '1234-variant-217', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(228, '1234-variant-218', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(229, '1234-variant-219', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(230, '1234-variant-220', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(231, '1234-variant-221', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(232, '1234-variant-222', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(233, '1234-variant-223', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(234, '1234-variant-224', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(235, '1234-variant-225', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(236, '1234-variant-226', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(237, '1234-variant-227', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(238, '1234-variant-228', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(239, '1234-variant-229', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(240, '1234-variant-230', 'simple', 13, 1, NULL, '2025-03-04 04:10:30', '2025-03-04 04:10:30'),
(241, '1234-variant-231', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(242, '1234-variant-232', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(243, '1234-variant-233', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(244, '1234-variant-234', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(245, '1234-variant-235', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(246, '1234-variant-236', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(247, '1234-variant-237', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(248, '1234-variant-238', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(249, '1234-variant-239', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(250, '1234-variant-240', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(251, '1234-variant-241', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(252, '1234-variant-242', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(253, '1234-variant-243', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(254, '1234-variant-244', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(255, '1234-variant-245', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(256, '1234-variant-246', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(257, '1234-variant-247', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(258, '1234-variant-248', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(259, '1234-variant-249', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(260, '1234-variant-250', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(261, '1234-variant-251', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(262, '1234-variant-252', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(263, '1234-variant-253', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(264, '1234-variant-254', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31'),
(265, '1234-variant-255', 'simple', 13, 1, NULL, '2025-03-04 04:10:31', '2025-03-04 04:10:31');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `channel` varchar(191) DEFAULT NULL,
  `text_value` text DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(12,4) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_value`)),
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `unique_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_attribute_values`
--

INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(1, NULL, NULL, 'SP-001', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '1|1'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 27, '1|27'),
(3, 'en', NULL, 'Arctic Cozy Knit Unisex Beanie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, 'en|1|2'),
(4, 'en', NULL, 'Embrace the chilly days in style with our Arctic Cozy Knit Beanie. Crafted from a soft and durable blend of acrylic, this classic beanie offers warmth and versatility. Suitable for both men and women, it\'s the ideal accessory for casual or outdoor wear. Elevate your winter wardrobe or gift someone special with this essential beanie cap.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 9, 'en|1|9'),
(5, 'en', NULL, 'The Arctic Cozy Knit Beanie is your go-to solution for staying warm, comfortable, and stylish during the colder months. Crafted from a soft and durable blend of acrylic knit, this beanie is designed to provide a cozy and snug fit. The classic design makes it suitable for both men and women, offering a versatile accessory that complements various styles. Whether you\'re heading out for a casual day in town or embracing the great outdoors, this beanie adds a touch of comfort and warmth to your ensemble. The soft and breathable material ensures that you stay cozy without sacrificing style. The Arctic Cozy Knit Beanie isn\'t just an accessory; it\'s a statement of winter fashion. Its simplicity makes it easy to pair with different outfits, making it a staple in your winter wardrobe. Ideal for gifting or as a treat for yourself, this beanie is a thoughtful addition to any winter ensemble. It\'s a versatile accessory that goes beyond functionality, adding a touch of warmth and style to your look. Embrace the essence of winter with the Arctic Cozy Knit Beanie. Whether you\'re enjoying a casual day out or facing the elements, let this beanie be your companion for comfort and style. Elevate your winter wardrobe with this classic accessory that effortlessly combines warmth with a timeless sense of fashion.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10, 'en|1|10'),
(6, 'en', NULL, 'arctic-cozy-knit-unisex-beanie', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, 'en|1|3'),
(7, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 5, '1|5'),
(8, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 6, '1|6'),
(9, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 8, 'default|1|8'),
(10, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 1, 16, 'en|1|16'),
(11, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 1, 17, 'en|1|17'),
(12, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 1, 18, 'en|1|18'),
(13, NULL, NULL, NULL, NULL, NULL, 14.0000, NULL, NULL, NULL, 1, 11, '1|11'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13, '1|13'),
(15, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'default|1|14'),
(16, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 15, 'default|1|15'),
(17, NULL, NULL, '1.23', NULL, NULL, NULL, NULL, NULL, NULL, 1, 22, '1|22'),
(18, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 7, '1|7'),
(19, NULL, NULL, 'SP-002', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2|1'),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 27, '2|27'),
(21, 'en', NULL, 'Arctic Bliss Stylish Winter Scarf', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 'en|2|2'),
(22, 'en', NULL, 'Experience the embrace of warmth and style with our Arctic Bliss Winter Scarf. Crafted from a luxurious blend of acrylic and wool, this cozy scarf is designed to keep you snug during the coldest days. Its stylish and versatile design, combined with an extra-long length, offers customizable styling options. Elevate your winter wardrobe or delight someone special with this essential winter accessory.', NULL, NULL, NULL, NULL, NULL, NULL, 2, 9, 'en|2|9'),
(23, 'en', NULL, 'The Arctic Bliss Winter Scarf is more than just a cold-weather accessory; it\'s a statement of warmth, comfort, and style for the winter season. Crafted with care from a luxurious blend of acrylic and wool, this scarf is designed to keep you cozy and snug even in the chilliest temperatures. The soft and plush texture not only provides insulation against the cold but also adds a touch of luxury to your winter wardrobe. The design of the Arctic Bliss Winter Scarf is both stylish and versatile, making it a perfect addition to a variety of winter outfits. Whether you\'re dressing up for a special occasion or adding a chic layer to your everyday look, this scarf complements your style effortlessly. The extra-long length of the scarf offers customizable styling options. Wrap it around for added warmth, drape it loosely for a casual look, or experiment with different knots to express your unique style. This versatility makes it a must-have accessory for the winter season. Looking for the perfect gift? The Arctic Bliss Winter Scarf is an ideal choice. Whether you\'re surprising a loved one or treating yourself, this scarf is a timeless and practical gift that will be cherished throughout the winter months. Embrace the winter with the Arctic Bliss Winter Scarf, where warmth meets style in perfect harmony. Elevate your winter wardrobe with this essential accessory that not only keeps you warm but also adds a touch of sophistication to your cold-weather ensemble.', NULL, NULL, NULL, NULL, NULL, NULL, 2, 10, 'en|2|10'),
(24, 'en', NULL, 'arctic-bliss-stylish-winter-scarf', NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 'en|2|3'),
(25, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 5, '2|5'),
(26, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 6, '2|6'),
(27, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 8, 'default|2|8'),
(28, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 2, 16, 'en|2|16'),
(29, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 2, 17, 'en|2|17'),
(30, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 2, 18, 'en|2|18'),
(31, NULL, NULL, NULL, NULL, NULL, 17.0000, NULL, NULL, NULL, 2, 11, '2|11'),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 13, '2|13'),
(33, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 14, 'default|2|14'),
(34, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 15, 'default|2|15'),
(35, NULL, NULL, '1.23', NULL, NULL, NULL, NULL, NULL, NULL, 2, 22, '2|22'),
(36, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 7, '2|7'),
(37, NULL, NULL, 'SP-003', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, '3|1'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 27, '3|27'),
(39, 'en', NULL, 'Arctic Touchscreen Winter Gloves', NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 'en|3|2'),
(40, 'en', NULL, 'Stay connected and warm with our Arctic Touchscreen Winter Gloves. These gloves are not only crafted from high-quality acrylic for warmth and durability but also feature a touchscreen-compatible design. With an insulated lining, elastic cuffs for a secure fit, and a stylish look, these gloves are perfect for daily wear in chilly conditions.', NULL, NULL, NULL, NULL, NULL, NULL, 3, 9, 'en|3|9'),
(41, 'en', NULL, 'Introducing the Arctic Touchscreen Winter Gloves – where warmth, style, and connectivity meet to enhance your winter experience. Crafted from high-quality acrylic, these gloves are designed to provide exceptional warmth and durability. The touchscreen-compatible fingertips allow you to stay connected without exposing your hands to the cold. Answer calls, send messages, and navigate your devices effortlessly, all while keeping your hands snug. The insulated lining adds an extra layer of coziness, making these gloves your go-to choice for facing the winter chill. Whether you\'re commuting, running errands, or enjoying outdoor activities, these gloves provide the warmth and protection you need. Elastic cuffs ensure a secure fit, preventing cold drafts and keeping the gloves in place during your daily activities. The stylish design adds a touch of flair to your winter ensemble, making these gloves as fashionable as they are functional. Ideal for gifting or as a treat for yourself, the Arctic Touchscreen Winter Gloves are a must-have accessory for the modern individual. Say goodbye to the inconvenience of removing your gloves to use your devices and embrace the seamless blend of warmth, style, and connectivity. Stay connected, stay warm, and stay stylish with the Arctic Touchscreen Winter Gloves – your reliable companion for conquering the winter season with confidence.', NULL, NULL, NULL, NULL, NULL, NULL, 3, 10, 'en|3|10'),
(42, 'en', NULL, 'arctic-touchscreen-winter-gloves', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 'en|3|3'),
(43, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 5, '3|5'),
(44, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 6, '3|6'),
(45, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 8, 'default|3|8'),
(46, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 3, 16, 'en|3|16'),
(47, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 3, 17, 'en|3|17'),
(48, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 3, 18, 'en|3|18'),
(49, NULL, NULL, NULL, NULL, NULL, 21.0000, NULL, NULL, NULL, 3, 11, '3|11'),
(50, NULL, NULL, NULL, NULL, NULL, 17.0000, NULL, NULL, NULL, 3, 13, '3|13'),
(51, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2025-02-13', NULL, 3, 14, 'default|3|14'),
(52, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2025-02-14', NULL, 3, 15, 'default|3|15'),
(53, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 3, 22, '3|22'),
(54, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 7, '3|7'),
(55, NULL, NULL, 'SP-004', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, '4|1'),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 27, '4|27'),
(57, 'en', NULL, 'Arctic Warmth Wool Blend Socks', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 'en|4|2'),
(58, 'en', NULL, 'Experience the unmatched warmth and comfort of our Arctic Warmth Wool Blend Socks. Crafted from a blend of Merino wool, acrylic, nylon, and spandex, these socks offer ultimate coziness for cold weather. With a reinforced heel and toe for durability, these versatile and stylish socks are perfect for various occasions.', NULL, NULL, NULL, NULL, NULL, NULL, 4, 9, 'en|4|9'),
(59, 'en', NULL, 'Introducing the Arctic Warmth Wool Blend Socks – your essential companion for cozy and comfortable feet during the colder seasons. Crafted from a premium blend of Merino wool, acrylic, nylon, and spandex, these socks are designed to provide unparalleled warmth and comfort. The wool blend ensures that your feet stay toasty even in the coldest temperatures, making these socks the perfect choice for winter adventures or simply staying snug at home. The soft and cozy texture of the socks offers a luxurious feel against your skin. Say goodbye to chilly feet as you embrace the plush warmth provided by these wool blend socks. Designed for durability, the socks feature a reinforced heel and toe, adding extra strength to high-wear areas. This ensures that your socks withstand the test of time, providing long-lasting comfort and coziness. The breathable nature of the material prevents overheating, allowing your feet to stay comfortable and dry throughout the day. Whether you\'re heading outdoors for a winter hike or relaxing indoors, these socks offer the perfect balance of warmth and breathability. Versatile and stylish, these wool blend socks are suitable for various occasions. Pair them with your favorite boots for a fashionable winter look or wear them around the house for ultimate comfort. Elevate your winter wardrobe and prioritize comfort with the Arctic Warmth Wool Blend Socks. Treat your feet to the luxury they deserve and step into a world of coziness that lasts all season long.', NULL, NULL, NULL, NULL, NULL, NULL, 4, 10, 'en|4|10'),
(60, 'en', NULL, 'arctic-warmth-wool-blend-socks', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 'en|4|3'),
(61, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 5, '4|5'),
(62, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 6, '4|6'),
(63, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 8, 'default|4|8'),
(64, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 4, 16, 'en|4|16'),
(65, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 4, 17, 'en|4|17'),
(66, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 4, 18, 'en|4|18'),
(67, NULL, NULL, NULL, NULL, NULL, 21.0000, NULL, NULL, NULL, 4, 11, '4|11'),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 13, '4|13'),
(69, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 14, 'default|4|14'),
(70, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 15, 'default|4|15'),
(71, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 4, 22, '4|22'),
(72, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 7, '4|7'),
(73, NULL, NULL, 'GP-001', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, '5|1'),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 27, '5|27'),
(75, 'en', NULL, 'Arctic Frost Winter Accessories', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 'en|5|2'),
(76, 'en', NULL, 'Embrace the winter chill with our Arctic Frost Winter Accessories Bundle. This curated set includes a luxurious scarf, a cozy beanie, touchscreen-compatible gloves and wool Blend Socks. Stylish and functional, this ensemble is crafted from high-quality materials, ensuring both durability and comfort. Elevate your winter wardrobe or delight someone special with this perfect gifting option.', NULL, NULL, NULL, NULL, NULL, NULL, 5, 9, 'en|5|9'),
(77, 'en', NULL, 'Introducing the Arctic Frost Winter Accessories Bundle, your go-to solution for staying warm, stylish, and connected during the chilly winter days. This thoughtfully curated set brings together Four essential winter accessories to create a harmonious ensemble. The luxurious scarf, woven from a blend of acrylic and wool, not only adds a layer of warmth but also brings a touch of elegance to your winter wardrobe. The soft knit beanie, crafted with care, promises to keep you cozy while adding a fashionable flair to your look. But it doesn\'t end there – our bundle also includes touchscreen-compatible gloves. Stay connected without sacrificing warmth as you navigate your devices effortlessly. Whether you\'re answering calls, sending messages, or capturing winter moments on your smartphone, these gloves ensure convenience without compromising style. The soft and cozy texture of the socks offers a luxurious feel against your skin. Say goodbye to chilly feet as you embrace the plush warmth provided by these wool blend socks. The Arctic Frost Winter Accessories Bundle is not just about functionality; it\'s a statement of winter fashion. Each piece is designed not only to protect you from the cold but also to elevate your style during the frosty season. The materials chosen for this bundle prioritize both durability and comfort, ensuring that you can enjoy the winter wonderland in style. Whether you\'re treating yourself or searching for the perfect gift, the Arctic Frost Winter Accessories Bundle is a versatile choice. Delight someone special during the holiday season or elevate your own winter wardrobe with this stylish and functional ensemble. Embrace the frost with confidence, knowing that you have the perfect accessories to keep you warm and chic.', NULL, NULL, NULL, NULL, NULL, NULL, 5, 10, 'en|5|10'),
(78, 'en', NULL, 'arctic-frost-winter-accessories', NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, 'en|5|3'),
(79, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 5, 5, '5|5'),
(80, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 5, 6, '5|6'),
(81, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 8, 'default|5|8'),
(82, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 5, 16, 'en|5|16'),
(83, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 5, 17, 'en|5|17'),
(84, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 5, 18, 'en|5|18'),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 11, '5|11'),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 13, '5|13'),
(87, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 14, 'default|5|14'),
(88, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 15, 'default|5|15'),
(89, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 5, 22, '5|22'),
(90, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 7, '5|7'),
(91, NULL, NULL, 'BP-001', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, '6|1'),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 27, '6|27'),
(93, 'en', NULL, 'Arctic Frost Winter Accessories Bundle', NULL, NULL, NULL, NULL, NULL, NULL, 6, 2, 'en|6|2'),
(94, 'en', NULL, 'Embrace the winter chill with our Arctic Frost Winter Accessories Bundle. This curated set includes a luxurious scarf, a cozy beanie, touchscreen-compatible gloves and wool Blend Socks. Stylish and functional, this ensemble is crafted from high-quality materials, ensuring both durability and comfort. Elevate your winter wardrobe or delight someone special with this perfect gifting option.', NULL, NULL, NULL, NULL, NULL, NULL, 6, 9, 'en|6|9'),
(95, 'en', NULL, 'Introducing the Arctic Frost Winter Accessories Bundle, your go-to solution for staying warm, stylish, and connected during the chilly winter days. This thoughtfully curated set brings together Four essential winter accessories to create a harmonious ensemble. The luxurious scarf, woven from a blend of acrylic and wool, not only adds a layer of warmth but also brings a touch of elegance to your winter wardrobe. The soft knit beanie, crafted with care, promises to keep you cozy while adding a fashionable flair to your look. But it doesn\'t end there – our bundle also includes touchscreen-compatible gloves. Stay connected without sacrificing warmth as you navigate your devices effortlessly. Whether you\'re answering calls, sending messages, or capturing winter moments on your smartphone, these gloves ensure convenience without compromising style. The soft and cozy texture of the socks offers a luxurious feel against your skin. Say goodbye to chilly feet as you embrace the plush warmth provided by these wool blend socks. The Arctic Frost Winter Accessories Bundle is not just about functionality; it\'s a statement of winter fashion. Each piece is designed not only to protect you from the cold but also to elevate your style during the frosty season. The materials chosen for this bundle prioritize both durability and comfort, ensuring that you can enjoy the winter wonderland in style. Whether you\'re treating yourself or searching for the perfect gift, the Arctic Frost Winter Accessories Bundle is a versatile choice. Delight someone special during the holiday season or elevate your own winter wardrobe with this stylish and functional ensemble. Embrace the frost with confidence, knowing that you have the perfect accessories to keep you warm and chic.', NULL, NULL, NULL, NULL, NULL, NULL, 6, 10, 'en|6|10'),
(96, 'en', NULL, 'arctic-frost-winter-accessories-bundle', NULL, NULL, NULL, NULL, NULL, NULL, 6, 3, 'en|6|3'),
(97, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 6, 5, '6|5'),
(98, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 6, 6, '6|6'),
(99, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 8, 'default|6|8'),
(100, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 6, 16, 'en|6|16'),
(101, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 6, 17, 'en|6|17'),
(102, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 6, 18, 'en|6|18'),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 11, '6|11'),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 13, '6|13'),
(105, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 14, 'default|6|14'),
(106, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 15, 'default|6|15'),
(107, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 6, 22, '6|22'),
(108, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 7, '6|7'),
(109, NULL, NULL, 'CP-001', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, '7|1'),
(110, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 7, 27, '7|27'),
(111, 'en', NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket', NULL, NULL, NULL, NULL, NULL, NULL, 7, 2, 'en|7|2'),
(112, 'en', NULL, 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', NULL, NULL, NULL, NULL, NULL, NULL, 7, 9, 'en|7|9'),
(113, 'en', NULL, 'Introducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.', NULL, NULL, NULL, NULL, NULL, NULL, 7, 10, 'en|7|10'),
(114, 'en', NULL, 'omniheat-mens-solid-hooded-puffer-jacket', NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, 'en|7|3'),
(115, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 7, 5, '7|5'),
(116, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 7, 6, '7|6'),
(117, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 8, 'default|7|8'),
(118, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 7, 16, 'en|7|16'),
(119, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 7, 17, 'en|7|17'),
(120, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 7, 18, 'en|7|18'),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 11, '7|11'),
(122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 13, '7|13'),
(123, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 14, 'default|7|14'),
(124, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 15, 'default|7|15'),
(125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 22, '7|22'),
(126, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 7, '7|7'),
(127, NULL, NULL, 'SP-005', NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, '8|1'),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 27, '8|27'),
(129, 'en', NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket-Blue-Yellow-M', NULL, NULL, NULL, NULL, NULL, NULL, 8, 2, 'en|8|2'),
(130, 'en', NULL, 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', NULL, NULL, NULL, NULL, NULL, NULL, 8, 9, 'en|8|9'),
(131, 'en', NULL, 'Introducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.', NULL, NULL, NULL, NULL, NULL, NULL, 8, 10, 'en|8|10'),
(132, 'en', NULL, 'omniheat-mens-solid-hooded-puffer-jacket-blue-yellow-m', NULL, NULL, NULL, NULL, NULL, NULL, 8, 3, 'en|8|3'),
(133, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 8, 5, '8|5'),
(134, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 8, 6, '8|6'),
(135, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 8, 'default|8|8'),
(136, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 8, 16, 'en|8|16'),
(137, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 8, 17, 'en|8|17'),
(138, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 8, 18, 'en|8|18'),
(139, NULL, NULL, NULL, NULL, NULL, 14.0000, NULL, NULL, NULL, 8, 11, '8|11'),
(140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 13, '8|13'),
(141, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 14, 'default|8|14'),
(142, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 15, 'default|8|15'),
(143, NULL, NULL, '1.23', NULL, NULL, NULL, NULL, NULL, NULL, 8, 22, '8|22'),
(144, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 7, '8|7'),
(145, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 8, 23, '8|23'),
(146, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 8, 24, '8|24'),
(147, NULL, NULL, 'SP-006', NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, '9|1'),
(148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 27, '9|27'),
(149, 'en', NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket-Blue-Yellow-L', NULL, NULL, NULL, NULL, NULL, NULL, 9, 2, 'en|9|2'),
(150, 'en', NULL, 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', NULL, NULL, NULL, NULL, NULL, NULL, 9, 9, 'en|9|9'),
(151, 'en', NULL, 'DescIntroducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.ription 9', NULL, NULL, NULL, NULL, NULL, NULL, 9, 10, 'en|9|10'),
(152, 'en', NULL, 'omniheat-mens-solid-hooded-puffer-jacket-blue-yellow-l', NULL, NULL, NULL, NULL, NULL, NULL, 9, 3, 'en|9|3'),
(153, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 9, 5, '9|5'),
(154, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 9, 6, '9|6'),
(155, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 8, 'default|9|8'),
(156, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 9, 16, 'en|9|16'),
(157, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 9, 17, 'en|9|17'),
(158, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 9, 18, 'en|9|18'),
(159, NULL, NULL, NULL, NULL, NULL, 17.0000, NULL, NULL, NULL, 9, 11, '9|11'),
(160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 13, '9|13'),
(161, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 14, 'default|9|14'),
(162, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 15, 'default|9|15'),
(163, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 9, 22, '9|22'),
(164, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 7, '9|7'),
(165, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 9, 23, '9|23'),
(166, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 9, 24, '9|24'),
(167, NULL, NULL, 'SP-007', NULL, NULL, NULL, NULL, NULL, NULL, 10, 1, '10|1'),
(168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 27, '10|27'),
(169, 'en', NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket-Blue-Green-M', NULL, NULL, NULL, NULL, NULL, NULL, 10, 2, 'en|10|2'),
(170, 'en', NULL, 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', NULL, NULL, NULL, NULL, NULL, NULL, 10, 9, 'en|10|9'),
(171, 'en', NULL, 'Introducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.', NULL, NULL, NULL, NULL, NULL, NULL, 10, 10, 'en|10|10'),
(172, 'en', NULL, 'omniheat-mens-solid-hooded-puffer-jacket-blue-green-m', NULL, NULL, NULL, NULL, NULL, NULL, 10, 3, 'en|10|3'),
(173, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 10, 5, '10|5'),
(174, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 10, 6, '10|6'),
(175, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 8, 'default|10|8'),
(176, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 10, 16, 'en|10|16'),
(177, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 10, 17, 'en|10|17'),
(178, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 10, 18, 'en|10|18'),
(179, NULL, NULL, NULL, NULL, NULL, 21.0000, NULL, NULL, NULL, 10, 11, '10|11'),
(180, NULL, NULL, NULL, NULL, NULL, 17.0000, NULL, NULL, NULL, 10, 13, '10|13'),
(181, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2025-02-13', NULL, 10, 14, 'default|10|14'),
(182, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2025-02-18', NULL, 10, 15, 'default|10|15'),
(183, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 10, 22, '10|22'),
(184, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 7, '10|7'),
(185, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 10, 23, '10|23'),
(186, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 10, 24, '10|24'),
(187, NULL, NULL, 'SP-008', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1, '11|1'),
(188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 27, '11|27'),
(189, 'en', NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket-Blue-Green-L', NULL, NULL, NULL, NULL, NULL, NULL, 11, 2, 'en|11|2'),
(190, 'en', NULL, 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', NULL, NULL, NULL, NULL, NULL, NULL, 11, 9, 'en|11|9'),
(191, 'en', NULL, 'Introducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.', NULL, NULL, NULL, NULL, NULL, NULL, 11, 10, 'en|11|10'),
(192, 'en', NULL, 'omniheat-mens-solid-hooded-puffer-jacket-blue-green-l', NULL, NULL, NULL, NULL, NULL, NULL, 11, 3, 'en|11|3'),
(193, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 11, 5, '11|5'),
(194, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 11, 6, '11|6'),
(195, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 8, 'default|11|8'),
(196, 'en', NULL, 'Meta Title', NULL, NULL, NULL, NULL, NULL, NULL, 11, 16, 'en|11|16'),
(197, 'en', NULL, 'meta1, meta2, meta3', NULL, NULL, NULL, NULL, NULL, NULL, 11, 17, 'en|11|17'),
(198, 'en', NULL, 'meta description', NULL, NULL, NULL, NULL, NULL, NULL, 11, 18, 'en|11|18'),
(199, NULL, NULL, NULL, NULL, NULL, 21.0000, NULL, NULL, NULL, 11, 11, '11|11'),
(200, NULL, NULL, NULL, NULL, NULL, 17.0000, NULL, NULL, NULL, 11, 13, '11|13'),
(201, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2025-02-13', NULL, 11, 14, 'default|11|14'),
(202, NULL, 'default', NULL, NULL, NULL, NULL, NULL, '2025-02-23', NULL, 11, 15, 'default|11|15'),
(203, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 11, 22, '11|22'),
(204, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 7, '11|7'),
(205, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 11, 23, '11|23'),
(206, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 11, 24, '11|24'),
(207, NULL, NULL, '1234-variant-1', NULL, NULL, NULL, NULL, NULL, NULL, 14, 1, '14|1'),
(208, 'en', NULL, 'Variant 1', NULL, NULL, NULL, NULL, NULL, NULL, 14, 2, 'en|14|2'),
(209, 'en', NULL, '1234-variant-1', NULL, NULL, NULL, NULL, NULL, NULL, 14, 3, 'en|14|3'),
(210, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 14, 4, 'default|14|4'),
(211, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 8, 'default|14|8'),
(212, 'en', NULL, '1234-variant-1', NULL, NULL, NULL, NULL, NULL, NULL, 14, 9, 'en|14|9'),
(213, 'en', NULL, '1234-variant-1', NULL, NULL, NULL, NULL, NULL, NULL, 14, 10, 'en|14|10'),
(214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 11, '14|11'),
(215, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 14, 22, '14|22'),
(216, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, 33, '14|33'),
(217, NULL, NULL, '1234-variant-2', NULL, NULL, NULL, NULL, NULL, NULL, 15, 1, '15|1'),
(218, 'en', NULL, 'Variant 2', NULL, NULL, NULL, NULL, NULL, NULL, 15, 2, 'en|15|2'),
(219, 'en', NULL, '1234-variant-2', NULL, NULL, NULL, NULL, NULL, NULL, 15, 3, 'en|15|3'),
(220, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 4, 'default|15|4'),
(221, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 8, 'default|15|8'),
(222, 'en', NULL, '1234-variant-2', NULL, NULL, NULL, NULL, NULL, NULL, 15, 9, 'en|15|9'),
(223, 'en', NULL, '1234-variant-2', NULL, NULL, NULL, NULL, NULL, NULL, 15, 10, 'en|15|10'),
(224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 11, '15|11'),
(225, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 15, 22, '15|22'),
(226, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 15, 33, '15|33'),
(227, NULL, NULL, '1234-variant-3', NULL, NULL, NULL, NULL, NULL, NULL, 16, 1, '16|1'),
(228, 'en', NULL, 'Variant 3', NULL, NULL, NULL, NULL, NULL, NULL, 16, 2, 'en|16|2'),
(229, 'en', NULL, '1234-variant-3', NULL, NULL, NULL, NULL, NULL, NULL, 16, 3, 'en|16|3'),
(230, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 4, 'default|16|4'),
(231, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 16, 8, 'default|16|8'),
(232, 'en', NULL, '1234-variant-3', NULL, NULL, NULL, NULL, NULL, NULL, 16, 9, 'en|16|9'),
(233, 'en', NULL, '1234-variant-3', NULL, NULL, NULL, NULL, NULL, NULL, 16, 10, 'en|16|10'),
(234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 11, '16|11'),
(235, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 16, 22, '16|22'),
(236, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 16, 33, '16|33'),
(237, NULL, NULL, '1234-variant-4', NULL, NULL, NULL, NULL, NULL, NULL, 17, 1, '17|1'),
(238, 'en', NULL, 'Variant 4', NULL, NULL, NULL, NULL, NULL, NULL, 17, 2, 'en|17|2'),
(239, 'en', NULL, '1234-variant-4', NULL, NULL, NULL, NULL, NULL, NULL, 17, 3, 'en|17|3'),
(240, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, 4, 'default|17|4'),
(241, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 8, 'default|17|8'),
(242, 'en', NULL, '1234-variant-4', NULL, NULL, NULL, NULL, NULL, NULL, 17, 9, 'en|17|9'),
(243, 'en', NULL, '1234-variant-4', NULL, NULL, NULL, NULL, NULL, NULL, 17, 10, 'en|17|10'),
(244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 11, '17|11'),
(245, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 17, 22, '17|22'),
(246, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 17, 33, '17|33'),
(247, NULL, NULL, '1234-variant-5', NULL, NULL, NULL, NULL, NULL, NULL, 18, 1, '18|1'),
(248, 'en', NULL, 'Variant 5', NULL, NULL, NULL, NULL, NULL, NULL, 18, 2, 'en|18|2'),
(249, 'en', NULL, '1234-variant-5', NULL, NULL, NULL, NULL, NULL, NULL, 18, 3, 'en|18|3'),
(250, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 18, 4, 'default|18|4'),
(251, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 8, 'default|18|8'),
(252, 'en', NULL, '1234-variant-5', NULL, NULL, NULL, NULL, NULL, NULL, 18, 9, 'en|18|9'),
(253, 'en', NULL, '1234-variant-5', NULL, NULL, NULL, NULL, NULL, NULL, 18, 10, 'en|18|10'),
(254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 11, '18|11'),
(255, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 18, 22, '18|22'),
(256, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, 18, 33, '18|33'),
(257, NULL, NULL, '1234-variant-6', NULL, NULL, NULL, NULL, NULL, NULL, 19, 1, '19|1'),
(258, 'en', NULL, 'Variant 6', NULL, NULL, NULL, NULL, NULL, NULL, 19, 2, 'en|19|2'),
(259, 'en', NULL, '1234-variant-6', NULL, NULL, NULL, NULL, NULL, NULL, 19, 3, 'en|19|3'),
(260, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 19, 4, 'default|19|4'),
(261, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 19, 8, 'default|19|8'),
(262, 'en', NULL, '1234-variant-6', NULL, NULL, NULL, NULL, NULL, NULL, 19, 9, 'en|19|9'),
(263, 'en', NULL, '1234-variant-6', NULL, NULL, NULL, NULL, NULL, NULL, 19, 10, 'en|19|10'),
(264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 11, '19|11'),
(265, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 19, 22, '19|22'),
(266, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 19, 33, '19|33'),
(267, NULL, NULL, '1234-variant-7', NULL, NULL, NULL, NULL, NULL, NULL, 20, 1, '20|1'),
(268, 'en', NULL, 'Variant 7', NULL, NULL, NULL, NULL, NULL, NULL, 20, 2, 'en|20|2'),
(269, 'en', NULL, '1234-variant-7', NULL, NULL, NULL, NULL, NULL, NULL, 20, 3, 'en|20|3'),
(270, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, 4, 'default|20|4'),
(271, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 8, 'default|20|8'),
(272, 'en', NULL, '1234-variant-7', NULL, NULL, NULL, NULL, NULL, NULL, 20, 9, 'en|20|9'),
(273, 'en', NULL, '1234-variant-7', NULL, NULL, NULL, NULL, NULL, NULL, 20, 10, 'en|20|10'),
(274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 11, '20|11'),
(275, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 20, 22, '20|22'),
(276, NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 20, 33, '20|33'),
(277, NULL, NULL, '1234-variant-8', NULL, NULL, NULL, NULL, NULL, NULL, 21, 1, '21|1'),
(278, 'en', NULL, 'Variant 8', NULL, NULL, NULL, NULL, NULL, NULL, 21, 2, 'en|21|2'),
(279, 'en', NULL, '1234-variant-8', NULL, NULL, NULL, NULL, NULL, NULL, 21, 3, 'en|21|3'),
(280, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, 4, 'default|21|4'),
(281, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 8, 'default|21|8'),
(282, 'en', NULL, '1234-variant-8', NULL, NULL, NULL, NULL, NULL, NULL, 21, 9, 'en|21|9'),
(283, 'en', NULL, '1234-variant-8', NULL, NULL, NULL, NULL, NULL, NULL, 21, 10, 'en|21|10'),
(284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 11, '21|11'),
(285, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 21, 22, '21|22'),
(286, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 21, 33, '21|33'),
(287, NULL, NULL, '1234-variant-9', NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, '22|1'),
(288, 'en', NULL, 'Variant 9', NULL, NULL, NULL, NULL, NULL, NULL, 22, 2, 'en|22|2'),
(289, 'en', NULL, '1234-variant-9', NULL, NULL, NULL, NULL, NULL, NULL, 22, 3, 'en|22|3'),
(290, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, 4, 'default|22|4'),
(291, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 22, 8, 'default|22|8'),
(292, 'en', NULL, '1234-variant-9', NULL, NULL, NULL, NULL, NULL, NULL, 22, 9, 'en|22|9'),
(293, 'en', NULL, '1234-variant-9', NULL, NULL, NULL, NULL, NULL, NULL, 22, 10, 'en|22|10'),
(294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 11, '22|11'),
(295, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 22, 22, '22|22'),
(296, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 22, 33, '22|33'),
(297, NULL, NULL, '1234-variant-10', NULL, NULL, NULL, NULL, NULL, NULL, 23, 1, '23|1'),
(298, 'en', NULL, 'Variant 10', NULL, NULL, NULL, NULL, NULL, NULL, 23, 2, 'en|23|2'),
(299, 'en', NULL, '1234-variant-10', NULL, NULL, NULL, NULL, NULL, NULL, 23, 3, 'en|23|3'),
(300, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, 4, 'default|23|4'),
(301, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 23, 8, 'default|23|8'),
(302, 'en', NULL, '1234-variant-10', NULL, NULL, NULL, NULL, NULL, NULL, 23, 9, 'en|23|9'),
(303, 'en', NULL, '1234-variant-10', NULL, NULL, NULL, NULL, NULL, NULL, 23, 10, 'en|23|10'),
(304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 11, '23|11'),
(305, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 23, 22, '23|22'),
(306, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 23, 33, '23|33'),
(307, NULL, NULL, '1234-variant-11', NULL, NULL, NULL, NULL, NULL, NULL, 24, 1, '24|1'),
(308, 'en', NULL, 'Variant 11', NULL, NULL, NULL, NULL, NULL, NULL, 24, 2, 'en|24|2'),
(309, 'en', NULL, '1234-variant-11', NULL, NULL, NULL, NULL, NULL, NULL, 24, 3, 'en|24|3'),
(310, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 24, 4, 'default|24|4'),
(311, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 8, 'default|24|8'),
(312, 'en', NULL, '1234-variant-11', NULL, NULL, NULL, NULL, NULL, NULL, 24, 9, 'en|24|9'),
(313, 'en', NULL, '1234-variant-11', NULL, NULL, NULL, NULL, NULL, NULL, 24, 10, 'en|24|10'),
(314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 11, '24|11'),
(315, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 24, 22, '24|22'),
(316, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 24, 33, '24|33'),
(317, NULL, NULL, '1234-variant-12', NULL, NULL, NULL, NULL, NULL, NULL, 25, 1, '25|1'),
(318, 'en', NULL, 'Variant 12', NULL, NULL, NULL, NULL, NULL, NULL, 25, 2, 'en|25|2'),
(319, 'en', NULL, '1234-variant-12', NULL, NULL, NULL, NULL, NULL, NULL, 25, 3, 'en|25|3'),
(320, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 25, 4, 'default|25|4'),
(321, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 8, 'default|25|8'),
(322, 'en', NULL, '1234-variant-12', NULL, NULL, NULL, NULL, NULL, NULL, 25, 9, 'en|25|9'),
(323, 'en', NULL, '1234-variant-12', NULL, NULL, NULL, NULL, NULL, NULL, 25, 10, 'en|25|10'),
(324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 11, '25|11'),
(325, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 25, 22, '25|22'),
(326, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 25, 33, '25|33'),
(327, NULL, NULL, '1234-variant-13', NULL, NULL, NULL, NULL, NULL, NULL, 26, 1, '26|1'),
(328, 'en', NULL, 'Variant 13', NULL, NULL, NULL, NULL, NULL, NULL, 26, 2, 'en|26|2'),
(329, 'en', NULL, '1234-variant-13', NULL, NULL, NULL, NULL, NULL, NULL, 26, 3, 'en|26|3'),
(330, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, 4, 'default|26|4'),
(331, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 8, 'default|26|8'),
(332, 'en', NULL, '1234-variant-13', NULL, NULL, NULL, NULL, NULL, NULL, 26, 9, 'en|26|9'),
(333, 'en', NULL, '1234-variant-13', NULL, NULL, NULL, NULL, NULL, NULL, 26, 10, 'en|26|10'),
(334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 11, '26|11'),
(335, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 26, 22, '26|22'),
(336, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 26, 33, '26|33'),
(337, NULL, NULL, '1234-variant-14', NULL, NULL, NULL, NULL, NULL, NULL, 27, 1, '27|1'),
(338, 'en', NULL, 'Variant 14', NULL, NULL, NULL, NULL, NULL, NULL, 27, 2, 'en|27|2'),
(339, 'en', NULL, '1234-variant-14', NULL, NULL, NULL, NULL, NULL, NULL, 27, 3, 'en|27|3'),
(340, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 27, 4, 'default|27|4'),
(341, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 8, 'default|27|8'),
(342, 'en', NULL, '1234-variant-14', NULL, NULL, NULL, NULL, NULL, NULL, 27, 9, 'en|27|9'),
(343, 'en', NULL, '1234-variant-14', NULL, NULL, NULL, NULL, NULL, NULL, 27, 10, 'en|27|10'),
(344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 11, '27|11'),
(345, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 27, 22, '27|22'),
(346, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 27, 33, '27|33'),
(347, NULL, NULL, '1234-variant-15', NULL, NULL, NULL, NULL, NULL, NULL, 28, 1, '28|1'),
(348, 'en', NULL, 'Variant 15', NULL, NULL, NULL, NULL, NULL, NULL, 28, 2, 'en|28|2'),
(349, 'en', NULL, '1234-variant-15', NULL, NULL, NULL, NULL, NULL, NULL, 28, 3, 'en|28|3'),
(350, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 28, 4, 'default|28|4'),
(351, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 8, 'default|28|8'),
(352, 'en', NULL, '1234-variant-15', NULL, NULL, NULL, NULL, NULL, NULL, 28, 9, 'en|28|9'),
(353, 'en', NULL, '1234-variant-15', NULL, NULL, NULL, NULL, NULL, NULL, 28, 10, 'en|28|10'),
(354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 11, '28|11'),
(355, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 28, 22, '28|22'),
(356, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 28, 33, '28|33'),
(357, NULL, NULL, '1234-variant-17', NULL, NULL, NULL, NULL, NULL, NULL, 29, 1, '29|1'),
(358, 'en', NULL, 'Variant 17', NULL, NULL, NULL, NULL, NULL, NULL, 29, 2, 'en|29|2'),
(359, 'en', NULL, '1234-variant-17', NULL, NULL, NULL, NULL, NULL, NULL, 29, 3, 'en|29|3'),
(360, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 29, 4, 'default|29|4'),
(361, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 29, 8, 'default|29|8'),
(362, 'en', NULL, '1234-variant-17', NULL, NULL, NULL, NULL, NULL, NULL, 29, 9, 'en|29|9');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(363, 'en', NULL, '1234-variant-17', NULL, NULL, NULL, NULL, NULL, NULL, 29, 10, 'en|29|10'),
(364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 11, '29|11'),
(365, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 29, 22, '29|22'),
(366, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 29, 33, '29|33'),
(367, NULL, NULL, '1234-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 30, 1, '30|1'),
(368, 'en', NULL, 'Variant 18', NULL, NULL, NULL, NULL, NULL, NULL, 30, 2, 'en|30|2'),
(369, 'en', NULL, '1234-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 30, 3, 'en|30|3'),
(370, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 30, 4, 'default|30|4'),
(371, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 8, 'default|30|8'),
(372, 'en', NULL, '1234-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 30, 9, 'en|30|9'),
(373, 'en', NULL, '1234-variant-18', NULL, NULL, NULL, NULL, NULL, NULL, 30, 10, 'en|30|10'),
(374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 11, '30|11'),
(375, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 30, 22, '30|22'),
(376, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 30, 33, '30|33'),
(377, NULL, NULL, '1234-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 31, 1, '31|1'),
(378, 'en', NULL, 'Variant 19', NULL, NULL, NULL, NULL, NULL, NULL, 31, 2, 'en|31|2'),
(379, 'en', NULL, '1234-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 31, 3, 'en|31|3'),
(380, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 31, 4, 'default|31|4'),
(381, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 8, 'default|31|8'),
(382, 'en', NULL, '1234-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 31, 9, 'en|31|9'),
(383, 'en', NULL, '1234-variant-19', NULL, NULL, NULL, NULL, NULL, NULL, 31, 10, 'en|31|10'),
(384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 11, '31|11'),
(385, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 31, 22, '31|22'),
(386, NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 31, 33, '31|33'),
(387, NULL, NULL, '1234-variant-21', NULL, NULL, NULL, NULL, NULL, NULL, 32, 1, '32|1'),
(388, 'en', NULL, 'Variant 21', NULL, NULL, NULL, NULL, NULL, NULL, 32, 2, 'en|32|2'),
(389, 'en', NULL, '1234-variant-21', NULL, NULL, NULL, NULL, NULL, NULL, 32, 3, 'en|32|3'),
(390, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 32, 4, 'default|32|4'),
(391, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 8, 'default|32|8'),
(392, 'en', NULL, '1234-variant-21', NULL, NULL, NULL, NULL, NULL, NULL, 32, 9, 'en|32|9'),
(393, 'en', NULL, '1234-variant-21', NULL, NULL, NULL, NULL, NULL, NULL, 32, 10, 'en|32|10'),
(394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 11, '32|11'),
(395, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 32, 22, '32|22'),
(396, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 32, 33, '32|33'),
(397, NULL, NULL, '1234-variant-22', NULL, NULL, NULL, NULL, NULL, NULL, 33, 1, '33|1'),
(398, 'en', NULL, 'Variant 22', NULL, NULL, NULL, NULL, NULL, NULL, 33, 2, 'en|33|2'),
(399, 'en', NULL, '1234-variant-22', NULL, NULL, NULL, NULL, NULL, NULL, 33, 3, 'en|33|3'),
(400, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 33, 4, 'default|33|4'),
(401, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 8, 'default|33|8'),
(402, 'en', NULL, '1234-variant-22', NULL, NULL, NULL, NULL, NULL, NULL, 33, 9, 'en|33|9'),
(403, 'en', NULL, '1234-variant-22', NULL, NULL, NULL, NULL, NULL, NULL, 33, 10, 'en|33|10'),
(404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 11, '33|11'),
(405, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 33, 22, '33|22'),
(406, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 33, 33, '33|33'),
(407, NULL, NULL, '1234-variant-23', NULL, NULL, NULL, NULL, NULL, NULL, 34, 1, '34|1'),
(408, 'en', NULL, 'Variant 23', NULL, NULL, NULL, NULL, NULL, NULL, 34, 2, 'en|34|2'),
(409, 'en', NULL, '1234-variant-23', NULL, NULL, NULL, NULL, NULL, NULL, 34, 3, 'en|34|3'),
(410, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 34, 4, 'default|34|4'),
(411, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 8, 'default|34|8'),
(412, 'en', NULL, '1234-variant-23', NULL, NULL, NULL, NULL, NULL, NULL, 34, 9, 'en|34|9'),
(413, 'en', NULL, '1234-variant-23', NULL, NULL, NULL, NULL, NULL, NULL, 34, 10, 'en|34|10'),
(414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 11, '34|11'),
(415, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 34, 22, '34|22'),
(416, NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 34, 33, '34|33'),
(417, NULL, NULL, '1234-variant-24', NULL, NULL, NULL, NULL, NULL, NULL, 35, 1, '35|1'),
(418, 'en', NULL, 'Variant 24', NULL, NULL, NULL, NULL, NULL, NULL, 35, 2, 'en|35|2'),
(419, 'en', NULL, '1234-variant-24', NULL, NULL, NULL, NULL, NULL, NULL, 35, 3, 'en|35|3'),
(420, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 35, 4, 'default|35|4'),
(421, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 8, 'default|35|8'),
(422, 'en', NULL, '1234-variant-24', NULL, NULL, NULL, NULL, NULL, NULL, 35, 9, 'en|35|9'),
(423, 'en', NULL, '1234-variant-24', NULL, NULL, NULL, NULL, NULL, NULL, 35, 10, 'en|35|10'),
(424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 11, '35|11'),
(425, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 35, 22, '35|22'),
(426, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 35, 33, '35|33'),
(427, NULL, NULL, '1234-variant-25', NULL, NULL, NULL, NULL, NULL, NULL, 36, 1, '36|1'),
(428, 'en', NULL, 'Variant 25', NULL, NULL, NULL, NULL, NULL, NULL, 36, 2, 'en|36|2'),
(429, 'en', NULL, '1234-variant-25', NULL, NULL, NULL, NULL, NULL, NULL, 36, 3, 'en|36|3'),
(430, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 36, 4, 'default|36|4'),
(431, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 8, 'default|36|8'),
(432, 'en', NULL, '1234-variant-25', NULL, NULL, NULL, NULL, NULL, NULL, 36, 9, 'en|36|9'),
(433, 'en', NULL, '1234-variant-25', NULL, NULL, NULL, NULL, NULL, NULL, 36, 10, 'en|36|10'),
(434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 11, '36|11'),
(435, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 36, 22, '36|22'),
(436, NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 36, 33, '36|33'),
(437, NULL, NULL, '1234-variant-26', NULL, NULL, NULL, NULL, NULL, NULL, 37, 1, '37|1'),
(438, 'en', NULL, 'Variant 26', NULL, NULL, NULL, NULL, NULL, NULL, 37, 2, 'en|37|2'),
(439, 'en', NULL, '1234-variant-26', NULL, NULL, NULL, NULL, NULL, NULL, 37, 3, 'en|37|3'),
(440, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 37, 4, 'default|37|4'),
(441, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 8, 'default|37|8'),
(442, 'en', NULL, '1234-variant-26', NULL, NULL, NULL, NULL, NULL, NULL, 37, 9, 'en|37|9'),
(443, 'en', NULL, '1234-variant-26', NULL, NULL, NULL, NULL, NULL, NULL, 37, 10, 'en|37|10'),
(444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 11, '37|11'),
(445, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 37, 22, '37|22'),
(446, NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 37, 33, '37|33'),
(447, NULL, NULL, '1234-variant-27', NULL, NULL, NULL, NULL, NULL, NULL, 38, 1, '38|1'),
(448, 'en', NULL, 'Variant 27', NULL, NULL, NULL, NULL, NULL, NULL, 38, 2, 'en|38|2'),
(449, 'en', NULL, '1234-variant-27', NULL, NULL, NULL, NULL, NULL, NULL, 38, 3, 'en|38|3'),
(450, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 38, 4, 'default|38|4'),
(451, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 8, 'default|38|8'),
(452, 'en', NULL, '1234-variant-27', NULL, NULL, NULL, NULL, NULL, NULL, 38, 9, 'en|38|9'),
(453, 'en', NULL, '1234-variant-27', NULL, NULL, NULL, NULL, NULL, NULL, 38, 10, 'en|38|10'),
(454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 11, '38|11'),
(455, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 38, 22, '38|22'),
(456, NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 38, 33, '38|33'),
(457, NULL, NULL, '1234-variant-28', NULL, NULL, NULL, NULL, NULL, NULL, 39, 1, '39|1'),
(458, 'en', NULL, 'Variant 28', NULL, NULL, NULL, NULL, NULL, NULL, 39, 2, 'en|39|2'),
(459, 'en', NULL, '1234-variant-28', NULL, NULL, NULL, NULL, NULL, NULL, 39, 3, 'en|39|3'),
(460, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 39, 4, 'default|39|4'),
(461, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 8, 'default|39|8'),
(462, 'en', NULL, '1234-variant-28', NULL, NULL, NULL, NULL, NULL, NULL, 39, 9, 'en|39|9'),
(463, 'en', NULL, '1234-variant-28', NULL, NULL, NULL, NULL, NULL, NULL, 39, 10, 'en|39|10'),
(464, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 11, '39|11'),
(465, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 39, 22, '39|22'),
(466, NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 39, 33, '39|33'),
(467, NULL, NULL, '1234-variant-29', NULL, NULL, NULL, NULL, NULL, NULL, 40, 1, '40|1'),
(468, 'en', NULL, 'Variant 29', NULL, NULL, NULL, NULL, NULL, NULL, 40, 2, 'en|40|2'),
(469, 'en', NULL, '1234-variant-29', NULL, NULL, NULL, NULL, NULL, NULL, 40, 3, 'en|40|3'),
(470, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 40, 4, 'default|40|4'),
(471, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 8, 'default|40|8'),
(472, 'en', NULL, '1234-variant-29', NULL, NULL, NULL, NULL, NULL, NULL, 40, 9, 'en|40|9'),
(473, 'en', NULL, '1234-variant-29', NULL, NULL, NULL, NULL, NULL, NULL, 40, 10, 'en|40|10'),
(474, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 11, '40|11'),
(475, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 40, 22, '40|22'),
(476, NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, 40, 33, '40|33'),
(477, NULL, NULL, '1234-variant-30', NULL, NULL, NULL, NULL, NULL, NULL, 41, 1, '41|1'),
(478, 'en', NULL, 'Variant 30', NULL, NULL, NULL, NULL, NULL, NULL, 41, 2, 'en|41|2'),
(479, 'en', NULL, '1234-variant-30', NULL, NULL, NULL, NULL, NULL, NULL, 41, 3, 'en|41|3'),
(480, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 41, 4, 'default|41|4'),
(481, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 8, 'default|41|8'),
(482, 'en', NULL, '1234-variant-30', NULL, NULL, NULL, NULL, NULL, NULL, 41, 9, 'en|41|9'),
(483, 'en', NULL, '1234-variant-30', NULL, NULL, NULL, NULL, NULL, NULL, 41, 10, 'en|41|10'),
(484, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 11, '41|11'),
(485, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 41, 22, '41|22'),
(486, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 41, 33, '41|33'),
(487, NULL, NULL, '1234-variant-31', NULL, NULL, NULL, NULL, NULL, NULL, 42, 1, '42|1'),
(488, 'en', NULL, 'Variant 31', NULL, NULL, NULL, NULL, NULL, NULL, 42, 2, 'en|42|2'),
(489, 'en', NULL, '1234-variant-31', NULL, NULL, NULL, NULL, NULL, NULL, 42, 3, 'en|42|3'),
(490, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 42, 4, 'default|42|4'),
(491, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 8, 'default|42|8'),
(492, 'en', NULL, '1234-variant-31', NULL, NULL, NULL, NULL, NULL, NULL, 42, 9, 'en|42|9'),
(493, 'en', NULL, '1234-variant-31', NULL, NULL, NULL, NULL, NULL, NULL, 42, 10, 'en|42|10'),
(494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 11, '42|11'),
(495, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 42, 22, '42|22'),
(496, NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 42, 33, '42|33'),
(497, NULL, NULL, '1234-variant-32', NULL, NULL, NULL, NULL, NULL, NULL, 43, 1, '43|1'),
(498, 'en', NULL, 'Variant 32', NULL, NULL, NULL, NULL, NULL, NULL, 43, 2, 'en|43|2'),
(499, 'en', NULL, '1234-variant-32', NULL, NULL, NULL, NULL, NULL, NULL, 43, 3, 'en|43|3'),
(500, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 43, 4, 'default|43|4'),
(501, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 8, 'default|43|8'),
(502, 'en', NULL, '1234-variant-32', NULL, NULL, NULL, NULL, NULL, NULL, 43, 9, 'en|43|9'),
(503, 'en', NULL, '1234-variant-32', NULL, NULL, NULL, NULL, NULL, NULL, 43, 10, 'en|43|10'),
(504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 11, '43|11'),
(505, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 43, 22, '43|22'),
(506, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 43, 33, '43|33'),
(507, NULL, NULL, '1234-variant-33', NULL, NULL, NULL, NULL, NULL, NULL, 44, 1, '44|1'),
(508, 'en', NULL, 'Variant 33', NULL, NULL, NULL, NULL, NULL, NULL, 44, 2, 'en|44|2'),
(509, 'en', NULL, '1234-variant-33', NULL, NULL, NULL, NULL, NULL, NULL, 44, 3, 'en|44|3'),
(510, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 44, 4, 'default|44|4'),
(511, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 8, 'default|44|8'),
(512, 'en', NULL, '1234-variant-33', NULL, NULL, NULL, NULL, NULL, NULL, 44, 9, 'en|44|9'),
(513, 'en', NULL, '1234-variant-33', NULL, NULL, NULL, NULL, NULL, NULL, 44, 10, 'en|44|10'),
(514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 11, '44|11'),
(515, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 44, 22, '44|22'),
(516, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, 44, 33, '44|33'),
(517, NULL, NULL, '1234-variant-34', NULL, NULL, NULL, NULL, NULL, NULL, 45, 1, '45|1'),
(518, 'en', NULL, 'Variant 34', NULL, NULL, NULL, NULL, NULL, NULL, 45, 2, 'en|45|2'),
(519, 'en', NULL, '1234-variant-34', NULL, NULL, NULL, NULL, NULL, NULL, 45, 3, 'en|45|3'),
(520, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 45, 4, 'default|45|4'),
(521, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 8, 'default|45|8'),
(522, 'en', NULL, '1234-variant-34', NULL, NULL, NULL, NULL, NULL, NULL, 45, 9, 'en|45|9'),
(523, 'en', NULL, '1234-variant-34', NULL, NULL, NULL, NULL, NULL, NULL, 45, 10, 'en|45|10'),
(524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 11, '45|11'),
(525, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 45, 22, '45|22'),
(526, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 45, 33, '45|33'),
(527, NULL, NULL, '1234-variant-35', NULL, NULL, NULL, NULL, NULL, NULL, 46, 1, '46|1'),
(528, 'en', NULL, 'Variant 35', NULL, NULL, NULL, NULL, NULL, NULL, 46, 2, 'en|46|2'),
(529, 'en', NULL, '1234-variant-35', NULL, NULL, NULL, NULL, NULL, NULL, 46, 3, 'en|46|3'),
(530, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 46, 4, 'default|46|4'),
(531, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 46, 8, 'default|46|8'),
(532, 'en', NULL, '1234-variant-35', NULL, NULL, NULL, NULL, NULL, NULL, 46, 9, 'en|46|9'),
(533, 'en', NULL, '1234-variant-35', NULL, NULL, NULL, NULL, NULL, NULL, 46, 10, 'en|46|10'),
(534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 11, '46|11'),
(535, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 46, 22, '46|22'),
(536, NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, 46, 33, '46|33'),
(537, NULL, NULL, '1234-variant-36', NULL, NULL, NULL, NULL, NULL, NULL, 47, 1, '47|1'),
(538, 'en', NULL, 'Variant 36', NULL, NULL, NULL, NULL, NULL, NULL, 47, 2, 'en|47|2'),
(539, 'en', NULL, '1234-variant-36', NULL, NULL, NULL, NULL, NULL, NULL, 47, 3, 'en|47|3'),
(540, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 47, 4, 'default|47|4'),
(541, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 47, 8, 'default|47|8'),
(542, 'en', NULL, '1234-variant-36', NULL, NULL, NULL, NULL, NULL, NULL, 47, 9, 'en|47|9'),
(543, 'en', NULL, '1234-variant-36', NULL, NULL, NULL, NULL, NULL, NULL, 47, 10, 'en|47|10'),
(544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, 11, '47|11'),
(545, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 47, 22, '47|22'),
(546, NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, 47, 33, '47|33'),
(547, NULL, NULL, '1234-variant-37', NULL, NULL, NULL, NULL, NULL, NULL, 48, 1, '48|1'),
(548, 'en', NULL, 'Variant 37', NULL, NULL, NULL, NULL, NULL, NULL, 48, 2, 'en|48|2'),
(549, 'en', NULL, '1234-variant-37', NULL, NULL, NULL, NULL, NULL, NULL, 48, 3, 'en|48|3'),
(550, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 48, 4, 'default|48|4'),
(551, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 48, 8, 'default|48|8'),
(552, 'en', NULL, '1234-variant-37', NULL, NULL, NULL, NULL, NULL, NULL, 48, 9, 'en|48|9'),
(553, 'en', NULL, '1234-variant-37', NULL, NULL, NULL, NULL, NULL, NULL, 48, 10, 'en|48|10'),
(554, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, 11, '48|11'),
(555, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 48, 22, '48|22'),
(556, NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 48, 33, '48|33'),
(557, NULL, NULL, '1234-variant-38', NULL, NULL, NULL, NULL, NULL, NULL, 49, 1, '49|1'),
(558, 'en', NULL, 'Variant 38', NULL, NULL, NULL, NULL, NULL, NULL, 49, 2, 'en|49|2'),
(559, 'en', NULL, '1234-variant-38', NULL, NULL, NULL, NULL, NULL, NULL, 49, 3, 'en|49|3'),
(560, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 49, 4, 'default|49|4'),
(561, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 49, 8, 'default|49|8'),
(562, 'en', NULL, '1234-variant-38', NULL, NULL, NULL, NULL, NULL, NULL, 49, 9, 'en|49|9'),
(563, 'en', NULL, '1234-variant-38', NULL, NULL, NULL, NULL, NULL, NULL, 49, 10, 'en|49|10'),
(564, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, 11, '49|11'),
(565, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 49, 22, '49|22'),
(566, NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 49, 33, '49|33'),
(567, NULL, NULL, '1234-variant-39', NULL, NULL, NULL, NULL, NULL, NULL, 50, 1, '50|1'),
(568, 'en', NULL, 'Variant 39', NULL, NULL, NULL, NULL, NULL, NULL, 50, 2, 'en|50|2'),
(569, 'en', NULL, '1234-variant-39', NULL, NULL, NULL, NULL, NULL, NULL, 50, 3, 'en|50|3'),
(570, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 50, 4, 'default|50|4'),
(571, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 50, 8, 'default|50|8'),
(572, 'en', NULL, '1234-variant-39', NULL, NULL, NULL, NULL, NULL, NULL, 50, 9, 'en|50|9'),
(573, 'en', NULL, '1234-variant-39', NULL, NULL, NULL, NULL, NULL, NULL, 50, 10, 'en|50|10'),
(574, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 11, '50|11'),
(575, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 50, 22, '50|22'),
(576, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 50, 33, '50|33'),
(577, NULL, NULL, '1234-variant-40', NULL, NULL, NULL, NULL, NULL, NULL, 51, 1, '51|1'),
(578, 'en', NULL, 'Variant 40', NULL, NULL, NULL, NULL, NULL, NULL, 51, 2, 'en|51|2'),
(579, 'en', NULL, '1234-variant-40', NULL, NULL, NULL, NULL, NULL, NULL, 51, 3, 'en|51|3'),
(580, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 51, 4, 'default|51|4'),
(581, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 51, 8, 'default|51|8'),
(582, 'en', NULL, '1234-variant-40', NULL, NULL, NULL, NULL, NULL, NULL, 51, 9, 'en|51|9'),
(583, 'en', NULL, '1234-variant-40', NULL, NULL, NULL, NULL, NULL, NULL, 51, 10, 'en|51|10'),
(584, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, 11, '51|11'),
(585, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 51, 22, '51|22'),
(586, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 51, 33, '51|33'),
(587, NULL, NULL, '1234-variant-41', NULL, NULL, NULL, NULL, NULL, NULL, 52, 1, '52|1'),
(588, 'en', NULL, 'Variant 41', NULL, NULL, NULL, NULL, NULL, NULL, 52, 2, 'en|52|2'),
(589, 'en', NULL, '1234-variant-41', NULL, NULL, NULL, NULL, NULL, NULL, 52, 3, 'en|52|3'),
(590, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 52, 4, 'default|52|4'),
(591, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 52, 8, 'default|52|8'),
(592, 'en', NULL, '1234-variant-41', NULL, NULL, NULL, NULL, NULL, NULL, 52, 9, 'en|52|9'),
(593, 'en', NULL, '1234-variant-41', NULL, NULL, NULL, NULL, NULL, NULL, 52, 10, 'en|52|10'),
(594, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, 11, '52|11'),
(595, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 52, 22, '52|22'),
(596, NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 52, 33, '52|33'),
(597, NULL, NULL, '1234-variant-42', NULL, NULL, NULL, NULL, NULL, NULL, 53, 1, '53|1'),
(598, 'en', NULL, 'Variant 42', NULL, NULL, NULL, NULL, NULL, NULL, 53, 2, 'en|53|2'),
(599, 'en', NULL, '1234-variant-42', NULL, NULL, NULL, NULL, NULL, NULL, 53, 3, 'en|53|3'),
(600, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 53, 4, 'default|53|4'),
(601, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 53, 8, 'default|53|8'),
(602, 'en', NULL, '1234-variant-42', NULL, NULL, NULL, NULL, NULL, NULL, 53, 9, 'en|53|9'),
(603, 'en', NULL, '1234-variant-42', NULL, NULL, NULL, NULL, NULL, NULL, 53, 10, 'en|53|10'),
(604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 11, '53|11'),
(605, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 53, 22, '53|22'),
(606, NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, 53, 33, '53|33'),
(607, NULL, NULL, '1234-variant-44', NULL, NULL, NULL, NULL, NULL, NULL, 54, 1, '54|1'),
(608, 'en', NULL, 'Variant 44', NULL, NULL, NULL, NULL, NULL, NULL, 54, 2, 'en|54|2'),
(609, 'en', NULL, '1234-variant-44', NULL, NULL, NULL, NULL, NULL, NULL, 54, 3, 'en|54|3'),
(610, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 54, 4, 'default|54|4'),
(611, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 54, 8, 'default|54|8'),
(612, 'en', NULL, '1234-variant-44', NULL, NULL, NULL, NULL, NULL, NULL, 54, 9, 'en|54|9'),
(613, 'en', NULL, '1234-variant-44', NULL, NULL, NULL, NULL, NULL, NULL, 54, 10, 'en|54|10'),
(614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, 11, '54|11'),
(615, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 54, 22, '54|22'),
(616, NULL, NULL, NULL, NULL, 44, NULL, NULL, NULL, NULL, 54, 33, '54|33'),
(617, NULL, NULL, '1234-variant-45', NULL, NULL, NULL, NULL, NULL, NULL, 55, 1, '55|1'),
(618, 'en', NULL, 'Variant 45', NULL, NULL, NULL, NULL, NULL, NULL, 55, 2, 'en|55|2'),
(619, 'en', NULL, '1234-variant-45', NULL, NULL, NULL, NULL, NULL, NULL, 55, 3, 'en|55|3'),
(620, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 55, 4, 'default|55|4'),
(621, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 55, 8, 'default|55|8'),
(622, 'en', NULL, '1234-variant-45', NULL, NULL, NULL, NULL, NULL, NULL, 55, 9, 'en|55|9'),
(623, 'en', NULL, '1234-variant-45', NULL, NULL, NULL, NULL, NULL, NULL, 55, 10, 'en|55|10'),
(624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, 11, '55|11'),
(625, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 55, 22, '55|22'),
(626, NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 55, 33, '55|33'),
(627, NULL, NULL, '1234-variant-46', NULL, NULL, NULL, NULL, NULL, NULL, 56, 1, '56|1'),
(628, 'en', NULL, 'Variant 46', NULL, NULL, NULL, NULL, NULL, NULL, 56, 2, 'en|56|2'),
(629, 'en', NULL, '1234-variant-46', NULL, NULL, NULL, NULL, NULL, NULL, 56, 3, 'en|56|3'),
(630, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 56, 4, 'default|56|4'),
(631, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 56, 8, 'default|56|8'),
(632, 'en', NULL, '1234-variant-46', NULL, NULL, NULL, NULL, NULL, NULL, 56, 9, 'en|56|9'),
(633, 'en', NULL, '1234-variant-46', NULL, NULL, NULL, NULL, NULL, NULL, 56, 10, 'en|56|10'),
(634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, 11, '56|11'),
(635, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 56, 22, '56|22'),
(636, NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, 56, 33, '56|33'),
(637, NULL, NULL, '1234-variant-47', NULL, NULL, NULL, NULL, NULL, NULL, 57, 1, '57|1'),
(638, 'en', NULL, 'Variant 47', NULL, NULL, NULL, NULL, NULL, NULL, 57, 2, 'en|57|2'),
(639, 'en', NULL, '1234-variant-47', NULL, NULL, NULL, NULL, NULL, NULL, 57, 3, 'en|57|3'),
(640, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 57, 4, 'default|57|4'),
(641, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 57, 8, 'default|57|8'),
(642, 'en', NULL, '1234-variant-47', NULL, NULL, NULL, NULL, NULL, NULL, 57, 9, 'en|57|9'),
(643, 'en', NULL, '1234-variant-47', NULL, NULL, NULL, NULL, NULL, NULL, 57, 10, 'en|57|10'),
(644, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 11, '57|11'),
(645, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 57, 22, '57|22'),
(646, NULL, NULL, NULL, NULL, 47, NULL, NULL, NULL, NULL, 57, 33, '57|33'),
(647, NULL, NULL, '1234-variant-48', NULL, NULL, NULL, NULL, NULL, NULL, 58, 1, '58|1'),
(648, 'en', NULL, 'Variant 48', NULL, NULL, NULL, NULL, NULL, NULL, 58, 2, 'en|58|2'),
(649, 'en', NULL, '1234-variant-48', NULL, NULL, NULL, NULL, NULL, NULL, 58, 3, 'en|58|3'),
(650, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 58, 4, 'default|58|4'),
(651, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 58, 8, 'default|58|8'),
(652, 'en', NULL, '1234-variant-48', NULL, NULL, NULL, NULL, NULL, NULL, 58, 9, 'en|58|9'),
(653, 'en', NULL, '1234-variant-48', NULL, NULL, NULL, NULL, NULL, NULL, 58, 10, 'en|58|10'),
(654, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 11, '58|11'),
(655, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 58, 22, '58|22'),
(656, NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, 58, 33, '58|33'),
(657, NULL, NULL, '1234-variant-49', NULL, NULL, NULL, NULL, NULL, NULL, 59, 1, '59|1'),
(658, 'en', NULL, 'Variant 49', NULL, NULL, NULL, NULL, NULL, NULL, 59, 2, 'en|59|2'),
(659, 'en', NULL, '1234-variant-49', NULL, NULL, NULL, NULL, NULL, NULL, 59, 3, 'en|59|3'),
(660, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 59, 4, 'default|59|4'),
(661, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 59, 8, 'default|59|8'),
(662, 'en', NULL, '1234-variant-49', NULL, NULL, NULL, NULL, NULL, NULL, 59, 9, 'en|59|9'),
(663, 'en', NULL, '1234-variant-49', NULL, NULL, NULL, NULL, NULL, NULL, 59, 10, 'en|59|10'),
(664, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 11, '59|11'),
(665, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 59, 22, '59|22'),
(666, NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 59, 33, '59|33'),
(667, NULL, NULL, '1234-variant-50', NULL, NULL, NULL, NULL, NULL, NULL, 60, 1, '60|1'),
(668, 'en', NULL, 'Variant 50', NULL, NULL, NULL, NULL, NULL, NULL, 60, 2, 'en|60|2'),
(669, 'en', NULL, '1234-variant-50', NULL, NULL, NULL, NULL, NULL, NULL, 60, 3, 'en|60|3'),
(670, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 60, 4, 'default|60|4'),
(671, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 60, 8, 'default|60|8'),
(672, 'en', NULL, '1234-variant-50', NULL, NULL, NULL, NULL, NULL, NULL, 60, 9, 'en|60|9'),
(673, 'en', NULL, '1234-variant-50', NULL, NULL, NULL, NULL, NULL, NULL, 60, 10, 'en|60|10'),
(674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 11, '60|11'),
(675, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 60, 22, '60|22'),
(676, NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 60, 33, '60|33'),
(677, NULL, NULL, '1234-variant-51', NULL, NULL, NULL, NULL, NULL, NULL, 61, 1, '61|1'),
(678, 'en', NULL, 'Variant 51', NULL, NULL, NULL, NULL, NULL, NULL, 61, 2, 'en|61|2'),
(679, 'en', NULL, '1234-variant-51', NULL, NULL, NULL, NULL, NULL, NULL, 61, 3, 'en|61|3'),
(680, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 61, 4, 'default|61|4'),
(681, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 61, 8, 'default|61|8'),
(682, 'en', NULL, '1234-variant-51', NULL, NULL, NULL, NULL, NULL, NULL, 61, 9, 'en|61|9'),
(683, 'en', NULL, '1234-variant-51', NULL, NULL, NULL, NULL, NULL, NULL, 61, 10, 'en|61|10'),
(684, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61, 11, '61|11'),
(685, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 61, 22, '61|22'),
(686, NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 61, 33, '61|33'),
(687, NULL, NULL, '1234-variant-52', NULL, NULL, NULL, NULL, NULL, NULL, 62, 1, '62|1'),
(688, 'en', NULL, 'Variant 52', NULL, NULL, NULL, NULL, NULL, NULL, 62, 2, 'en|62|2'),
(689, 'en', NULL, '1234-variant-52', NULL, NULL, NULL, NULL, NULL, NULL, 62, 3, 'en|62|3'),
(690, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 62, 4, 'default|62|4'),
(691, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 62, 8, 'default|62|8'),
(692, 'en', NULL, '1234-variant-52', NULL, NULL, NULL, NULL, NULL, NULL, 62, 9, 'en|62|9'),
(693, 'en', NULL, '1234-variant-52', NULL, NULL, NULL, NULL, NULL, NULL, 62, 10, 'en|62|10'),
(694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 62, 11, '62|11'),
(695, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 62, 22, '62|22'),
(696, NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 62, 33, '62|33'),
(697, NULL, NULL, '1234-variant-53', NULL, NULL, NULL, NULL, NULL, NULL, 63, 1, '63|1'),
(698, 'en', NULL, 'Variant 53', NULL, NULL, NULL, NULL, NULL, NULL, 63, 2, 'en|63|2'),
(699, 'en', NULL, '1234-variant-53', NULL, NULL, NULL, NULL, NULL, NULL, 63, 3, 'en|63|3'),
(700, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 63, 4, 'default|63|4'),
(701, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 63, 8, 'default|63|8'),
(702, 'en', NULL, '1234-variant-53', NULL, NULL, NULL, NULL, NULL, NULL, 63, 9, 'en|63|9'),
(703, 'en', NULL, '1234-variant-53', NULL, NULL, NULL, NULL, NULL, NULL, 63, 10, 'en|63|10'),
(704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63, 11, '63|11'),
(705, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 63, 22, '63|22'),
(706, NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 63, 33, '63|33'),
(707, NULL, NULL, '1234-variant-54', NULL, NULL, NULL, NULL, NULL, NULL, 64, 1, '64|1'),
(708, 'en', NULL, 'Variant 54', NULL, NULL, NULL, NULL, NULL, NULL, 64, 2, 'en|64|2'),
(709, 'en', NULL, '1234-variant-54', NULL, NULL, NULL, NULL, NULL, NULL, 64, 3, 'en|64|3'),
(710, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 64, 4, 'default|64|4'),
(711, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 64, 8, 'default|64|8'),
(712, 'en', NULL, '1234-variant-54', NULL, NULL, NULL, NULL, NULL, NULL, 64, 9, 'en|64|9'),
(713, 'en', NULL, '1234-variant-54', NULL, NULL, NULL, NULL, NULL, NULL, 64, 10, 'en|64|10'),
(714, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 64, 11, '64|11'),
(715, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 64, 22, '64|22'),
(716, NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 64, 33, '64|33'),
(717, NULL, NULL, '1234-variant-55', NULL, NULL, NULL, NULL, NULL, NULL, 65, 1, '65|1'),
(718, 'en', NULL, 'Variant 55', NULL, NULL, NULL, NULL, NULL, NULL, 65, 2, 'en|65|2'),
(719, 'en', NULL, '1234-variant-55', NULL, NULL, NULL, NULL, NULL, NULL, 65, 3, 'en|65|3'),
(720, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 65, 4, 'default|65|4'),
(721, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 65, 8, 'default|65|8'),
(722, 'en', NULL, '1234-variant-55', NULL, NULL, NULL, NULL, NULL, NULL, 65, 9, 'en|65|9'),
(723, 'en', NULL, '1234-variant-55', NULL, NULL, NULL, NULL, NULL, NULL, 65, 10, 'en|65|10'),
(724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65, 11, '65|11'),
(725, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 65, 22, '65|22'),
(726, NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 65, 33, '65|33'),
(727, NULL, NULL, '1234-variant-56', NULL, NULL, NULL, NULL, NULL, NULL, 66, 1, '66|1'),
(728, 'en', NULL, 'Variant 56', NULL, NULL, NULL, NULL, NULL, NULL, 66, 2, 'en|66|2'),
(729, 'en', NULL, '1234-variant-56', NULL, NULL, NULL, NULL, NULL, NULL, 66, 3, 'en|66|3'),
(730, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 66, 4, 'default|66|4'),
(731, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 66, 8, 'default|66|8'),
(732, 'en', NULL, '1234-variant-56', NULL, NULL, NULL, NULL, NULL, NULL, 66, 9, 'en|66|9'),
(733, 'en', NULL, '1234-variant-56', NULL, NULL, NULL, NULL, NULL, NULL, 66, 10, 'en|66|10'),
(734, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66, 11, '66|11'),
(735, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 66, 22, '66|22'),
(736, NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 66, 33, '66|33'),
(737, NULL, NULL, '1234-variant-57', NULL, NULL, NULL, NULL, NULL, NULL, 67, 1, '67|1'),
(738, 'en', NULL, 'Variant 57', NULL, NULL, NULL, NULL, NULL, NULL, 67, 2, 'en|67|2'),
(739, 'en', NULL, '1234-variant-57', NULL, NULL, NULL, NULL, NULL, NULL, 67, 3, 'en|67|3'),
(740, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 67, 4, 'default|67|4'),
(741, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 67, 8, 'default|67|8'),
(742, 'en', NULL, '1234-variant-57', NULL, NULL, NULL, NULL, NULL, NULL, 67, 9, 'en|67|9'),
(743, 'en', NULL, '1234-variant-57', NULL, NULL, NULL, NULL, NULL, NULL, 67, 10, 'en|67|10'),
(744, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67, 11, '67|11'),
(745, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 67, 22, '67|22'),
(746, NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 67, 33, '67|33'),
(747, NULL, NULL, '1234-variant-58', NULL, NULL, NULL, NULL, NULL, NULL, 68, 1, '68|1'),
(748, 'en', NULL, 'Variant 58', NULL, NULL, NULL, NULL, NULL, NULL, 68, 2, 'en|68|2'),
(749, 'en', NULL, '1234-variant-58', NULL, NULL, NULL, NULL, NULL, NULL, 68, 3, 'en|68|3'),
(750, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 68, 4, 'default|68|4'),
(751, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 68, 8, 'default|68|8'),
(752, 'en', NULL, '1234-variant-58', NULL, NULL, NULL, NULL, NULL, NULL, 68, 9, 'en|68|9'),
(753, 'en', NULL, '1234-variant-58', NULL, NULL, NULL, NULL, NULL, NULL, 68, 10, 'en|68|10'),
(754, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68, 11, '68|11'),
(755, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 68, 22, '68|22'),
(756, NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 68, 33, '68|33'),
(757, NULL, NULL, '1234-variant-59', NULL, NULL, NULL, NULL, NULL, NULL, 69, 1, '69|1'),
(758, 'en', NULL, 'Variant 59', NULL, NULL, NULL, NULL, NULL, NULL, 69, 2, 'en|69|2'),
(759, 'en', NULL, '1234-variant-59', NULL, NULL, NULL, NULL, NULL, NULL, 69, 3, 'en|69|3'),
(760, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 69, 4, 'default|69|4'),
(761, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 69, 8, 'default|69|8'),
(762, 'en', NULL, '1234-variant-59', NULL, NULL, NULL, NULL, NULL, NULL, 69, 9, 'en|69|9'),
(763, 'en', NULL, '1234-variant-59', NULL, NULL, NULL, NULL, NULL, NULL, 69, 10, 'en|69|10'),
(764, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 69, 11, '69|11'),
(765, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 69, 22, '69|22'),
(766, NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 69, 33, '69|33'),
(767, NULL, NULL, '1234-variant-60', NULL, NULL, NULL, NULL, NULL, NULL, 70, 1, '70|1'),
(768, 'en', NULL, 'Variant 60', NULL, NULL, NULL, NULL, NULL, NULL, 70, 2, 'en|70|2'),
(769, 'en', NULL, '1234-variant-60', NULL, NULL, NULL, NULL, NULL, NULL, 70, 3, 'en|70|3'),
(770, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 70, 4, 'default|70|4'),
(771, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 70, 8, 'default|70|8'),
(772, 'en', NULL, '1234-variant-60', NULL, NULL, NULL, NULL, NULL, NULL, 70, 9, 'en|70|9'),
(773, 'en', NULL, '1234-variant-60', NULL, NULL, NULL, NULL, NULL, NULL, 70, 10, 'en|70|10'),
(774, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70, 11, '70|11'),
(775, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 70, 22, '70|22'),
(776, NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, 70, 33, '70|33'),
(777, NULL, NULL, '1234-variant-61', NULL, NULL, NULL, NULL, NULL, NULL, 71, 1, '71|1'),
(778, 'en', NULL, 'Variant 61', NULL, NULL, NULL, NULL, NULL, NULL, 71, 2, 'en|71|2'),
(779, 'en', NULL, '1234-variant-61', NULL, NULL, NULL, NULL, NULL, NULL, 71, 3, 'en|71|3'),
(780, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 71, 4, 'default|71|4'),
(781, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 71, 8, 'default|71|8'),
(782, 'en', NULL, '1234-variant-61', NULL, NULL, NULL, NULL, NULL, NULL, 71, 9, 'en|71|9'),
(783, 'en', NULL, '1234-variant-61', NULL, NULL, NULL, NULL, NULL, NULL, 71, 10, 'en|71|10'),
(784, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71, 11, '71|11'),
(785, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 71, 22, '71|22'),
(786, NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 71, 33, '71|33'),
(787, NULL, NULL, '1234-variant-62', NULL, NULL, NULL, NULL, NULL, NULL, 72, 1, '72|1'),
(788, 'en', NULL, 'Variant 62', NULL, NULL, NULL, NULL, NULL, NULL, 72, 2, 'en|72|2'),
(789, 'en', NULL, '1234-variant-62', NULL, NULL, NULL, NULL, NULL, NULL, 72, 3, 'en|72|3'),
(790, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 72, 4, 'default|72|4'),
(791, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 72, 8, 'default|72|8'),
(792, 'en', NULL, '1234-variant-62', NULL, NULL, NULL, NULL, NULL, NULL, 72, 9, 'en|72|9'),
(793, 'en', NULL, '1234-variant-62', NULL, NULL, NULL, NULL, NULL, NULL, 72, 10, 'en|72|10'),
(794, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 72, 11, '72|11'),
(795, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 72, 22, '72|22'),
(796, NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, 72, 33, '72|33'),
(797, NULL, NULL, '1234-variant-63', NULL, NULL, NULL, NULL, NULL, NULL, 73, 1, '73|1'),
(798, 'en', NULL, 'Variant 63', NULL, NULL, NULL, NULL, NULL, NULL, 73, 2, 'en|73|2'),
(799, 'en', NULL, '1234-variant-63', NULL, NULL, NULL, NULL, NULL, NULL, 73, 3, 'en|73|3'),
(800, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 73, 4, 'default|73|4'),
(801, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 73, 8, 'default|73|8'),
(802, 'en', NULL, '1234-variant-63', NULL, NULL, NULL, NULL, NULL, NULL, 73, 9, 'en|73|9'),
(803, 'en', NULL, '1234-variant-63', NULL, NULL, NULL, NULL, NULL, NULL, 73, 10, 'en|73|10'),
(804, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 73, 11, '73|11'),
(805, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 73, 22, '73|22'),
(806, NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, 73, 33, '73|33'),
(807, NULL, NULL, '1234-variant-64', NULL, NULL, NULL, NULL, NULL, NULL, 74, 1, '74|1'),
(808, 'en', NULL, 'Variant 64', NULL, NULL, NULL, NULL, NULL, NULL, 74, 2, 'en|74|2'),
(809, 'en', NULL, '1234-variant-64', NULL, NULL, NULL, NULL, NULL, NULL, 74, 3, 'en|74|3'),
(810, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 74, 4, 'default|74|4'),
(811, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 74, 8, 'default|74|8'),
(812, 'en', NULL, '1234-variant-64', NULL, NULL, NULL, NULL, NULL, NULL, 74, 9, 'en|74|9'),
(813, 'en', NULL, '1234-variant-64', NULL, NULL, NULL, NULL, NULL, NULL, 74, 10, 'en|74|10'),
(814, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 74, 11, '74|11'),
(815, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 74, 22, '74|22'),
(816, NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 74, 33, '74|33'),
(817, NULL, NULL, '1234-variant-65', NULL, NULL, NULL, NULL, NULL, NULL, 75, 1, '75|1'),
(818, 'en', NULL, 'Variant 65', NULL, NULL, NULL, NULL, NULL, NULL, 75, 2, 'en|75|2'),
(819, 'en', NULL, '1234-variant-65', NULL, NULL, NULL, NULL, NULL, NULL, 75, 3, 'en|75|3'),
(820, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 75, 4, 'default|75|4'),
(821, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 75, 8, 'default|75|8'),
(822, 'en', NULL, '1234-variant-65', NULL, NULL, NULL, NULL, NULL, NULL, 75, 9, 'en|75|9'),
(823, 'en', NULL, '1234-variant-65', NULL, NULL, NULL, NULL, NULL, NULL, 75, 10, 'en|75|10'),
(824, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 75, 11, '75|11'),
(825, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 75, 22, '75|22'),
(826, NULL, NULL, NULL, NULL, 65, NULL, NULL, NULL, NULL, 75, 33, '75|33'),
(827, NULL, NULL, '1234-variant-66', NULL, NULL, NULL, NULL, NULL, NULL, 76, 1, '76|1'),
(828, 'en', NULL, 'Variant 66', NULL, NULL, NULL, NULL, NULL, NULL, 76, 2, 'en|76|2'),
(829, 'en', NULL, '1234-variant-66', NULL, NULL, NULL, NULL, NULL, NULL, 76, 3, 'en|76|3'),
(830, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 76, 4, 'default|76|4'),
(831, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 76, 8, 'default|76|8'),
(832, 'en', NULL, '1234-variant-66', NULL, NULL, NULL, NULL, NULL, NULL, 76, 9, 'en|76|9'),
(833, 'en', NULL, '1234-variant-66', NULL, NULL, NULL, NULL, NULL, NULL, 76, 10, 'en|76|10'),
(834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76, 11, '76|11'),
(835, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 76, 22, '76|22'),
(836, NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 76, 33, '76|33'),
(837, NULL, NULL, '1234-variant-67', NULL, NULL, NULL, NULL, NULL, NULL, 77, 1, '77|1'),
(838, 'en', NULL, 'Variant 67', NULL, NULL, NULL, NULL, NULL, NULL, 77, 2, 'en|77|2'),
(839, 'en', NULL, '1234-variant-67', NULL, NULL, NULL, NULL, NULL, NULL, 77, 3, 'en|77|3'),
(840, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 77, 4, 'default|77|4'),
(841, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 77, 8, 'default|77|8'),
(842, 'en', NULL, '1234-variant-67', NULL, NULL, NULL, NULL, NULL, NULL, 77, 9, 'en|77|9'),
(843, 'en', NULL, '1234-variant-67', NULL, NULL, NULL, NULL, NULL, NULL, 77, 10, 'en|77|10'),
(844, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 77, 11, '77|11'),
(845, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 77, 22, '77|22'),
(846, NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 77, 33, '77|33'),
(847, NULL, NULL, '1234-variant-68', NULL, NULL, NULL, NULL, NULL, NULL, 78, 1, '78|1'),
(848, 'en', NULL, 'Variant 68', NULL, NULL, NULL, NULL, NULL, NULL, 78, 2, 'en|78|2'),
(849, 'en', NULL, '1234-variant-68', NULL, NULL, NULL, NULL, NULL, NULL, 78, 3, 'en|78|3'),
(850, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 78, 4, 'default|78|4'),
(851, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 78, 8, 'default|78|8'),
(852, 'en', NULL, '1234-variant-68', NULL, NULL, NULL, NULL, NULL, NULL, 78, 9, 'en|78|9'),
(853, 'en', NULL, '1234-variant-68', NULL, NULL, NULL, NULL, NULL, NULL, 78, 10, 'en|78|10'),
(854, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 78, 11, '78|11'),
(855, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 78, 22, '78|22'),
(856, NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, 78, 33, '78|33'),
(857, NULL, NULL, '1234-variant-69', NULL, NULL, NULL, NULL, NULL, NULL, 79, 1, '79|1'),
(858, 'en', NULL, 'Variant 69', NULL, NULL, NULL, NULL, NULL, NULL, 79, 2, 'en|79|2'),
(859, 'en', NULL, '1234-variant-69', NULL, NULL, NULL, NULL, NULL, NULL, 79, 3, 'en|79|3'),
(860, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 79, 4, 'default|79|4'),
(861, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 79, 8, 'default|79|8'),
(862, 'en', NULL, '1234-variant-69', NULL, NULL, NULL, NULL, NULL, NULL, 79, 9, 'en|79|9'),
(863, 'en', NULL, '1234-variant-69', NULL, NULL, NULL, NULL, NULL, NULL, 79, 10, 'en|79|10'),
(864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 79, 11, '79|11'),
(865, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 79, 22, '79|22'),
(866, NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, 79, 33, '79|33'),
(867, NULL, NULL, '1234-variant-70', NULL, NULL, NULL, NULL, NULL, NULL, 80, 1, '80|1'),
(868, 'en', NULL, 'Variant 70', NULL, NULL, NULL, NULL, NULL, NULL, 80, 2, 'en|80|2'),
(869, 'en', NULL, '1234-variant-70', NULL, NULL, NULL, NULL, NULL, NULL, 80, 3, 'en|80|3'),
(870, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 80, 4, 'default|80|4'),
(871, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 80, 8, 'default|80|8'),
(872, 'en', NULL, '1234-variant-70', NULL, NULL, NULL, NULL, NULL, NULL, 80, 9, 'en|80|9'),
(873, 'en', NULL, '1234-variant-70', NULL, NULL, NULL, NULL, NULL, NULL, 80, 10, 'en|80|10'),
(874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 80, 11, '80|11'),
(875, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 80, 22, '80|22'),
(876, NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, 80, 33, '80|33'),
(877, NULL, NULL, '1234-variant-71', NULL, NULL, NULL, NULL, NULL, NULL, 81, 1, '81|1'),
(878, 'en', NULL, 'Variant 71', NULL, NULL, NULL, NULL, NULL, NULL, 81, 2, 'en|81|2'),
(879, 'en', NULL, '1234-variant-71', NULL, NULL, NULL, NULL, NULL, NULL, 81, 3, 'en|81|3'),
(880, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 81, 4, 'default|81|4'),
(881, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 81, 8, 'default|81|8'),
(882, 'en', NULL, '1234-variant-71', NULL, NULL, NULL, NULL, NULL, NULL, 81, 9, 'en|81|9'),
(883, 'en', NULL, '1234-variant-71', NULL, NULL, NULL, NULL, NULL, NULL, 81, 10, 'en|81|10'),
(884, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 81, 11, '81|11'),
(885, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 81, 22, '81|22'),
(886, NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, 81, 33, '81|33'),
(887, NULL, NULL, '1234-variant-72', NULL, NULL, NULL, NULL, NULL, NULL, 82, 1, '82|1'),
(888, 'en', NULL, 'Variant 72', NULL, NULL, NULL, NULL, NULL, NULL, 82, 2, 'en|82|2'),
(889, 'en', NULL, '1234-variant-72', NULL, NULL, NULL, NULL, NULL, NULL, 82, 3, 'en|82|3'),
(890, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 82, 4, 'default|82|4'),
(891, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 82, 8, 'default|82|8'),
(892, 'en', NULL, '1234-variant-72', NULL, NULL, NULL, NULL, NULL, NULL, 82, 9, 'en|82|9'),
(893, 'en', NULL, '1234-variant-72', NULL, NULL, NULL, NULL, NULL, NULL, 82, 10, 'en|82|10'),
(894, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 82, 11, '82|11'),
(895, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 82, 22, '82|22'),
(896, NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, 82, 33, '82|33'),
(897, NULL, NULL, '1234-variant-73', NULL, NULL, NULL, NULL, NULL, NULL, 83, 1, '83|1'),
(898, 'en', NULL, 'Variant 73', NULL, NULL, NULL, NULL, NULL, NULL, 83, 2, 'en|83|2'),
(899, 'en', NULL, '1234-variant-73', NULL, NULL, NULL, NULL, NULL, NULL, 83, 3, 'en|83|3'),
(900, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 83, 4, 'default|83|4'),
(901, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 83, 8, 'default|83|8'),
(902, 'en', NULL, '1234-variant-73', NULL, NULL, NULL, NULL, NULL, NULL, 83, 9, 'en|83|9'),
(903, 'en', NULL, '1234-variant-73', NULL, NULL, NULL, NULL, NULL, NULL, 83, 10, 'en|83|10'),
(904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 83, 11, '83|11'),
(905, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 83, 22, '83|22'),
(906, NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, 83, 33, '83|33'),
(907, NULL, NULL, '1234-variant-74', NULL, NULL, NULL, NULL, NULL, NULL, 84, 1, '84|1'),
(908, 'en', NULL, 'Variant 74', NULL, NULL, NULL, NULL, NULL, NULL, 84, 2, 'en|84|2'),
(909, 'en', NULL, '1234-variant-74', NULL, NULL, NULL, NULL, NULL, NULL, 84, 3, 'en|84|3'),
(910, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 84, 4, 'default|84|4'),
(911, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 84, 8, 'default|84|8'),
(912, 'en', NULL, '1234-variant-74', NULL, NULL, NULL, NULL, NULL, NULL, 84, 9, 'en|84|9'),
(913, 'en', NULL, '1234-variant-74', NULL, NULL, NULL, NULL, NULL, NULL, 84, 10, 'en|84|10'),
(914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 84, 11, '84|11'),
(915, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 84, 22, '84|22'),
(916, NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, 84, 33, '84|33'),
(917, NULL, NULL, '1234-variant-75', NULL, NULL, NULL, NULL, NULL, NULL, 85, 1, '85|1'),
(918, 'en', NULL, 'Variant 75', NULL, NULL, NULL, NULL, NULL, NULL, 85, 2, 'en|85|2'),
(919, 'en', NULL, '1234-variant-75', NULL, NULL, NULL, NULL, NULL, NULL, 85, 3, 'en|85|3'),
(920, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 85, 4, 'default|85|4'),
(921, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 85, 8, 'default|85|8'),
(922, 'en', NULL, '1234-variant-75', NULL, NULL, NULL, NULL, NULL, NULL, 85, 9, 'en|85|9'),
(923, 'en', NULL, '1234-variant-75', NULL, NULL, NULL, NULL, NULL, NULL, 85, 10, 'en|85|10'),
(924, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85, 11, '85|11'),
(925, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 85, 22, '85|22'),
(926, NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 85, 33, '85|33'),
(927, NULL, NULL, '1234-variant-76', NULL, NULL, NULL, NULL, NULL, NULL, 86, 1, '86|1'),
(928, 'en', NULL, 'Variant 76', NULL, NULL, NULL, NULL, NULL, NULL, 86, 2, 'en|86|2'),
(929, 'en', NULL, '1234-variant-76', NULL, NULL, NULL, NULL, NULL, NULL, 86, 3, 'en|86|3'),
(930, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 86, 4, 'default|86|4'),
(931, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 86, 8, 'default|86|8'),
(932, 'en', NULL, '1234-variant-76', NULL, NULL, NULL, NULL, NULL, NULL, 86, 9, 'en|86|9'),
(933, 'en', NULL, '1234-variant-76', NULL, NULL, NULL, NULL, NULL, NULL, 86, 10, 'en|86|10'),
(934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 86, 11, '86|11'),
(935, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 86, 22, '86|22'),
(936, NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, 86, 33, '86|33'),
(937, NULL, NULL, '1234-variant-77', NULL, NULL, NULL, NULL, NULL, NULL, 87, 1, '87|1'),
(938, 'en', NULL, 'Variant 77', NULL, NULL, NULL, NULL, NULL, NULL, 87, 2, 'en|87|2'),
(939, 'en', NULL, '1234-variant-77', NULL, NULL, NULL, NULL, NULL, NULL, 87, 3, 'en|87|3'),
(940, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 87, 4, 'default|87|4'),
(941, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 87, 8, 'default|87|8'),
(942, 'en', NULL, '1234-variant-77', NULL, NULL, NULL, NULL, NULL, NULL, 87, 9, 'en|87|9'),
(943, 'en', NULL, '1234-variant-77', NULL, NULL, NULL, NULL, NULL, NULL, 87, 10, 'en|87|10'),
(944, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 87, 11, '87|11'),
(945, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 87, 22, '87|22'),
(946, NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, 87, 33, '87|33'),
(947, NULL, NULL, '1234-variant-78', NULL, NULL, NULL, NULL, NULL, NULL, 88, 1, '88|1'),
(948, 'en', NULL, 'Variant 78', NULL, NULL, NULL, NULL, NULL, NULL, 88, 2, 'en|88|2'),
(949, 'en', NULL, '1234-variant-78', NULL, NULL, NULL, NULL, NULL, NULL, 88, 3, 'en|88|3'),
(950, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 88, 4, 'default|88|4'),
(951, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 88, 8, 'default|88|8'),
(952, 'en', NULL, '1234-variant-78', NULL, NULL, NULL, NULL, NULL, NULL, 88, 9, 'en|88|9'),
(953, 'en', NULL, '1234-variant-78', NULL, NULL, NULL, NULL, NULL, NULL, 88, 10, 'en|88|10'),
(954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 88, 11, '88|11'),
(955, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 88, 22, '88|22'),
(956, NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, 88, 33, '88|33');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(957, NULL, NULL, '1234-variant-79', NULL, NULL, NULL, NULL, NULL, NULL, 89, 1, '89|1'),
(958, 'en', NULL, 'Variant 79', NULL, NULL, NULL, NULL, NULL, NULL, 89, 2, 'en|89|2'),
(959, 'en', NULL, '1234-variant-79', NULL, NULL, NULL, NULL, NULL, NULL, 89, 3, 'en|89|3'),
(960, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 89, 4, 'default|89|4'),
(961, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 89, 8, 'default|89|8'),
(962, 'en', NULL, '1234-variant-79', NULL, NULL, NULL, NULL, NULL, NULL, 89, 9, 'en|89|9'),
(963, 'en', NULL, '1234-variant-79', NULL, NULL, NULL, NULL, NULL, NULL, 89, 10, 'en|89|10'),
(964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 89, 11, '89|11'),
(965, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 89, 22, '89|22'),
(966, NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, 89, 33, '89|33'),
(967, NULL, NULL, '1234-variant-80', NULL, NULL, NULL, NULL, NULL, NULL, 90, 1, '90|1'),
(968, 'en', NULL, 'Variant 80', NULL, NULL, NULL, NULL, NULL, NULL, 90, 2, 'en|90|2'),
(969, 'en', NULL, '1234-variant-80', NULL, NULL, NULL, NULL, NULL, NULL, 90, 3, 'en|90|3'),
(970, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 90, 4, 'default|90|4'),
(971, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 90, 8, 'default|90|8'),
(972, 'en', NULL, '1234-variant-80', NULL, NULL, NULL, NULL, NULL, NULL, 90, 9, 'en|90|9'),
(973, 'en', NULL, '1234-variant-80', NULL, NULL, NULL, NULL, NULL, NULL, 90, 10, 'en|90|10'),
(974, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 90, 11, '90|11'),
(975, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 90, 22, '90|22'),
(976, NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, 90, 33, '90|33'),
(977, NULL, NULL, '1234-variant-81', NULL, NULL, NULL, NULL, NULL, NULL, 91, 1, '91|1'),
(978, 'en', NULL, 'Variant 81', NULL, NULL, NULL, NULL, NULL, NULL, 91, 2, 'en|91|2'),
(979, 'en', NULL, '1234-variant-81', NULL, NULL, NULL, NULL, NULL, NULL, 91, 3, 'en|91|3'),
(980, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 91, 4, 'default|91|4'),
(981, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 91, 8, 'default|91|8'),
(982, 'en', NULL, '1234-variant-81', NULL, NULL, NULL, NULL, NULL, NULL, 91, 9, 'en|91|9'),
(983, 'en', NULL, '1234-variant-81', NULL, NULL, NULL, NULL, NULL, NULL, 91, 10, 'en|91|10'),
(984, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 91, 11, '91|11'),
(985, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 91, 22, '91|22'),
(986, NULL, NULL, NULL, NULL, 81, NULL, NULL, NULL, NULL, 91, 33, '91|33'),
(987, NULL, NULL, '1234-variant-82', NULL, NULL, NULL, NULL, NULL, NULL, 92, 1, '92|1'),
(988, 'en', NULL, 'Variant 82', NULL, NULL, NULL, NULL, NULL, NULL, 92, 2, 'en|92|2'),
(989, 'en', NULL, '1234-variant-82', NULL, NULL, NULL, NULL, NULL, NULL, 92, 3, 'en|92|3'),
(990, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 92, 4, 'default|92|4'),
(991, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 92, 8, 'default|92|8'),
(992, 'en', NULL, '1234-variant-82', NULL, NULL, NULL, NULL, NULL, NULL, 92, 9, 'en|92|9'),
(993, 'en', NULL, '1234-variant-82', NULL, NULL, NULL, NULL, NULL, NULL, 92, 10, 'en|92|10'),
(994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, 11, '92|11'),
(995, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 92, 22, '92|22'),
(996, NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, 92, 33, '92|33'),
(997, NULL, NULL, '1234-variant-83', NULL, NULL, NULL, NULL, NULL, NULL, 93, 1, '93|1'),
(998, 'en', NULL, 'Variant 83', NULL, NULL, NULL, NULL, NULL, NULL, 93, 2, 'en|93|2'),
(999, 'en', NULL, '1234-variant-83', NULL, NULL, NULL, NULL, NULL, NULL, 93, 3, 'en|93|3'),
(1000, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 93, 4, 'default|93|4'),
(1001, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 93, 8, 'default|93|8'),
(1002, 'en', NULL, '1234-variant-83', NULL, NULL, NULL, NULL, NULL, NULL, 93, 9, 'en|93|9'),
(1003, 'en', NULL, '1234-variant-83', NULL, NULL, NULL, NULL, NULL, NULL, 93, 10, 'en|93|10'),
(1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 93, 11, '93|11'),
(1005, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 93, 22, '93|22'),
(1006, NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, 93, 33, '93|33'),
(1007, NULL, NULL, '1234-variant-84', NULL, NULL, NULL, NULL, NULL, NULL, 94, 1, '94|1'),
(1008, 'en', NULL, 'Variant 84', NULL, NULL, NULL, NULL, NULL, NULL, 94, 2, 'en|94|2'),
(1009, 'en', NULL, '1234-variant-84', NULL, NULL, NULL, NULL, NULL, NULL, 94, 3, 'en|94|3'),
(1010, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 94, 4, 'default|94|4'),
(1011, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 94, 8, 'default|94|8'),
(1012, 'en', NULL, '1234-variant-84', NULL, NULL, NULL, NULL, NULL, NULL, 94, 9, 'en|94|9'),
(1013, 'en', NULL, '1234-variant-84', NULL, NULL, NULL, NULL, NULL, NULL, 94, 10, 'en|94|10'),
(1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 94, 11, '94|11'),
(1015, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 94, 22, '94|22'),
(1016, NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, 94, 33, '94|33'),
(1017, NULL, NULL, '1234-variant-85', NULL, NULL, NULL, NULL, NULL, NULL, 95, 1, '95|1'),
(1018, 'en', NULL, 'Variant 85', NULL, NULL, NULL, NULL, NULL, NULL, 95, 2, 'en|95|2'),
(1019, 'en', NULL, '1234-variant-85', NULL, NULL, NULL, NULL, NULL, NULL, 95, 3, 'en|95|3'),
(1020, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 95, 4, 'default|95|4'),
(1021, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 95, 8, 'default|95|8'),
(1022, 'en', NULL, '1234-variant-85', NULL, NULL, NULL, NULL, NULL, NULL, 95, 9, 'en|95|9'),
(1023, 'en', NULL, '1234-variant-85', NULL, NULL, NULL, NULL, NULL, NULL, 95, 10, 'en|95|10'),
(1024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 95, 11, '95|11'),
(1025, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 95, 22, '95|22'),
(1026, NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, 95, 33, '95|33'),
(1027, NULL, NULL, '1234-variant-86', NULL, NULL, NULL, NULL, NULL, NULL, 96, 1, '96|1'),
(1028, 'en', NULL, 'Variant 86', NULL, NULL, NULL, NULL, NULL, NULL, 96, 2, 'en|96|2'),
(1029, 'en', NULL, '1234-variant-86', NULL, NULL, NULL, NULL, NULL, NULL, 96, 3, 'en|96|3'),
(1030, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 96, 4, 'default|96|4'),
(1031, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 96, 8, 'default|96|8'),
(1032, 'en', NULL, '1234-variant-86', NULL, NULL, NULL, NULL, NULL, NULL, 96, 9, 'en|96|9'),
(1033, 'en', NULL, '1234-variant-86', NULL, NULL, NULL, NULL, NULL, NULL, 96, 10, 'en|96|10'),
(1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 96, 11, '96|11'),
(1035, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 96, 22, '96|22'),
(1036, NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, 96, 33, '96|33'),
(1037, NULL, NULL, '1234-variant-87', NULL, NULL, NULL, NULL, NULL, NULL, 97, 1, '97|1'),
(1038, 'en', NULL, 'Variant 87', NULL, NULL, NULL, NULL, NULL, NULL, 97, 2, 'en|97|2'),
(1039, 'en', NULL, '1234-variant-87', NULL, NULL, NULL, NULL, NULL, NULL, 97, 3, 'en|97|3'),
(1040, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 97, 4, 'default|97|4'),
(1041, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 97, 8, 'default|97|8'),
(1042, 'en', NULL, '1234-variant-87', NULL, NULL, NULL, NULL, NULL, NULL, 97, 9, 'en|97|9'),
(1043, 'en', NULL, '1234-variant-87', NULL, NULL, NULL, NULL, NULL, NULL, 97, 10, 'en|97|10'),
(1044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 97, 11, '97|11'),
(1045, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 97, 22, '97|22'),
(1046, NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, 97, 33, '97|33'),
(1047, NULL, NULL, '1234-variant-88', NULL, NULL, NULL, NULL, NULL, NULL, 98, 1, '98|1'),
(1048, 'en', NULL, 'Variant 88', NULL, NULL, NULL, NULL, NULL, NULL, 98, 2, 'en|98|2'),
(1049, 'en', NULL, '1234-variant-88', NULL, NULL, NULL, NULL, NULL, NULL, 98, 3, 'en|98|3'),
(1050, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 98, 4, 'default|98|4'),
(1051, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 98, 8, 'default|98|8'),
(1052, 'en', NULL, '1234-variant-88', NULL, NULL, NULL, NULL, NULL, NULL, 98, 9, 'en|98|9'),
(1053, 'en', NULL, '1234-variant-88', NULL, NULL, NULL, NULL, NULL, NULL, 98, 10, 'en|98|10'),
(1054, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 98, 11, '98|11'),
(1055, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 98, 22, '98|22'),
(1056, NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, 98, 33, '98|33'),
(1057, NULL, NULL, '1234-variant-89', NULL, NULL, NULL, NULL, NULL, NULL, 99, 1, '99|1'),
(1058, 'en', NULL, 'Variant 89', NULL, NULL, NULL, NULL, NULL, NULL, 99, 2, 'en|99|2'),
(1059, 'en', NULL, '1234-variant-89', NULL, NULL, NULL, NULL, NULL, NULL, 99, 3, 'en|99|3'),
(1060, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 99, 4, 'default|99|4'),
(1061, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 99, 8, 'default|99|8'),
(1062, 'en', NULL, '1234-variant-89', NULL, NULL, NULL, NULL, NULL, NULL, 99, 9, 'en|99|9'),
(1063, 'en', NULL, '1234-variant-89', NULL, NULL, NULL, NULL, NULL, NULL, 99, 10, 'en|99|10'),
(1064, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99, 11, '99|11'),
(1065, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 99, 22, '99|22'),
(1066, NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, 99, 33, '99|33'),
(1067, NULL, NULL, '1234-variant-90', NULL, NULL, NULL, NULL, NULL, NULL, 100, 1, '100|1'),
(1068, 'en', NULL, 'Variant 90', NULL, NULL, NULL, NULL, NULL, NULL, 100, 2, 'en|100|2'),
(1069, 'en', NULL, '1234-variant-90', NULL, NULL, NULL, NULL, NULL, NULL, 100, 3, 'en|100|3'),
(1070, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 100, 4, 'default|100|4'),
(1071, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 100, 8, 'default|100|8'),
(1072, 'en', NULL, '1234-variant-90', NULL, NULL, NULL, NULL, NULL, NULL, 100, 9, 'en|100|9'),
(1073, 'en', NULL, '1234-variant-90', NULL, NULL, NULL, NULL, NULL, NULL, 100, 10, 'en|100|10'),
(1074, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100, 11, '100|11'),
(1075, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 100, 22, '100|22'),
(1076, NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, 100, 33, '100|33'),
(1077, NULL, NULL, '1234-variant-91', NULL, NULL, NULL, NULL, NULL, NULL, 101, 1, '101|1'),
(1078, 'en', NULL, 'Variant 91', NULL, NULL, NULL, NULL, NULL, NULL, 101, 2, 'en|101|2'),
(1079, 'en', NULL, '1234-variant-91', NULL, NULL, NULL, NULL, NULL, NULL, 101, 3, 'en|101|3'),
(1080, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 101, 4, 'default|101|4'),
(1081, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 101, 8, 'default|101|8'),
(1082, 'en', NULL, '1234-variant-91', NULL, NULL, NULL, NULL, NULL, NULL, 101, 9, 'en|101|9'),
(1083, 'en', NULL, '1234-variant-91', NULL, NULL, NULL, NULL, NULL, NULL, 101, 10, 'en|101|10'),
(1084, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 101, 11, '101|11'),
(1085, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 101, 22, '101|22'),
(1086, NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, 101, 33, '101|33'),
(1087, NULL, NULL, '1234-variant-92', NULL, NULL, NULL, NULL, NULL, NULL, 102, 1, '102|1'),
(1088, 'en', NULL, 'Variant 92', NULL, NULL, NULL, NULL, NULL, NULL, 102, 2, 'en|102|2'),
(1089, 'en', NULL, '1234-variant-92', NULL, NULL, NULL, NULL, NULL, NULL, 102, 3, 'en|102|3'),
(1090, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 102, 4, 'default|102|4'),
(1091, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 102, 8, 'default|102|8'),
(1092, 'en', NULL, '1234-variant-92', NULL, NULL, NULL, NULL, NULL, NULL, 102, 9, 'en|102|9'),
(1093, 'en', NULL, '1234-variant-92', NULL, NULL, NULL, NULL, NULL, NULL, 102, 10, 'en|102|10'),
(1094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 102, 11, '102|11'),
(1095, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 102, 22, '102|22'),
(1096, NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, 102, 33, '102|33'),
(1097, NULL, NULL, '1234-variant-93', NULL, NULL, NULL, NULL, NULL, NULL, 103, 1, '103|1'),
(1098, 'en', NULL, 'Variant 93', NULL, NULL, NULL, NULL, NULL, NULL, 103, 2, 'en|103|2'),
(1099, 'en', NULL, '1234-variant-93', NULL, NULL, NULL, NULL, NULL, NULL, 103, 3, 'en|103|3'),
(1100, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 103, 4, 'default|103|4'),
(1101, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 103, 8, 'default|103|8'),
(1102, 'en', NULL, '1234-variant-93', NULL, NULL, NULL, NULL, NULL, NULL, 103, 9, 'en|103|9'),
(1103, 'en', NULL, '1234-variant-93', NULL, NULL, NULL, NULL, NULL, NULL, 103, 10, 'en|103|10'),
(1104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 103, 11, '103|11'),
(1105, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 103, 22, '103|22'),
(1106, NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, 103, 33, '103|33'),
(1107, NULL, NULL, '1234-variant-94', NULL, NULL, NULL, NULL, NULL, NULL, 104, 1, '104|1'),
(1108, 'en', NULL, 'Variant 94', NULL, NULL, NULL, NULL, NULL, NULL, 104, 2, 'en|104|2'),
(1109, 'en', NULL, '1234-variant-94', NULL, NULL, NULL, NULL, NULL, NULL, 104, 3, 'en|104|3'),
(1110, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 104, 4, 'default|104|4'),
(1111, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 104, 8, 'default|104|8'),
(1112, 'en', NULL, '1234-variant-94', NULL, NULL, NULL, NULL, NULL, NULL, 104, 9, 'en|104|9'),
(1113, 'en', NULL, '1234-variant-94', NULL, NULL, NULL, NULL, NULL, NULL, 104, 10, 'en|104|10'),
(1114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 104, 11, '104|11'),
(1115, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 104, 22, '104|22'),
(1116, NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 104, 33, '104|33'),
(1117, NULL, NULL, '1234-variant-95', NULL, NULL, NULL, NULL, NULL, NULL, 105, 1, '105|1'),
(1118, 'en', NULL, 'Variant 95', NULL, NULL, NULL, NULL, NULL, NULL, 105, 2, 'en|105|2'),
(1119, 'en', NULL, '1234-variant-95', NULL, NULL, NULL, NULL, NULL, NULL, 105, 3, 'en|105|3'),
(1120, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 105, 4, 'default|105|4'),
(1121, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 105, 8, 'default|105|8'),
(1122, 'en', NULL, '1234-variant-95', NULL, NULL, NULL, NULL, NULL, NULL, 105, 9, 'en|105|9'),
(1123, 'en', NULL, '1234-variant-95', NULL, NULL, NULL, NULL, NULL, NULL, 105, 10, 'en|105|10'),
(1124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 105, 11, '105|11'),
(1125, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 105, 22, '105|22'),
(1126, NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, 105, 33, '105|33'),
(1127, NULL, NULL, '1234-variant-96', NULL, NULL, NULL, NULL, NULL, NULL, 106, 1, '106|1'),
(1128, 'en', NULL, 'Variant 96', NULL, NULL, NULL, NULL, NULL, NULL, 106, 2, 'en|106|2'),
(1129, 'en', NULL, '1234-variant-96', NULL, NULL, NULL, NULL, NULL, NULL, 106, 3, 'en|106|3'),
(1130, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 106, 4, 'default|106|4'),
(1131, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 106, 8, 'default|106|8'),
(1132, 'en', NULL, '1234-variant-96', NULL, NULL, NULL, NULL, NULL, NULL, 106, 9, 'en|106|9'),
(1133, 'en', NULL, '1234-variant-96', NULL, NULL, NULL, NULL, NULL, NULL, 106, 10, 'en|106|10'),
(1134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 106, 11, '106|11'),
(1135, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 106, 22, '106|22'),
(1136, NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, 106, 33, '106|33'),
(1137, NULL, NULL, '1234-variant-97', NULL, NULL, NULL, NULL, NULL, NULL, 107, 1, '107|1'),
(1138, 'en', NULL, 'Variant 97', NULL, NULL, NULL, NULL, NULL, NULL, 107, 2, 'en|107|2'),
(1139, 'en', NULL, '1234-variant-97', NULL, NULL, NULL, NULL, NULL, NULL, 107, 3, 'en|107|3'),
(1140, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 107, 4, 'default|107|4'),
(1141, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 107, 8, 'default|107|8'),
(1142, 'en', NULL, '1234-variant-97', NULL, NULL, NULL, NULL, NULL, NULL, 107, 9, 'en|107|9'),
(1143, 'en', NULL, '1234-variant-97', NULL, NULL, NULL, NULL, NULL, NULL, 107, 10, 'en|107|10'),
(1144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 107, 11, '107|11'),
(1145, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 107, 22, '107|22'),
(1146, NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 107, 33, '107|33'),
(1147, NULL, NULL, '1234-variant-98', NULL, NULL, NULL, NULL, NULL, NULL, 108, 1, '108|1'),
(1148, 'en', NULL, 'Variant 98', NULL, NULL, NULL, NULL, NULL, NULL, 108, 2, 'en|108|2'),
(1149, 'en', NULL, '1234-variant-98', NULL, NULL, NULL, NULL, NULL, NULL, 108, 3, 'en|108|3'),
(1150, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 108, 4, 'default|108|4'),
(1151, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 108, 8, 'default|108|8'),
(1152, 'en', NULL, '1234-variant-98', NULL, NULL, NULL, NULL, NULL, NULL, 108, 9, 'en|108|9'),
(1153, 'en', NULL, '1234-variant-98', NULL, NULL, NULL, NULL, NULL, NULL, 108, 10, 'en|108|10'),
(1154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 108, 11, '108|11'),
(1155, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 108, 22, '108|22'),
(1156, NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 108, 33, '108|33'),
(1157, NULL, NULL, '1234-variant-99', NULL, NULL, NULL, NULL, NULL, NULL, 109, 1, '109|1'),
(1158, 'en', NULL, 'Variant 99', NULL, NULL, NULL, NULL, NULL, NULL, 109, 2, 'en|109|2'),
(1159, 'en', NULL, '1234-variant-99', NULL, NULL, NULL, NULL, NULL, NULL, 109, 3, 'en|109|3'),
(1160, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 109, 4, 'default|109|4'),
(1161, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 109, 8, 'default|109|8'),
(1162, 'en', NULL, '1234-variant-99', NULL, NULL, NULL, NULL, NULL, NULL, 109, 9, 'en|109|9'),
(1163, 'en', NULL, '1234-variant-99', NULL, NULL, NULL, NULL, NULL, NULL, 109, 10, 'en|109|10'),
(1164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 109, 11, '109|11'),
(1165, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 109, 22, '109|22'),
(1166, NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, 109, 33, '109|33'),
(1167, NULL, NULL, '1234-variant-100', NULL, NULL, NULL, NULL, NULL, NULL, 110, 1, '110|1'),
(1168, 'en', NULL, 'Variant 100', NULL, NULL, NULL, NULL, NULL, NULL, 110, 2, 'en|110|2'),
(1169, 'en', NULL, '1234-variant-100', NULL, NULL, NULL, NULL, NULL, NULL, 110, 3, 'en|110|3'),
(1170, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 110, 4, 'default|110|4'),
(1171, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 110, 8, 'default|110|8'),
(1172, 'en', NULL, '1234-variant-100', NULL, NULL, NULL, NULL, NULL, NULL, 110, 9, 'en|110|9'),
(1173, 'en', NULL, '1234-variant-100', NULL, NULL, NULL, NULL, NULL, NULL, 110, 10, 'en|110|10'),
(1174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 110, 11, '110|11'),
(1175, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 110, 22, '110|22'),
(1176, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 110, 33, '110|33'),
(1177, NULL, NULL, '1234-variant-101', NULL, NULL, NULL, NULL, NULL, NULL, 111, 1, '111|1'),
(1178, 'en', NULL, 'Variant 101', NULL, NULL, NULL, NULL, NULL, NULL, 111, 2, 'en|111|2'),
(1179, 'en', NULL, '1234-variant-101', NULL, NULL, NULL, NULL, NULL, NULL, 111, 3, 'en|111|3'),
(1180, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 111, 4, 'default|111|4'),
(1181, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 111, 8, 'default|111|8'),
(1182, 'en', NULL, '1234-variant-101', NULL, NULL, NULL, NULL, NULL, NULL, 111, 9, 'en|111|9'),
(1183, 'en', NULL, '1234-variant-101', NULL, NULL, NULL, NULL, NULL, NULL, 111, 10, 'en|111|10'),
(1184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 111, 11, '111|11'),
(1185, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 111, 22, '111|22'),
(1186, NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, 111, 33, '111|33'),
(1187, NULL, NULL, '1234-variant-102', NULL, NULL, NULL, NULL, NULL, NULL, 112, 1, '112|1'),
(1188, 'en', NULL, 'Variant 102', NULL, NULL, NULL, NULL, NULL, NULL, 112, 2, 'en|112|2'),
(1189, 'en', NULL, '1234-variant-102', NULL, NULL, NULL, NULL, NULL, NULL, 112, 3, 'en|112|3'),
(1190, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 112, 4, 'default|112|4'),
(1191, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 112, 8, 'default|112|8'),
(1192, 'en', NULL, '1234-variant-102', NULL, NULL, NULL, NULL, NULL, NULL, 112, 9, 'en|112|9'),
(1193, 'en', NULL, '1234-variant-102', NULL, NULL, NULL, NULL, NULL, NULL, 112, 10, 'en|112|10'),
(1194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 112, 11, '112|11'),
(1195, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 112, 22, '112|22'),
(1196, NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 112, 33, '112|33'),
(1197, NULL, NULL, '1234-variant-103', NULL, NULL, NULL, NULL, NULL, NULL, 113, 1, '113|1'),
(1198, 'en', NULL, 'Variant 103', NULL, NULL, NULL, NULL, NULL, NULL, 113, 2, 'en|113|2'),
(1199, 'en', NULL, '1234-variant-103', NULL, NULL, NULL, NULL, NULL, NULL, 113, 3, 'en|113|3'),
(1200, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 113, 4, 'default|113|4'),
(1201, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 113, 8, 'default|113|8'),
(1202, 'en', NULL, '1234-variant-103', NULL, NULL, NULL, NULL, NULL, NULL, 113, 9, 'en|113|9'),
(1203, 'en', NULL, '1234-variant-103', NULL, NULL, NULL, NULL, NULL, NULL, 113, 10, 'en|113|10'),
(1204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 113, 11, '113|11'),
(1205, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 113, 22, '113|22'),
(1206, NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 113, 33, '113|33'),
(1207, NULL, NULL, '1234-variant-104', NULL, NULL, NULL, NULL, NULL, NULL, 114, 1, '114|1'),
(1208, 'en', NULL, 'Variant 104', NULL, NULL, NULL, NULL, NULL, NULL, 114, 2, 'en|114|2'),
(1209, 'en', NULL, '1234-variant-104', NULL, NULL, NULL, NULL, NULL, NULL, 114, 3, 'en|114|3'),
(1210, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 114, 4, 'default|114|4'),
(1211, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 114, 8, 'default|114|8'),
(1212, 'en', NULL, '1234-variant-104', NULL, NULL, NULL, NULL, NULL, NULL, 114, 9, 'en|114|9'),
(1213, 'en', NULL, '1234-variant-104', NULL, NULL, NULL, NULL, NULL, NULL, 114, 10, 'en|114|10'),
(1214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 114, 11, '114|11'),
(1215, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 114, 22, '114|22'),
(1216, NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, 114, 33, '114|33'),
(1217, NULL, NULL, '1234-variant-105', NULL, NULL, NULL, NULL, NULL, NULL, 115, 1, '115|1'),
(1218, 'en', NULL, 'Variant 105', NULL, NULL, NULL, NULL, NULL, NULL, 115, 2, 'en|115|2'),
(1219, 'en', NULL, '1234-variant-105', NULL, NULL, NULL, NULL, NULL, NULL, 115, 3, 'en|115|3'),
(1220, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 115, 4, 'default|115|4'),
(1221, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 115, 8, 'default|115|8'),
(1222, 'en', NULL, '1234-variant-105', NULL, NULL, NULL, NULL, NULL, NULL, 115, 9, 'en|115|9'),
(1223, 'en', NULL, '1234-variant-105', NULL, NULL, NULL, NULL, NULL, NULL, 115, 10, 'en|115|10'),
(1224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 115, 11, '115|11'),
(1225, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 115, 22, '115|22'),
(1226, NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, 115, 33, '115|33'),
(1227, NULL, NULL, '1234-variant-106', NULL, NULL, NULL, NULL, NULL, NULL, 116, 1, '116|1'),
(1228, 'en', NULL, 'Variant 106', NULL, NULL, NULL, NULL, NULL, NULL, 116, 2, 'en|116|2'),
(1229, 'en', NULL, '1234-variant-106', NULL, NULL, NULL, NULL, NULL, NULL, 116, 3, 'en|116|3'),
(1230, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 116, 4, 'default|116|4'),
(1231, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 116, 8, 'default|116|8'),
(1232, 'en', NULL, '1234-variant-106', NULL, NULL, NULL, NULL, NULL, NULL, 116, 9, 'en|116|9'),
(1233, 'en', NULL, '1234-variant-106', NULL, NULL, NULL, NULL, NULL, NULL, 116, 10, 'en|116|10'),
(1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 116, 11, '116|11'),
(1235, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 116, 22, '116|22'),
(1236, NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, 116, 33, '116|33'),
(1237, NULL, NULL, '1234-variant-107', NULL, NULL, NULL, NULL, NULL, NULL, 117, 1, '117|1'),
(1238, 'en', NULL, 'Variant 107', NULL, NULL, NULL, NULL, NULL, NULL, 117, 2, 'en|117|2'),
(1239, 'en', NULL, '1234-variant-107', NULL, NULL, NULL, NULL, NULL, NULL, 117, 3, 'en|117|3'),
(1240, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 117, 4, 'default|117|4'),
(1241, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 117, 8, 'default|117|8'),
(1242, 'en', NULL, '1234-variant-107', NULL, NULL, NULL, NULL, NULL, NULL, 117, 9, 'en|117|9'),
(1243, 'en', NULL, '1234-variant-107', NULL, NULL, NULL, NULL, NULL, NULL, 117, 10, 'en|117|10'),
(1244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, 11, '117|11'),
(1245, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 117, 22, '117|22'),
(1246, NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, NULL, 117, 33, '117|33'),
(1247, NULL, NULL, '1234-variant-108', NULL, NULL, NULL, NULL, NULL, NULL, 118, 1, '118|1'),
(1248, 'en', NULL, 'Variant 108', NULL, NULL, NULL, NULL, NULL, NULL, 118, 2, 'en|118|2'),
(1249, 'en', NULL, '1234-variant-108', NULL, NULL, NULL, NULL, NULL, NULL, 118, 3, 'en|118|3'),
(1250, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 118, 4, 'default|118|4'),
(1251, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 118, 8, 'default|118|8'),
(1252, 'en', NULL, '1234-variant-108', NULL, NULL, NULL, NULL, NULL, NULL, 118, 9, 'en|118|9'),
(1253, 'en', NULL, '1234-variant-108', NULL, NULL, NULL, NULL, NULL, NULL, 118, 10, 'en|118|10'),
(1254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 118, 11, '118|11'),
(1255, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 118, 22, '118|22'),
(1256, NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 118, 33, '118|33'),
(1257, NULL, NULL, '1234-variant-109', NULL, NULL, NULL, NULL, NULL, NULL, 119, 1, '119|1'),
(1258, 'en', NULL, 'Variant 109', NULL, NULL, NULL, NULL, NULL, NULL, 119, 2, 'en|119|2'),
(1259, 'en', NULL, '1234-variant-109', NULL, NULL, NULL, NULL, NULL, NULL, 119, 3, 'en|119|3'),
(1260, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 119, 4, 'default|119|4'),
(1261, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 119, 8, 'default|119|8'),
(1262, 'en', NULL, '1234-variant-109', NULL, NULL, NULL, NULL, NULL, NULL, 119, 9, 'en|119|9'),
(1263, 'en', NULL, '1234-variant-109', NULL, NULL, NULL, NULL, NULL, NULL, 119, 10, 'en|119|10'),
(1264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 119, 11, '119|11'),
(1265, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 119, 22, '119|22'),
(1266, NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, 119, 33, '119|33'),
(1267, NULL, NULL, '1234-variant-110', NULL, NULL, NULL, NULL, NULL, NULL, 120, 1, '120|1'),
(1268, 'en', NULL, 'Variant 110', NULL, NULL, NULL, NULL, NULL, NULL, 120, 2, 'en|120|2'),
(1269, 'en', NULL, '1234-variant-110', NULL, NULL, NULL, NULL, NULL, NULL, 120, 3, 'en|120|3'),
(1270, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 120, 4, 'default|120|4'),
(1271, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 120, 8, 'default|120|8'),
(1272, 'en', NULL, '1234-variant-110', NULL, NULL, NULL, NULL, NULL, NULL, 120, 9, 'en|120|9'),
(1273, 'en', NULL, '1234-variant-110', NULL, NULL, NULL, NULL, NULL, NULL, 120, 10, 'en|120|10'),
(1274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120, 11, '120|11'),
(1275, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 120, 22, '120|22'),
(1276, NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, 120, 33, '120|33'),
(1277, NULL, NULL, '1234-variant-111', NULL, NULL, NULL, NULL, NULL, NULL, 121, 1, '121|1'),
(1278, 'en', NULL, 'Variant 111', NULL, NULL, NULL, NULL, NULL, NULL, 121, 2, 'en|121|2'),
(1279, 'en', NULL, '1234-variant-111', NULL, NULL, NULL, NULL, NULL, NULL, 121, 3, 'en|121|3'),
(1280, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 121, 4, 'default|121|4'),
(1281, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 121, 8, 'default|121|8'),
(1282, 'en', NULL, '1234-variant-111', NULL, NULL, NULL, NULL, NULL, NULL, 121, 9, 'en|121|9'),
(1283, 'en', NULL, '1234-variant-111', NULL, NULL, NULL, NULL, NULL, NULL, 121, 10, 'en|121|10'),
(1284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 121, 11, '121|11'),
(1285, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 121, 22, '121|22'),
(1286, NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, NULL, 121, 33, '121|33'),
(1287, NULL, NULL, '1234-variant-112', NULL, NULL, NULL, NULL, NULL, NULL, 122, 1, '122|1'),
(1288, 'en', NULL, 'Variant 112', NULL, NULL, NULL, NULL, NULL, NULL, 122, 2, 'en|122|2'),
(1289, 'en', NULL, '1234-variant-112', NULL, NULL, NULL, NULL, NULL, NULL, 122, 3, 'en|122|3'),
(1290, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 122, 4, 'default|122|4'),
(1291, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 122, 8, 'default|122|8'),
(1292, 'en', NULL, '1234-variant-112', NULL, NULL, NULL, NULL, NULL, NULL, 122, 9, 'en|122|9'),
(1293, 'en', NULL, '1234-variant-112', NULL, NULL, NULL, NULL, NULL, NULL, 122, 10, 'en|122|10'),
(1294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 122, 11, '122|11'),
(1295, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 122, 22, '122|22'),
(1296, NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, 122, 33, '122|33'),
(1297, NULL, NULL, '1234-variant-113', NULL, NULL, NULL, NULL, NULL, NULL, 123, 1, '123|1'),
(1298, 'en', NULL, 'Variant 113', NULL, NULL, NULL, NULL, NULL, NULL, 123, 2, 'en|123|2'),
(1299, 'en', NULL, '1234-variant-113', NULL, NULL, NULL, NULL, NULL, NULL, 123, 3, 'en|123|3'),
(1300, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 123, 4, 'default|123|4'),
(1301, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 123, 8, 'default|123|8'),
(1302, 'en', NULL, '1234-variant-113', NULL, NULL, NULL, NULL, NULL, NULL, 123, 9, 'en|123|9'),
(1303, 'en', NULL, '1234-variant-113', NULL, NULL, NULL, NULL, NULL, NULL, 123, 10, 'en|123|10'),
(1304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 123, 11, '123|11'),
(1305, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 123, 22, '123|22'),
(1306, NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, 123, 33, '123|33'),
(1307, NULL, NULL, '1234-variant-114', NULL, NULL, NULL, NULL, NULL, NULL, 124, 1, '124|1'),
(1308, 'en', NULL, 'Variant 114', NULL, NULL, NULL, NULL, NULL, NULL, 124, 2, 'en|124|2'),
(1309, 'en', NULL, '1234-variant-114', NULL, NULL, NULL, NULL, NULL, NULL, 124, 3, 'en|124|3'),
(1310, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 124, 4, 'default|124|4'),
(1311, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 124, 8, 'default|124|8'),
(1312, 'en', NULL, '1234-variant-114', NULL, NULL, NULL, NULL, NULL, NULL, 124, 9, 'en|124|9'),
(1313, 'en', NULL, '1234-variant-114', NULL, NULL, NULL, NULL, NULL, NULL, 124, 10, 'en|124|10'),
(1314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 124, 11, '124|11'),
(1315, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 124, 22, '124|22'),
(1316, NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 124, 33, '124|33'),
(1317, NULL, NULL, '1234-variant-115', NULL, NULL, NULL, NULL, NULL, NULL, 125, 1, '125|1'),
(1318, 'en', NULL, 'Variant 115', NULL, NULL, NULL, NULL, NULL, NULL, 125, 2, 'en|125|2'),
(1319, 'en', NULL, '1234-variant-115', NULL, NULL, NULL, NULL, NULL, NULL, 125, 3, 'en|125|3'),
(1320, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 125, 4, 'default|125|4'),
(1321, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 125, 8, 'default|125|8'),
(1322, 'en', NULL, '1234-variant-115', NULL, NULL, NULL, NULL, NULL, NULL, 125, 9, 'en|125|9'),
(1323, 'en', NULL, '1234-variant-115', NULL, NULL, NULL, NULL, NULL, NULL, 125, 10, 'en|125|10'),
(1324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 125, 11, '125|11'),
(1325, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 125, 22, '125|22'),
(1326, NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, 125, 33, '125|33'),
(1327, NULL, NULL, '1234-variant-116', NULL, NULL, NULL, NULL, NULL, NULL, 126, 1, '126|1'),
(1328, 'en', NULL, 'Variant 116', NULL, NULL, NULL, NULL, NULL, NULL, 126, 2, 'en|126|2'),
(1329, 'en', NULL, '1234-variant-116', NULL, NULL, NULL, NULL, NULL, NULL, 126, 3, 'en|126|3'),
(1330, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 126, 4, 'default|126|4'),
(1331, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 126, 8, 'default|126|8'),
(1332, 'en', NULL, '1234-variant-116', NULL, NULL, NULL, NULL, NULL, NULL, 126, 9, 'en|126|9'),
(1333, 'en', NULL, '1234-variant-116', NULL, NULL, NULL, NULL, NULL, NULL, 126, 10, 'en|126|10'),
(1334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 126, 11, '126|11'),
(1335, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 126, 22, '126|22'),
(1336, NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, 126, 33, '126|33'),
(1337, NULL, NULL, '1234-variant-117', NULL, NULL, NULL, NULL, NULL, NULL, 127, 1, '127|1'),
(1338, 'en', NULL, 'Variant 117', NULL, NULL, NULL, NULL, NULL, NULL, 127, 2, 'en|127|2'),
(1339, 'en', NULL, '1234-variant-117', NULL, NULL, NULL, NULL, NULL, NULL, 127, 3, 'en|127|3'),
(1340, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 127, 4, 'default|127|4'),
(1341, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 127, 8, 'default|127|8'),
(1342, 'en', NULL, '1234-variant-117', NULL, NULL, NULL, NULL, NULL, NULL, 127, 9, 'en|127|9'),
(1343, 'en', NULL, '1234-variant-117', NULL, NULL, NULL, NULL, NULL, NULL, 127, 10, 'en|127|10'),
(1344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 127, 11, '127|11'),
(1345, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 127, 22, '127|22'),
(1346, NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, 127, 33, '127|33'),
(1347, NULL, NULL, '1234-variant-118', NULL, NULL, NULL, NULL, NULL, NULL, 128, 1, '128|1'),
(1348, 'en', NULL, 'Variant 118', NULL, NULL, NULL, NULL, NULL, NULL, 128, 2, 'en|128|2'),
(1349, 'en', NULL, '1234-variant-118', NULL, NULL, NULL, NULL, NULL, NULL, 128, 3, 'en|128|3'),
(1350, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 128, 4, 'default|128|4'),
(1351, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 128, 8, 'default|128|8'),
(1352, 'en', NULL, '1234-variant-118', NULL, NULL, NULL, NULL, NULL, NULL, 128, 9, 'en|128|9'),
(1353, 'en', NULL, '1234-variant-118', NULL, NULL, NULL, NULL, NULL, NULL, 128, 10, 'en|128|10'),
(1354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 128, 11, '128|11'),
(1355, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 128, 22, '128|22'),
(1356, NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, 128, 33, '128|33'),
(1357, NULL, NULL, '1234-variant-119', NULL, NULL, NULL, NULL, NULL, NULL, 129, 1, '129|1'),
(1358, 'en', NULL, 'Variant 119', NULL, NULL, NULL, NULL, NULL, NULL, 129, 2, 'en|129|2'),
(1359, 'en', NULL, '1234-variant-119', NULL, NULL, NULL, NULL, NULL, NULL, 129, 3, 'en|129|3'),
(1360, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 129, 4, 'default|129|4'),
(1361, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 129, 8, 'default|129|8'),
(1362, 'en', NULL, '1234-variant-119', NULL, NULL, NULL, NULL, NULL, NULL, 129, 9, 'en|129|9'),
(1363, 'en', NULL, '1234-variant-119', NULL, NULL, NULL, NULL, NULL, NULL, 129, 10, 'en|129|10'),
(1364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 129, 11, '129|11'),
(1365, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 129, 22, '129|22'),
(1366, NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, 129, 33, '129|33'),
(1367, NULL, NULL, '1234-variant-120', NULL, NULL, NULL, NULL, NULL, NULL, 130, 1, '130|1'),
(1368, 'en', NULL, 'Variant 120', NULL, NULL, NULL, NULL, NULL, NULL, 130, 2, 'en|130|2'),
(1369, 'en', NULL, '1234-variant-120', NULL, NULL, NULL, NULL, NULL, NULL, 130, 3, 'en|130|3'),
(1370, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 130, 4, 'default|130|4'),
(1371, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 130, 8, 'default|130|8'),
(1372, 'en', NULL, '1234-variant-120', NULL, NULL, NULL, NULL, NULL, NULL, 130, 9, 'en|130|9'),
(1373, 'en', NULL, '1234-variant-120', NULL, NULL, NULL, NULL, NULL, NULL, 130, 10, 'en|130|10'),
(1374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 130, 11, '130|11'),
(1375, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 130, 22, '130|22'),
(1376, NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, 130, 33, '130|33'),
(1377, NULL, NULL, '1234-variant-121', NULL, NULL, NULL, NULL, NULL, NULL, 131, 1, '131|1'),
(1378, 'en', NULL, 'Variant 121', NULL, NULL, NULL, NULL, NULL, NULL, 131, 2, 'en|131|2'),
(1379, 'en', NULL, '1234-variant-121', NULL, NULL, NULL, NULL, NULL, NULL, 131, 3, 'en|131|3'),
(1380, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 131, 4, 'default|131|4'),
(1381, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 131, 8, 'default|131|8'),
(1382, 'en', NULL, '1234-variant-121', NULL, NULL, NULL, NULL, NULL, NULL, 131, 9, 'en|131|9'),
(1383, 'en', NULL, '1234-variant-121', NULL, NULL, NULL, NULL, NULL, NULL, 131, 10, 'en|131|10'),
(1384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 131, 11, '131|11'),
(1385, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 131, 22, '131|22'),
(1386, NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, 131, 33, '131|33'),
(1387, NULL, NULL, '1234-variant-122', NULL, NULL, NULL, NULL, NULL, NULL, 132, 1, '132|1'),
(1388, 'en', NULL, 'Variant 122', NULL, NULL, NULL, NULL, NULL, NULL, 132, 2, 'en|132|2'),
(1389, 'en', NULL, '1234-variant-122', NULL, NULL, NULL, NULL, NULL, NULL, 132, 3, 'en|132|3'),
(1390, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 132, 4, 'default|132|4'),
(1391, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 132, 8, 'default|132|8'),
(1392, 'en', NULL, '1234-variant-122', NULL, NULL, NULL, NULL, NULL, NULL, 132, 9, 'en|132|9'),
(1393, 'en', NULL, '1234-variant-122', NULL, NULL, NULL, NULL, NULL, NULL, 132, 10, 'en|132|10'),
(1394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 132, 11, '132|11'),
(1395, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 132, 22, '132|22'),
(1396, NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, 132, 33, '132|33'),
(1397, NULL, NULL, '1234-variant-123', NULL, NULL, NULL, NULL, NULL, NULL, 133, 1, '133|1'),
(1398, 'en', NULL, 'Variant 123', NULL, NULL, NULL, NULL, NULL, NULL, 133, 2, 'en|133|2'),
(1399, 'en', NULL, '1234-variant-123', NULL, NULL, NULL, NULL, NULL, NULL, 133, 3, 'en|133|3'),
(1400, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 133, 4, 'default|133|4'),
(1401, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 133, 8, 'default|133|8'),
(1402, 'en', NULL, '1234-variant-123', NULL, NULL, NULL, NULL, NULL, NULL, 133, 9, 'en|133|9'),
(1403, 'en', NULL, '1234-variant-123', NULL, NULL, NULL, NULL, NULL, NULL, 133, 10, 'en|133|10'),
(1404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 133, 11, '133|11'),
(1405, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 133, 22, '133|22'),
(1406, NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, 133, 33, '133|33'),
(1407, NULL, NULL, '1234-variant-124', NULL, NULL, NULL, NULL, NULL, NULL, 134, 1, '134|1'),
(1408, 'en', NULL, 'Variant 124', NULL, NULL, NULL, NULL, NULL, NULL, 134, 2, 'en|134|2'),
(1409, 'en', NULL, '1234-variant-124', NULL, NULL, NULL, NULL, NULL, NULL, 134, 3, 'en|134|3'),
(1410, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 134, 4, 'default|134|4'),
(1411, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 134, 8, 'default|134|8'),
(1412, 'en', NULL, '1234-variant-124', NULL, NULL, NULL, NULL, NULL, NULL, 134, 9, 'en|134|9'),
(1413, 'en', NULL, '1234-variant-124', NULL, NULL, NULL, NULL, NULL, NULL, 134, 10, 'en|134|10'),
(1414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 134, 11, '134|11'),
(1415, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 134, 22, '134|22'),
(1416, NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, 134, 33, '134|33'),
(1417, NULL, NULL, '1234-variant-125', NULL, NULL, NULL, NULL, NULL, NULL, 135, 1, '135|1'),
(1418, 'en', NULL, 'Variant 125', NULL, NULL, NULL, NULL, NULL, NULL, 135, 2, 'en|135|2'),
(1419, 'en', NULL, '1234-variant-125', NULL, NULL, NULL, NULL, NULL, NULL, 135, 3, 'en|135|3'),
(1420, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 135, 4, 'default|135|4'),
(1421, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 135, 8, 'default|135|8'),
(1422, 'en', NULL, '1234-variant-125', NULL, NULL, NULL, NULL, NULL, NULL, 135, 9, 'en|135|9'),
(1423, 'en', NULL, '1234-variant-125', NULL, NULL, NULL, NULL, NULL, NULL, 135, 10, 'en|135|10'),
(1424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 135, 11, '135|11'),
(1425, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 135, 22, '135|22'),
(1426, NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, 135, 33, '135|33'),
(1427, NULL, NULL, '1234-variant-126', NULL, NULL, NULL, NULL, NULL, NULL, 136, 1, '136|1'),
(1428, 'en', NULL, 'Variant 126', NULL, NULL, NULL, NULL, NULL, NULL, 136, 2, 'en|136|2'),
(1429, 'en', NULL, '1234-variant-126', NULL, NULL, NULL, NULL, NULL, NULL, 136, 3, 'en|136|3'),
(1430, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 136, 4, 'default|136|4'),
(1431, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 136, 8, 'default|136|8'),
(1432, 'en', NULL, '1234-variant-126', NULL, NULL, NULL, NULL, NULL, NULL, 136, 9, 'en|136|9'),
(1433, 'en', NULL, '1234-variant-126', NULL, NULL, NULL, NULL, NULL, NULL, 136, 10, 'en|136|10'),
(1434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136, 11, '136|11'),
(1435, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 136, 22, '136|22'),
(1436, NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, 136, 33, '136|33'),
(1437, NULL, NULL, '1234-variant-127', NULL, NULL, NULL, NULL, NULL, NULL, 137, 1, '137|1'),
(1438, 'en', NULL, 'Variant 127', NULL, NULL, NULL, NULL, NULL, NULL, 137, 2, 'en|137|2'),
(1439, 'en', NULL, '1234-variant-127', NULL, NULL, NULL, NULL, NULL, NULL, 137, 3, 'en|137|3'),
(1440, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 137, 4, 'default|137|4'),
(1441, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 137, 8, 'default|137|8'),
(1442, 'en', NULL, '1234-variant-127', NULL, NULL, NULL, NULL, NULL, NULL, 137, 9, 'en|137|9'),
(1443, 'en', NULL, '1234-variant-127', NULL, NULL, NULL, NULL, NULL, NULL, 137, 10, 'en|137|10'),
(1444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 137, 11, '137|11'),
(1445, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 137, 22, '137|22'),
(1446, NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, 137, 33, '137|33'),
(1447, NULL, NULL, '1234-variant-128', NULL, NULL, NULL, NULL, NULL, NULL, 138, 1, '138|1'),
(1448, 'en', NULL, 'Variant 128', NULL, NULL, NULL, NULL, NULL, NULL, 138, 2, 'en|138|2'),
(1449, 'en', NULL, '1234-variant-128', NULL, NULL, NULL, NULL, NULL, NULL, 138, 3, 'en|138|3'),
(1450, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 138, 4, 'default|138|4'),
(1451, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 138, 8, 'default|138|8'),
(1452, 'en', NULL, '1234-variant-128', NULL, NULL, NULL, NULL, NULL, NULL, 138, 9, 'en|138|9'),
(1453, 'en', NULL, '1234-variant-128', NULL, NULL, NULL, NULL, NULL, NULL, 138, 10, 'en|138|10'),
(1454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 138, 11, '138|11'),
(1455, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 138, 22, '138|22'),
(1456, NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, 138, 33, '138|33'),
(1457, NULL, NULL, '1234-variant-129', NULL, NULL, NULL, NULL, NULL, NULL, 139, 1, '139|1'),
(1458, 'en', NULL, 'Variant 129', NULL, NULL, NULL, NULL, NULL, NULL, 139, 2, 'en|139|2'),
(1459, 'en', NULL, '1234-variant-129', NULL, NULL, NULL, NULL, NULL, NULL, 139, 3, 'en|139|3'),
(1460, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 139, 4, 'default|139|4'),
(1461, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 139, 8, 'default|139|8'),
(1462, 'en', NULL, '1234-variant-129', NULL, NULL, NULL, NULL, NULL, NULL, 139, 9, 'en|139|9'),
(1463, 'en', NULL, '1234-variant-129', NULL, NULL, NULL, NULL, NULL, NULL, 139, 10, 'en|139|10'),
(1464, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 139, 11, '139|11'),
(1465, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 139, 22, '139|22'),
(1466, NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, 139, 33, '139|33'),
(1467, NULL, NULL, '1234-variant-130', NULL, NULL, NULL, NULL, NULL, NULL, 140, 1, '140|1'),
(1468, 'en', NULL, 'Variant 130', NULL, NULL, NULL, NULL, NULL, NULL, 140, 2, 'en|140|2'),
(1469, 'en', NULL, '1234-variant-130', NULL, NULL, NULL, NULL, NULL, NULL, 140, 3, 'en|140|3'),
(1470, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 140, 4, 'default|140|4'),
(1471, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 140, 8, 'default|140|8'),
(1472, 'en', NULL, '1234-variant-130', NULL, NULL, NULL, NULL, NULL, NULL, 140, 9, 'en|140|9'),
(1473, 'en', NULL, '1234-variant-130', NULL, NULL, NULL, NULL, NULL, NULL, 140, 10, 'en|140|10'),
(1474, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140, 11, '140|11'),
(1475, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 140, 22, '140|22'),
(1476, NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, 140, 33, '140|33'),
(1477, NULL, NULL, '1234-variant-131', NULL, NULL, NULL, NULL, NULL, NULL, 141, 1, '141|1'),
(1478, 'en', NULL, 'Variant 131', NULL, NULL, NULL, NULL, NULL, NULL, 141, 2, 'en|141|2'),
(1479, 'en', NULL, '1234-variant-131', NULL, NULL, NULL, NULL, NULL, NULL, 141, 3, 'en|141|3'),
(1480, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 141, 4, 'default|141|4'),
(1481, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 141, 8, 'default|141|8'),
(1482, 'en', NULL, '1234-variant-131', NULL, NULL, NULL, NULL, NULL, NULL, 141, 9, 'en|141|9'),
(1483, 'en', NULL, '1234-variant-131', NULL, NULL, NULL, NULL, NULL, NULL, 141, 10, 'en|141|10'),
(1484, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 141, 11, '141|11'),
(1485, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 141, 22, '141|22'),
(1486, NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, 141, 33, '141|33'),
(1487, NULL, NULL, '1234-variant-132', NULL, NULL, NULL, NULL, NULL, NULL, 142, 1, '142|1'),
(1488, 'en', NULL, 'Variant 132', NULL, NULL, NULL, NULL, NULL, NULL, 142, 2, 'en|142|2'),
(1489, 'en', NULL, '1234-variant-132', NULL, NULL, NULL, NULL, NULL, NULL, 142, 3, 'en|142|3'),
(1490, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 142, 4, 'default|142|4'),
(1491, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 142, 8, 'default|142|8'),
(1492, 'en', NULL, '1234-variant-132', NULL, NULL, NULL, NULL, NULL, NULL, 142, 9, 'en|142|9'),
(1493, 'en', NULL, '1234-variant-132', NULL, NULL, NULL, NULL, NULL, NULL, 142, 10, 'en|142|10'),
(1494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 142, 11, '142|11'),
(1495, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 142, 22, '142|22'),
(1496, NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, 142, 33, '142|33'),
(1497, NULL, NULL, '1234-variant-133', NULL, NULL, NULL, NULL, NULL, NULL, 143, 1, '143|1'),
(1498, 'en', NULL, 'Variant 133', NULL, NULL, NULL, NULL, NULL, NULL, 143, 2, 'en|143|2'),
(1499, 'en', NULL, '1234-variant-133', NULL, NULL, NULL, NULL, NULL, NULL, 143, 3, 'en|143|3'),
(1500, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 143, 4, 'default|143|4'),
(1501, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 143, 8, 'default|143|8'),
(1502, 'en', NULL, '1234-variant-133', NULL, NULL, NULL, NULL, NULL, NULL, 143, 9, 'en|143|9'),
(1503, 'en', NULL, '1234-variant-133', NULL, NULL, NULL, NULL, NULL, NULL, 143, 10, 'en|143|10'),
(1504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 143, 11, '143|11'),
(1505, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 143, 22, '143|22'),
(1506, NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, 143, 33, '143|33'),
(1507, NULL, NULL, '1234-variant-134', NULL, NULL, NULL, NULL, NULL, NULL, 144, 1, '144|1'),
(1508, 'en', NULL, 'Variant 134', NULL, NULL, NULL, NULL, NULL, NULL, 144, 2, 'en|144|2'),
(1509, 'en', NULL, '1234-variant-134', NULL, NULL, NULL, NULL, NULL, NULL, 144, 3, 'en|144|3'),
(1510, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 144, 4, 'default|144|4'),
(1511, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 144, 8, 'default|144|8'),
(1512, 'en', NULL, '1234-variant-134', NULL, NULL, NULL, NULL, NULL, NULL, 144, 9, 'en|144|9'),
(1513, 'en', NULL, '1234-variant-134', NULL, NULL, NULL, NULL, NULL, NULL, 144, 10, 'en|144|10'),
(1514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 144, 11, '144|11'),
(1515, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 144, 22, '144|22'),
(1516, NULL, NULL, NULL, NULL, 134, NULL, NULL, NULL, NULL, 144, 33, '144|33'),
(1517, NULL, NULL, '1234-variant-135', NULL, NULL, NULL, NULL, NULL, NULL, 145, 1, '145|1'),
(1518, 'en', NULL, 'Variant 135', NULL, NULL, NULL, NULL, NULL, NULL, 145, 2, 'en|145|2'),
(1519, 'en', NULL, '1234-variant-135', NULL, NULL, NULL, NULL, NULL, NULL, 145, 3, 'en|145|3'),
(1520, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 145, 4, 'default|145|4'),
(1521, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 145, 8, 'default|145|8'),
(1522, 'en', NULL, '1234-variant-135', NULL, NULL, NULL, NULL, NULL, NULL, 145, 9, 'en|145|9'),
(1523, 'en', NULL, '1234-variant-135', NULL, NULL, NULL, NULL, NULL, NULL, 145, 10, 'en|145|10'),
(1524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 145, 11, '145|11'),
(1525, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 145, 22, '145|22'),
(1526, NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, 145, 33, '145|33'),
(1527, NULL, NULL, '1234-variant-136', NULL, NULL, NULL, NULL, NULL, NULL, 146, 1, '146|1'),
(1528, 'en', NULL, 'Variant 136', NULL, NULL, NULL, NULL, NULL, NULL, 146, 2, 'en|146|2'),
(1529, 'en', NULL, '1234-variant-136', NULL, NULL, NULL, NULL, NULL, NULL, 146, 3, 'en|146|3'),
(1530, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 146, 4, 'default|146|4');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(1531, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 146, 8, 'default|146|8'),
(1532, 'en', NULL, '1234-variant-136', NULL, NULL, NULL, NULL, NULL, NULL, 146, 9, 'en|146|9'),
(1533, 'en', NULL, '1234-variant-136', NULL, NULL, NULL, NULL, NULL, NULL, 146, 10, 'en|146|10'),
(1534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 146, 11, '146|11'),
(1535, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 146, 22, '146|22'),
(1536, NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, 146, 33, '146|33'),
(1537, NULL, NULL, '1234-variant-137', NULL, NULL, NULL, NULL, NULL, NULL, 147, 1, '147|1'),
(1538, 'en', NULL, 'Variant 137', NULL, NULL, NULL, NULL, NULL, NULL, 147, 2, 'en|147|2'),
(1539, 'en', NULL, '1234-variant-137', NULL, NULL, NULL, NULL, NULL, NULL, 147, 3, 'en|147|3'),
(1540, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 147, 4, 'default|147|4'),
(1541, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 147, 8, 'default|147|8'),
(1542, 'en', NULL, '1234-variant-137', NULL, NULL, NULL, NULL, NULL, NULL, 147, 9, 'en|147|9'),
(1543, 'en', NULL, '1234-variant-137', NULL, NULL, NULL, NULL, NULL, NULL, 147, 10, 'en|147|10'),
(1544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 147, 11, '147|11'),
(1545, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 147, 22, '147|22'),
(1546, NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, 147, 33, '147|33'),
(1547, NULL, NULL, '1234-variant-138', NULL, NULL, NULL, NULL, NULL, NULL, 148, 1, '148|1'),
(1548, 'en', NULL, 'Variant 138', NULL, NULL, NULL, NULL, NULL, NULL, 148, 2, 'en|148|2'),
(1549, 'en', NULL, '1234-variant-138', NULL, NULL, NULL, NULL, NULL, NULL, 148, 3, 'en|148|3'),
(1550, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 148, 4, 'default|148|4'),
(1551, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 148, 8, 'default|148|8'),
(1552, 'en', NULL, '1234-variant-138', NULL, NULL, NULL, NULL, NULL, NULL, 148, 9, 'en|148|9'),
(1553, 'en', NULL, '1234-variant-138', NULL, NULL, NULL, NULL, NULL, NULL, 148, 10, 'en|148|10'),
(1554, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 148, 11, '148|11'),
(1555, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 148, 22, '148|22'),
(1556, NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 148, 33, '148|33'),
(1557, NULL, NULL, '1234-variant-139', NULL, NULL, NULL, NULL, NULL, NULL, 149, 1, '149|1'),
(1558, 'en', NULL, 'Variant 139', NULL, NULL, NULL, NULL, NULL, NULL, 149, 2, 'en|149|2'),
(1559, 'en', NULL, '1234-variant-139', NULL, NULL, NULL, NULL, NULL, NULL, 149, 3, 'en|149|3'),
(1560, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 149, 4, 'default|149|4'),
(1561, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 149, 8, 'default|149|8'),
(1562, 'en', NULL, '1234-variant-139', NULL, NULL, NULL, NULL, NULL, NULL, 149, 9, 'en|149|9'),
(1563, 'en', NULL, '1234-variant-139', NULL, NULL, NULL, NULL, NULL, NULL, 149, 10, 'en|149|10'),
(1564, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 149, 11, '149|11'),
(1565, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 149, 22, '149|22'),
(1566, NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, 149, 33, '149|33'),
(1567, NULL, NULL, '1234-variant-140', NULL, NULL, NULL, NULL, NULL, NULL, 150, 1, '150|1'),
(1568, 'en', NULL, 'Variant 140', NULL, NULL, NULL, NULL, NULL, NULL, 150, 2, 'en|150|2'),
(1569, 'en', NULL, '1234-variant-140', NULL, NULL, NULL, NULL, NULL, NULL, 150, 3, 'en|150|3'),
(1570, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 150, 4, 'default|150|4'),
(1571, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 150, 8, 'default|150|8'),
(1572, 'en', NULL, '1234-variant-140', NULL, NULL, NULL, NULL, NULL, NULL, 150, 9, 'en|150|9'),
(1573, 'en', NULL, '1234-variant-140', NULL, NULL, NULL, NULL, NULL, NULL, 150, 10, 'en|150|10'),
(1574, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 150, 11, '150|11'),
(1575, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 150, 22, '150|22'),
(1576, NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 150, 33, '150|33'),
(1577, NULL, NULL, '1234-variant-141', NULL, NULL, NULL, NULL, NULL, NULL, 151, 1, '151|1'),
(1578, 'en', NULL, 'Variant 141', NULL, NULL, NULL, NULL, NULL, NULL, 151, 2, 'en|151|2'),
(1579, 'en', NULL, '1234-variant-141', NULL, NULL, NULL, NULL, NULL, NULL, 151, 3, 'en|151|3'),
(1580, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 151, 4, 'default|151|4'),
(1581, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 151, 8, 'default|151|8'),
(1582, 'en', NULL, '1234-variant-141', NULL, NULL, NULL, NULL, NULL, NULL, 151, 9, 'en|151|9'),
(1583, 'en', NULL, '1234-variant-141', NULL, NULL, NULL, NULL, NULL, NULL, 151, 10, 'en|151|10'),
(1584, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 151, 11, '151|11'),
(1585, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 151, 22, '151|22'),
(1586, NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, 151, 33, '151|33'),
(1587, NULL, NULL, '1234-variant-142', NULL, NULL, NULL, NULL, NULL, NULL, 152, 1, '152|1'),
(1588, 'en', NULL, 'Variant 142', NULL, NULL, NULL, NULL, NULL, NULL, 152, 2, 'en|152|2'),
(1589, 'en', NULL, '1234-variant-142', NULL, NULL, NULL, NULL, NULL, NULL, 152, 3, 'en|152|3'),
(1590, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 152, 4, 'default|152|4'),
(1591, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 152, 8, 'default|152|8'),
(1592, 'en', NULL, '1234-variant-142', NULL, NULL, NULL, NULL, NULL, NULL, 152, 9, 'en|152|9'),
(1593, 'en', NULL, '1234-variant-142', NULL, NULL, NULL, NULL, NULL, NULL, 152, 10, 'en|152|10'),
(1594, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 152, 11, '152|11'),
(1595, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 152, 22, '152|22'),
(1596, NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, 152, 33, '152|33'),
(1597, NULL, NULL, '1234-variant-143', NULL, NULL, NULL, NULL, NULL, NULL, 153, 1, '153|1'),
(1598, 'en', NULL, 'Variant 143', NULL, NULL, NULL, NULL, NULL, NULL, 153, 2, 'en|153|2'),
(1599, 'en', NULL, '1234-variant-143', NULL, NULL, NULL, NULL, NULL, NULL, 153, 3, 'en|153|3'),
(1600, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 153, 4, 'default|153|4'),
(1601, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 153, 8, 'default|153|8'),
(1602, 'en', NULL, '1234-variant-143', NULL, NULL, NULL, NULL, NULL, NULL, 153, 9, 'en|153|9'),
(1603, 'en', NULL, '1234-variant-143', NULL, NULL, NULL, NULL, NULL, NULL, 153, 10, 'en|153|10'),
(1604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 153, 11, '153|11'),
(1605, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 153, 22, '153|22'),
(1606, NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, 153, 33, '153|33'),
(1607, NULL, NULL, '1234-variant-144', NULL, NULL, NULL, NULL, NULL, NULL, 154, 1, '154|1'),
(1608, 'en', NULL, 'Variant 144', NULL, NULL, NULL, NULL, NULL, NULL, 154, 2, 'en|154|2'),
(1609, 'en', NULL, '1234-variant-144', NULL, NULL, NULL, NULL, NULL, NULL, 154, 3, 'en|154|3'),
(1610, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 154, 4, 'default|154|4'),
(1611, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 154, 8, 'default|154|8'),
(1612, 'en', NULL, '1234-variant-144', NULL, NULL, NULL, NULL, NULL, NULL, 154, 9, 'en|154|9'),
(1613, 'en', NULL, '1234-variant-144', NULL, NULL, NULL, NULL, NULL, NULL, 154, 10, 'en|154|10'),
(1614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 154, 11, '154|11'),
(1615, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 154, 22, '154|22'),
(1616, NULL, NULL, NULL, NULL, 144, NULL, NULL, NULL, NULL, 154, 33, '154|33'),
(1617, NULL, NULL, '1234-variant-145', NULL, NULL, NULL, NULL, NULL, NULL, 155, 1, '155|1'),
(1618, 'en', NULL, 'Variant 145', NULL, NULL, NULL, NULL, NULL, NULL, 155, 2, 'en|155|2'),
(1619, 'en', NULL, '1234-variant-145', NULL, NULL, NULL, NULL, NULL, NULL, 155, 3, 'en|155|3'),
(1620, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 155, 4, 'default|155|4'),
(1621, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 155, 8, 'default|155|8'),
(1622, 'en', NULL, '1234-variant-145', NULL, NULL, NULL, NULL, NULL, NULL, 155, 9, 'en|155|9'),
(1623, 'en', NULL, '1234-variant-145', NULL, NULL, NULL, NULL, NULL, NULL, 155, 10, 'en|155|10'),
(1624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 155, 11, '155|11'),
(1625, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 155, 22, '155|22'),
(1626, NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, NULL, 155, 33, '155|33'),
(1627, NULL, NULL, '1234-variant-146', NULL, NULL, NULL, NULL, NULL, NULL, 156, 1, '156|1'),
(1628, 'en', NULL, 'Variant 146', NULL, NULL, NULL, NULL, NULL, NULL, 156, 2, 'en|156|2'),
(1629, 'en', NULL, '1234-variant-146', NULL, NULL, NULL, NULL, NULL, NULL, 156, 3, 'en|156|3'),
(1630, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 156, 4, 'default|156|4'),
(1631, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 156, 8, 'default|156|8'),
(1632, 'en', NULL, '1234-variant-146', NULL, NULL, NULL, NULL, NULL, NULL, 156, 9, 'en|156|9'),
(1633, 'en', NULL, '1234-variant-146', NULL, NULL, NULL, NULL, NULL, NULL, 156, 10, 'en|156|10'),
(1634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 156, 11, '156|11'),
(1635, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 156, 22, '156|22'),
(1636, NULL, NULL, NULL, NULL, 146, NULL, NULL, NULL, NULL, 156, 33, '156|33'),
(1637, NULL, NULL, '1234-variant-147', NULL, NULL, NULL, NULL, NULL, NULL, 157, 1, '157|1'),
(1638, 'en', NULL, 'Variant 147', NULL, NULL, NULL, NULL, NULL, NULL, 157, 2, 'en|157|2'),
(1639, 'en', NULL, '1234-variant-147', NULL, NULL, NULL, NULL, NULL, NULL, 157, 3, 'en|157|3'),
(1640, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 157, 4, 'default|157|4'),
(1641, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 157, 8, 'default|157|8'),
(1642, 'en', NULL, '1234-variant-147', NULL, NULL, NULL, NULL, NULL, NULL, 157, 9, 'en|157|9'),
(1643, 'en', NULL, '1234-variant-147', NULL, NULL, NULL, NULL, NULL, NULL, 157, 10, 'en|157|10'),
(1644, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 157, 11, '157|11'),
(1645, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 157, 22, '157|22'),
(1646, NULL, NULL, NULL, NULL, 147, NULL, NULL, NULL, NULL, 157, 33, '157|33'),
(1647, NULL, NULL, '1234-variant-148', NULL, NULL, NULL, NULL, NULL, NULL, 158, 1, '158|1'),
(1648, 'en', NULL, 'Variant 148', NULL, NULL, NULL, NULL, NULL, NULL, 158, 2, 'en|158|2'),
(1649, 'en', NULL, '1234-variant-148', NULL, NULL, NULL, NULL, NULL, NULL, 158, 3, 'en|158|3'),
(1650, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 158, 4, 'default|158|4'),
(1651, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 158, 8, 'default|158|8'),
(1652, 'en', NULL, '1234-variant-148', NULL, NULL, NULL, NULL, NULL, NULL, 158, 9, 'en|158|9'),
(1653, 'en', NULL, '1234-variant-148', NULL, NULL, NULL, NULL, NULL, NULL, 158, 10, 'en|158|10'),
(1654, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 158, 11, '158|11'),
(1655, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 158, 22, '158|22'),
(1656, NULL, NULL, NULL, NULL, 148, NULL, NULL, NULL, NULL, 158, 33, '158|33'),
(1657, NULL, NULL, '1234-variant-149', NULL, NULL, NULL, NULL, NULL, NULL, 159, 1, '159|1'),
(1658, 'en', NULL, 'Variant 149', NULL, NULL, NULL, NULL, NULL, NULL, 159, 2, 'en|159|2'),
(1659, 'en', NULL, '1234-variant-149', NULL, NULL, NULL, NULL, NULL, NULL, 159, 3, 'en|159|3'),
(1660, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 159, 4, 'default|159|4'),
(1661, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 159, 8, 'default|159|8'),
(1662, 'en', NULL, '1234-variant-149', NULL, NULL, NULL, NULL, NULL, NULL, 159, 9, 'en|159|9'),
(1663, 'en', NULL, '1234-variant-149', NULL, NULL, NULL, NULL, NULL, NULL, 159, 10, 'en|159|10'),
(1664, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 159, 11, '159|11'),
(1665, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 159, 22, '159|22'),
(1666, NULL, NULL, NULL, NULL, 149, NULL, NULL, NULL, NULL, 159, 33, '159|33'),
(1667, NULL, NULL, '1234-variant-150', NULL, NULL, NULL, NULL, NULL, NULL, 160, 1, '160|1'),
(1668, 'en', NULL, 'Variant 150', NULL, NULL, NULL, NULL, NULL, NULL, 160, 2, 'en|160|2'),
(1669, 'en', NULL, '1234-variant-150', NULL, NULL, NULL, NULL, NULL, NULL, 160, 3, 'en|160|3'),
(1670, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 160, 4, 'default|160|4'),
(1671, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 160, 8, 'default|160|8'),
(1672, 'en', NULL, '1234-variant-150', NULL, NULL, NULL, NULL, NULL, NULL, 160, 9, 'en|160|9'),
(1673, 'en', NULL, '1234-variant-150', NULL, NULL, NULL, NULL, NULL, NULL, 160, 10, 'en|160|10'),
(1674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, 11, '160|11'),
(1675, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 160, 22, '160|22'),
(1676, NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, 160, 33, '160|33'),
(1677, NULL, NULL, '1234-variant-151', NULL, NULL, NULL, NULL, NULL, NULL, 161, 1, '161|1'),
(1678, 'en', NULL, 'Variant 151', NULL, NULL, NULL, NULL, NULL, NULL, 161, 2, 'en|161|2'),
(1679, 'en', NULL, '1234-variant-151', NULL, NULL, NULL, NULL, NULL, NULL, 161, 3, 'en|161|3'),
(1680, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 161, 4, 'default|161|4'),
(1681, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 161, 8, 'default|161|8'),
(1682, 'en', NULL, '1234-variant-151', NULL, NULL, NULL, NULL, NULL, NULL, 161, 9, 'en|161|9'),
(1683, 'en', NULL, '1234-variant-151', NULL, NULL, NULL, NULL, NULL, NULL, 161, 10, 'en|161|10'),
(1684, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 161, 11, '161|11'),
(1685, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 161, 22, '161|22'),
(1686, NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL, NULL, 161, 33, '161|33'),
(1687, NULL, NULL, '1234-variant-152', NULL, NULL, NULL, NULL, NULL, NULL, 162, 1, '162|1'),
(1688, 'en', NULL, 'Variant 152', NULL, NULL, NULL, NULL, NULL, NULL, 162, 2, 'en|162|2'),
(1689, 'en', NULL, '1234-variant-152', NULL, NULL, NULL, NULL, NULL, NULL, 162, 3, 'en|162|3'),
(1690, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 162, 4, 'default|162|4'),
(1691, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 162, 8, 'default|162|8'),
(1692, 'en', NULL, '1234-variant-152', NULL, NULL, NULL, NULL, NULL, NULL, 162, 9, 'en|162|9'),
(1693, 'en', NULL, '1234-variant-152', NULL, NULL, NULL, NULL, NULL, NULL, 162, 10, 'en|162|10'),
(1694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 162, 11, '162|11'),
(1695, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 162, 22, '162|22'),
(1696, NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL, NULL, 162, 33, '162|33'),
(1697, NULL, NULL, '1234-variant-153', NULL, NULL, NULL, NULL, NULL, NULL, 163, 1, '163|1'),
(1698, 'en', NULL, 'Variant 153', NULL, NULL, NULL, NULL, NULL, NULL, 163, 2, 'en|163|2'),
(1699, 'en', NULL, '1234-variant-153', NULL, NULL, NULL, NULL, NULL, NULL, 163, 3, 'en|163|3'),
(1700, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 163, 4, 'default|163|4'),
(1701, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 163, 8, 'default|163|8'),
(1702, 'en', NULL, '1234-variant-153', NULL, NULL, NULL, NULL, NULL, NULL, 163, 9, 'en|163|9'),
(1703, 'en', NULL, '1234-variant-153', NULL, NULL, NULL, NULL, NULL, NULL, 163, 10, 'en|163|10'),
(1704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 163, 11, '163|11'),
(1705, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 163, 22, '163|22'),
(1706, NULL, NULL, NULL, NULL, 153, NULL, NULL, NULL, NULL, 163, 33, '163|33'),
(1707, NULL, NULL, '1234-variant-154', NULL, NULL, NULL, NULL, NULL, NULL, 164, 1, '164|1'),
(1708, 'en', NULL, 'Variant 154', NULL, NULL, NULL, NULL, NULL, NULL, 164, 2, 'en|164|2'),
(1709, 'en', NULL, '1234-variant-154', NULL, NULL, NULL, NULL, NULL, NULL, 164, 3, 'en|164|3'),
(1710, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 164, 4, 'default|164|4'),
(1711, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 164, 8, 'default|164|8'),
(1712, 'en', NULL, '1234-variant-154', NULL, NULL, NULL, NULL, NULL, NULL, 164, 9, 'en|164|9'),
(1713, 'en', NULL, '1234-variant-154', NULL, NULL, NULL, NULL, NULL, NULL, 164, 10, 'en|164|10'),
(1714, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 164, 11, '164|11'),
(1715, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 164, 22, '164|22'),
(1716, NULL, NULL, NULL, NULL, 154, NULL, NULL, NULL, NULL, 164, 33, '164|33'),
(1717, NULL, NULL, '1234-variant-155', NULL, NULL, NULL, NULL, NULL, NULL, 165, 1, '165|1'),
(1718, 'en', NULL, 'Variant 155', NULL, NULL, NULL, NULL, NULL, NULL, 165, 2, 'en|165|2'),
(1719, 'en', NULL, '1234-variant-155', NULL, NULL, NULL, NULL, NULL, NULL, 165, 3, 'en|165|3'),
(1720, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 165, 4, 'default|165|4'),
(1721, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 165, 8, 'default|165|8'),
(1722, 'en', NULL, '1234-variant-155', NULL, NULL, NULL, NULL, NULL, NULL, 165, 9, 'en|165|9'),
(1723, 'en', NULL, '1234-variant-155', NULL, NULL, NULL, NULL, NULL, NULL, 165, 10, 'en|165|10'),
(1724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 165, 11, '165|11'),
(1725, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 165, 22, '165|22'),
(1726, NULL, NULL, NULL, NULL, 155, NULL, NULL, NULL, NULL, 165, 33, '165|33'),
(1727, NULL, NULL, '1234-variant-156', NULL, NULL, NULL, NULL, NULL, NULL, 166, 1, '166|1'),
(1728, 'en', NULL, 'Variant 156', NULL, NULL, NULL, NULL, NULL, NULL, 166, 2, 'en|166|2'),
(1729, 'en', NULL, '1234-variant-156', NULL, NULL, NULL, NULL, NULL, NULL, 166, 3, 'en|166|3'),
(1730, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 166, 4, 'default|166|4'),
(1731, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 166, 8, 'default|166|8'),
(1732, 'en', NULL, '1234-variant-156', NULL, NULL, NULL, NULL, NULL, NULL, 166, 9, 'en|166|9'),
(1733, 'en', NULL, '1234-variant-156', NULL, NULL, NULL, NULL, NULL, NULL, 166, 10, 'en|166|10'),
(1734, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 166, 11, '166|11'),
(1735, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 166, 22, '166|22'),
(1736, NULL, NULL, NULL, NULL, 156, NULL, NULL, NULL, NULL, 166, 33, '166|33'),
(1737, NULL, NULL, '1234-variant-157', NULL, NULL, NULL, NULL, NULL, NULL, 167, 1, '167|1'),
(1738, 'en', NULL, 'Variant 157', NULL, NULL, NULL, NULL, NULL, NULL, 167, 2, 'en|167|2'),
(1739, 'en', NULL, '1234-variant-157', NULL, NULL, NULL, NULL, NULL, NULL, 167, 3, 'en|167|3'),
(1740, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 167, 4, 'default|167|4'),
(1741, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 167, 8, 'default|167|8'),
(1742, 'en', NULL, '1234-variant-157', NULL, NULL, NULL, NULL, NULL, NULL, 167, 9, 'en|167|9'),
(1743, 'en', NULL, '1234-variant-157', NULL, NULL, NULL, NULL, NULL, NULL, 167, 10, 'en|167|10'),
(1744, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 167, 11, '167|11'),
(1745, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 167, 22, '167|22'),
(1746, NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL, NULL, 167, 33, '167|33'),
(1747, NULL, NULL, '1234-variant-158', NULL, NULL, NULL, NULL, NULL, NULL, 168, 1, '168|1'),
(1748, 'en', NULL, 'Variant 158', NULL, NULL, NULL, NULL, NULL, NULL, 168, 2, 'en|168|2'),
(1749, 'en', NULL, '1234-variant-158', NULL, NULL, NULL, NULL, NULL, NULL, 168, 3, 'en|168|3'),
(1750, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 168, 4, 'default|168|4'),
(1751, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 168, 8, 'default|168|8'),
(1752, 'en', NULL, '1234-variant-158', NULL, NULL, NULL, NULL, NULL, NULL, 168, 9, 'en|168|9'),
(1753, 'en', NULL, '1234-variant-158', NULL, NULL, NULL, NULL, NULL, NULL, 168, 10, 'en|168|10'),
(1754, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 168, 11, '168|11'),
(1755, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 168, 22, '168|22'),
(1756, NULL, NULL, NULL, NULL, 158, NULL, NULL, NULL, NULL, 168, 33, '168|33'),
(1757, NULL, NULL, '1234-variant-159', NULL, NULL, NULL, NULL, NULL, NULL, 169, 1, '169|1'),
(1758, 'en', NULL, 'Variant 159', NULL, NULL, NULL, NULL, NULL, NULL, 169, 2, 'en|169|2'),
(1759, 'en', NULL, '1234-variant-159', NULL, NULL, NULL, NULL, NULL, NULL, 169, 3, 'en|169|3'),
(1760, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 169, 4, 'default|169|4'),
(1761, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 169, 8, 'default|169|8'),
(1762, 'en', NULL, '1234-variant-159', NULL, NULL, NULL, NULL, NULL, NULL, 169, 9, 'en|169|9'),
(1763, 'en', NULL, '1234-variant-159', NULL, NULL, NULL, NULL, NULL, NULL, 169, 10, 'en|169|10'),
(1764, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 169, 11, '169|11'),
(1765, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 169, 22, '169|22'),
(1766, NULL, NULL, NULL, NULL, 159, NULL, NULL, NULL, NULL, 169, 33, '169|33'),
(1767, NULL, NULL, '1234-variant-160', NULL, NULL, NULL, NULL, NULL, NULL, 170, 1, '170|1'),
(1768, 'en', NULL, 'Variant 160', NULL, NULL, NULL, NULL, NULL, NULL, 170, 2, 'en|170|2'),
(1769, 'en', NULL, '1234-variant-160', NULL, NULL, NULL, NULL, NULL, NULL, 170, 3, 'en|170|3'),
(1770, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 170, 4, 'default|170|4'),
(1771, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 170, 8, 'default|170|8'),
(1772, 'en', NULL, '1234-variant-160', NULL, NULL, NULL, NULL, NULL, NULL, 170, 9, 'en|170|9'),
(1773, 'en', NULL, '1234-variant-160', NULL, NULL, NULL, NULL, NULL, NULL, 170, 10, 'en|170|10'),
(1774, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 170, 11, '170|11'),
(1775, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 170, 22, '170|22'),
(1776, NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 170, 33, '170|33'),
(1777, NULL, NULL, '1234-variant-161', NULL, NULL, NULL, NULL, NULL, NULL, 171, 1, '171|1'),
(1778, 'en', NULL, 'Variant 161', NULL, NULL, NULL, NULL, NULL, NULL, 171, 2, 'en|171|2'),
(1779, 'en', NULL, '1234-variant-161', NULL, NULL, NULL, NULL, NULL, NULL, 171, 3, 'en|171|3'),
(1780, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 171, 4, 'default|171|4'),
(1781, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 171, 8, 'default|171|8'),
(1782, 'en', NULL, '1234-variant-161', NULL, NULL, NULL, NULL, NULL, NULL, 171, 9, 'en|171|9'),
(1783, 'en', NULL, '1234-variant-161', NULL, NULL, NULL, NULL, NULL, NULL, 171, 10, 'en|171|10'),
(1784, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 171, 11, '171|11'),
(1785, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 171, 22, '171|22'),
(1786, NULL, NULL, NULL, NULL, 161, NULL, NULL, NULL, NULL, 171, 33, '171|33'),
(1787, NULL, NULL, '1234-variant-162', NULL, NULL, NULL, NULL, NULL, NULL, 172, 1, '172|1'),
(1788, 'en', NULL, 'Variant 162', NULL, NULL, NULL, NULL, NULL, NULL, 172, 2, 'en|172|2'),
(1789, 'en', NULL, '1234-variant-162', NULL, NULL, NULL, NULL, NULL, NULL, 172, 3, 'en|172|3'),
(1790, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 172, 4, 'default|172|4'),
(1791, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 172, 8, 'default|172|8'),
(1792, 'en', NULL, '1234-variant-162', NULL, NULL, NULL, NULL, NULL, NULL, 172, 9, 'en|172|9'),
(1793, 'en', NULL, '1234-variant-162', NULL, NULL, NULL, NULL, NULL, NULL, 172, 10, 'en|172|10'),
(1794, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 172, 11, '172|11'),
(1795, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 172, 22, '172|22'),
(1796, NULL, NULL, NULL, NULL, 162, NULL, NULL, NULL, NULL, 172, 33, '172|33'),
(1797, NULL, NULL, '1234-variant-163', NULL, NULL, NULL, NULL, NULL, NULL, 173, 1, '173|1'),
(1798, 'en', NULL, 'Variant 163', NULL, NULL, NULL, NULL, NULL, NULL, 173, 2, 'en|173|2'),
(1799, 'en', NULL, '1234-variant-163', NULL, NULL, NULL, NULL, NULL, NULL, 173, 3, 'en|173|3'),
(1800, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 173, 4, 'default|173|4'),
(1801, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 173, 8, 'default|173|8'),
(1802, 'en', NULL, '1234-variant-163', NULL, NULL, NULL, NULL, NULL, NULL, 173, 9, 'en|173|9'),
(1803, 'en', NULL, '1234-variant-163', NULL, NULL, NULL, NULL, NULL, NULL, 173, 10, 'en|173|10'),
(1804, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 173, 11, '173|11'),
(1805, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 173, 22, '173|22'),
(1806, NULL, NULL, NULL, NULL, 163, NULL, NULL, NULL, NULL, 173, 33, '173|33'),
(1807, NULL, NULL, '1234-variant-164', NULL, NULL, NULL, NULL, NULL, NULL, 174, 1, '174|1'),
(1808, 'en', NULL, 'Variant 164', NULL, NULL, NULL, NULL, NULL, NULL, 174, 2, 'en|174|2'),
(1809, 'en', NULL, '1234-variant-164', NULL, NULL, NULL, NULL, NULL, NULL, 174, 3, 'en|174|3'),
(1810, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 174, 4, 'default|174|4'),
(1811, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 174, 8, 'default|174|8'),
(1812, 'en', NULL, '1234-variant-164', NULL, NULL, NULL, NULL, NULL, NULL, 174, 9, 'en|174|9'),
(1813, 'en', NULL, '1234-variant-164', NULL, NULL, NULL, NULL, NULL, NULL, 174, 10, 'en|174|10'),
(1814, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 174, 11, '174|11'),
(1815, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 174, 22, '174|22'),
(1816, NULL, NULL, NULL, NULL, 164, NULL, NULL, NULL, NULL, 174, 33, '174|33'),
(1817, NULL, NULL, '1234-variant-165', NULL, NULL, NULL, NULL, NULL, NULL, 175, 1, '175|1'),
(1818, 'en', NULL, 'Variant 165', NULL, NULL, NULL, NULL, NULL, NULL, 175, 2, 'en|175|2'),
(1819, 'en', NULL, '1234-variant-165', NULL, NULL, NULL, NULL, NULL, NULL, 175, 3, 'en|175|3'),
(1820, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 175, 4, 'default|175|4'),
(1821, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 175, 8, 'default|175|8'),
(1822, 'en', NULL, '1234-variant-165', NULL, NULL, NULL, NULL, NULL, NULL, 175, 9, 'en|175|9'),
(1823, 'en', NULL, '1234-variant-165', NULL, NULL, NULL, NULL, NULL, NULL, 175, 10, 'en|175|10'),
(1824, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 175, 11, '175|11'),
(1825, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 175, 22, '175|22'),
(1826, NULL, NULL, NULL, NULL, 165, NULL, NULL, NULL, NULL, 175, 33, '175|33'),
(1827, NULL, NULL, '1234-variant-166', NULL, NULL, NULL, NULL, NULL, NULL, 176, 1, '176|1'),
(1828, 'en', NULL, 'Variant 166', NULL, NULL, NULL, NULL, NULL, NULL, 176, 2, 'en|176|2'),
(1829, 'en', NULL, '1234-variant-166', NULL, NULL, NULL, NULL, NULL, NULL, 176, 3, 'en|176|3'),
(1830, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 176, 4, 'default|176|4'),
(1831, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 176, 8, 'default|176|8'),
(1832, 'en', NULL, '1234-variant-166', NULL, NULL, NULL, NULL, NULL, NULL, 176, 9, 'en|176|9'),
(1833, 'en', NULL, '1234-variant-166', NULL, NULL, NULL, NULL, NULL, NULL, 176, 10, 'en|176|10'),
(1834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 176, 11, '176|11'),
(1835, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 176, 22, '176|22'),
(1836, NULL, NULL, NULL, NULL, 166, NULL, NULL, NULL, NULL, 176, 33, '176|33'),
(1837, NULL, NULL, '1234-variant-167', NULL, NULL, NULL, NULL, NULL, NULL, 177, 1, '177|1'),
(1838, 'en', NULL, 'Variant 167', NULL, NULL, NULL, NULL, NULL, NULL, 177, 2, 'en|177|2'),
(1839, 'en', NULL, '1234-variant-167', NULL, NULL, NULL, NULL, NULL, NULL, 177, 3, 'en|177|3'),
(1840, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 177, 4, 'default|177|4'),
(1841, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 177, 8, 'default|177|8'),
(1842, 'en', NULL, '1234-variant-167', NULL, NULL, NULL, NULL, NULL, NULL, 177, 9, 'en|177|9'),
(1843, 'en', NULL, '1234-variant-167', NULL, NULL, NULL, NULL, NULL, NULL, 177, 10, 'en|177|10'),
(1844, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 177, 11, '177|11'),
(1845, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 177, 22, '177|22'),
(1846, NULL, NULL, NULL, NULL, 167, NULL, NULL, NULL, NULL, 177, 33, '177|33'),
(1847, NULL, NULL, '1234-variant-168', NULL, NULL, NULL, NULL, NULL, NULL, 178, 1, '178|1'),
(1848, 'en', NULL, 'Variant 168', NULL, NULL, NULL, NULL, NULL, NULL, 178, 2, 'en|178|2'),
(1849, 'en', NULL, '1234-variant-168', NULL, NULL, NULL, NULL, NULL, NULL, 178, 3, 'en|178|3'),
(1850, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 178, 4, 'default|178|4'),
(1851, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 178, 8, 'default|178|8'),
(1852, 'en', NULL, '1234-variant-168', NULL, NULL, NULL, NULL, NULL, NULL, 178, 9, 'en|178|9'),
(1853, 'en', NULL, '1234-variant-168', NULL, NULL, NULL, NULL, NULL, NULL, 178, 10, 'en|178|10'),
(1854, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 178, 11, '178|11'),
(1855, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 178, 22, '178|22'),
(1856, NULL, NULL, NULL, NULL, 168, NULL, NULL, NULL, NULL, 178, 33, '178|33'),
(1857, NULL, NULL, '1234-variant-169', NULL, NULL, NULL, NULL, NULL, NULL, 179, 1, '179|1'),
(1858, 'en', NULL, 'Variant 169', NULL, NULL, NULL, NULL, NULL, NULL, 179, 2, 'en|179|2'),
(1859, 'en', NULL, '1234-variant-169', NULL, NULL, NULL, NULL, NULL, NULL, 179, 3, 'en|179|3'),
(1860, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 179, 4, 'default|179|4'),
(1861, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 179, 8, 'default|179|8'),
(1862, 'en', NULL, '1234-variant-169', NULL, NULL, NULL, NULL, NULL, NULL, 179, 9, 'en|179|9'),
(1863, 'en', NULL, '1234-variant-169', NULL, NULL, NULL, NULL, NULL, NULL, 179, 10, 'en|179|10'),
(1864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 179, 11, '179|11'),
(1865, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 179, 22, '179|22'),
(1866, NULL, NULL, NULL, NULL, 169, NULL, NULL, NULL, NULL, 179, 33, '179|33'),
(1867, NULL, NULL, '1234-variant-170', NULL, NULL, NULL, NULL, NULL, NULL, 180, 1, '180|1'),
(1868, 'en', NULL, 'Variant 170', NULL, NULL, NULL, NULL, NULL, NULL, 180, 2, 'en|180|2'),
(1869, 'en', NULL, '1234-variant-170', NULL, NULL, NULL, NULL, NULL, NULL, 180, 3, 'en|180|3'),
(1870, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 180, 4, 'default|180|4'),
(1871, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 180, 8, 'default|180|8'),
(1872, 'en', NULL, '1234-variant-170', NULL, NULL, NULL, NULL, NULL, NULL, 180, 9, 'en|180|9'),
(1873, 'en', NULL, '1234-variant-170', NULL, NULL, NULL, NULL, NULL, NULL, 180, 10, 'en|180|10'),
(1874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180, 11, '180|11'),
(1875, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 180, 22, '180|22'),
(1876, NULL, NULL, NULL, NULL, 170, NULL, NULL, NULL, NULL, 180, 33, '180|33'),
(1877, NULL, NULL, '1234-variant-171', NULL, NULL, NULL, NULL, NULL, NULL, 181, 1, '181|1'),
(1878, 'en', NULL, 'Variant 171', NULL, NULL, NULL, NULL, NULL, NULL, 181, 2, 'en|181|2'),
(1879, 'en', NULL, '1234-variant-171', NULL, NULL, NULL, NULL, NULL, NULL, 181, 3, 'en|181|3'),
(1880, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 181, 4, 'default|181|4'),
(1881, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 181, 8, 'default|181|8'),
(1882, 'en', NULL, '1234-variant-171', NULL, NULL, NULL, NULL, NULL, NULL, 181, 9, 'en|181|9'),
(1883, 'en', NULL, '1234-variant-171', NULL, NULL, NULL, NULL, NULL, NULL, 181, 10, 'en|181|10'),
(1884, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 181, 11, '181|11'),
(1885, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 181, 22, '181|22'),
(1886, NULL, NULL, NULL, NULL, 171, NULL, NULL, NULL, NULL, 181, 33, '181|33'),
(1887, NULL, NULL, '1234-variant-172', NULL, NULL, NULL, NULL, NULL, NULL, 182, 1, '182|1'),
(1888, 'en', NULL, 'Variant 172', NULL, NULL, NULL, NULL, NULL, NULL, 182, 2, 'en|182|2'),
(1889, 'en', NULL, '1234-variant-172', NULL, NULL, NULL, NULL, NULL, NULL, 182, 3, 'en|182|3'),
(1890, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 182, 4, 'default|182|4'),
(1891, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 182, 8, 'default|182|8'),
(1892, 'en', NULL, '1234-variant-172', NULL, NULL, NULL, NULL, NULL, NULL, 182, 9, 'en|182|9'),
(1893, 'en', NULL, '1234-variant-172', NULL, NULL, NULL, NULL, NULL, NULL, 182, 10, 'en|182|10'),
(1894, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 182, 11, '182|11'),
(1895, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 182, 22, '182|22'),
(1896, NULL, NULL, NULL, NULL, 172, NULL, NULL, NULL, NULL, 182, 33, '182|33'),
(1897, NULL, NULL, '1234-variant-173', NULL, NULL, NULL, NULL, NULL, NULL, 183, 1, '183|1'),
(1898, 'en', NULL, 'Variant 173', NULL, NULL, NULL, NULL, NULL, NULL, 183, 2, 'en|183|2'),
(1899, 'en', NULL, '1234-variant-173', NULL, NULL, NULL, NULL, NULL, NULL, 183, 3, 'en|183|3'),
(1900, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 183, 4, 'default|183|4'),
(1901, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 183, 8, 'default|183|8'),
(1902, 'en', NULL, '1234-variant-173', NULL, NULL, NULL, NULL, NULL, NULL, 183, 9, 'en|183|9'),
(1903, 'en', NULL, '1234-variant-173', NULL, NULL, NULL, NULL, NULL, NULL, 183, 10, 'en|183|10'),
(1904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183, 11, '183|11'),
(1905, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 183, 22, '183|22'),
(1906, NULL, NULL, NULL, NULL, 173, NULL, NULL, NULL, NULL, 183, 33, '183|33'),
(1907, NULL, NULL, '1234-variant-174', NULL, NULL, NULL, NULL, NULL, NULL, 184, 1, '184|1'),
(1908, 'en', NULL, 'Variant 174', NULL, NULL, NULL, NULL, NULL, NULL, 184, 2, 'en|184|2'),
(1909, 'en', NULL, '1234-variant-174', NULL, NULL, NULL, NULL, NULL, NULL, 184, 3, 'en|184|3'),
(1910, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 184, 4, 'default|184|4'),
(1911, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 184, 8, 'default|184|8'),
(1912, 'en', NULL, '1234-variant-174', NULL, NULL, NULL, NULL, NULL, NULL, 184, 9, 'en|184|9'),
(1913, 'en', NULL, '1234-variant-174', NULL, NULL, NULL, NULL, NULL, NULL, 184, 10, 'en|184|10'),
(1914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 184, 11, '184|11'),
(1915, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 184, 22, '184|22'),
(1916, NULL, NULL, NULL, NULL, 174, NULL, NULL, NULL, NULL, 184, 33, '184|33'),
(1917, NULL, NULL, '1234-variant-175', NULL, NULL, NULL, NULL, NULL, NULL, 185, 1, '185|1'),
(1918, 'en', NULL, 'Variant 175', NULL, NULL, NULL, NULL, NULL, NULL, 185, 2, 'en|185|2'),
(1919, 'en', NULL, '1234-variant-175', NULL, NULL, NULL, NULL, NULL, NULL, 185, 3, 'en|185|3'),
(1920, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 185, 4, 'default|185|4'),
(1921, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 185, 8, 'default|185|8'),
(1922, 'en', NULL, '1234-variant-175', NULL, NULL, NULL, NULL, NULL, NULL, 185, 9, 'en|185|9'),
(1923, 'en', NULL, '1234-variant-175', NULL, NULL, NULL, NULL, NULL, NULL, 185, 10, 'en|185|10'),
(1924, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 185, 11, '185|11'),
(1925, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 185, 22, '185|22'),
(1926, NULL, NULL, NULL, NULL, 175, NULL, NULL, NULL, NULL, 185, 33, '185|33'),
(1927, NULL, NULL, '1234-variant-176', NULL, NULL, NULL, NULL, NULL, NULL, 186, 1, '186|1'),
(1928, 'en', NULL, 'Variant 176', NULL, NULL, NULL, NULL, NULL, NULL, 186, 2, 'en|186|2'),
(1929, 'en', NULL, '1234-variant-176', NULL, NULL, NULL, NULL, NULL, NULL, 186, 3, 'en|186|3'),
(1930, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 186, 4, 'default|186|4'),
(1931, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 186, 8, 'default|186|8'),
(1932, 'en', NULL, '1234-variant-176', NULL, NULL, NULL, NULL, NULL, NULL, 186, 9, 'en|186|9'),
(1933, 'en', NULL, '1234-variant-176', NULL, NULL, NULL, NULL, NULL, NULL, 186, 10, 'en|186|10'),
(1934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 186, 11, '186|11'),
(1935, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 186, 22, '186|22'),
(1936, NULL, NULL, NULL, NULL, 176, NULL, NULL, NULL, NULL, 186, 33, '186|33'),
(1937, NULL, NULL, '1234-variant-177', NULL, NULL, NULL, NULL, NULL, NULL, 187, 1, '187|1'),
(1938, 'en', NULL, 'Variant 177', NULL, NULL, NULL, NULL, NULL, NULL, 187, 2, 'en|187|2'),
(1939, 'en', NULL, '1234-variant-177', NULL, NULL, NULL, NULL, NULL, NULL, 187, 3, 'en|187|3'),
(1940, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 187, 4, 'default|187|4'),
(1941, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 187, 8, 'default|187|8'),
(1942, 'en', NULL, '1234-variant-177', NULL, NULL, NULL, NULL, NULL, NULL, 187, 9, 'en|187|9'),
(1943, 'en', NULL, '1234-variant-177', NULL, NULL, NULL, NULL, NULL, NULL, 187, 10, 'en|187|10'),
(1944, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 187, 11, '187|11'),
(1945, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 187, 22, '187|22'),
(1946, NULL, NULL, NULL, NULL, 177, NULL, NULL, NULL, NULL, 187, 33, '187|33'),
(1947, NULL, NULL, '1234-variant-178', NULL, NULL, NULL, NULL, NULL, NULL, 188, 1, '188|1'),
(1948, 'en', NULL, 'Variant 178', NULL, NULL, NULL, NULL, NULL, NULL, 188, 2, 'en|188|2'),
(1949, 'en', NULL, '1234-variant-178', NULL, NULL, NULL, NULL, NULL, NULL, 188, 3, 'en|188|3'),
(1950, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 188, 4, 'default|188|4'),
(1951, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 188, 8, 'default|188|8'),
(1952, 'en', NULL, '1234-variant-178', NULL, NULL, NULL, NULL, NULL, NULL, 188, 9, 'en|188|9'),
(1953, 'en', NULL, '1234-variant-178', NULL, NULL, NULL, NULL, NULL, NULL, 188, 10, 'en|188|10'),
(1954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 188, 11, '188|11'),
(1955, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 188, 22, '188|22'),
(1956, NULL, NULL, NULL, NULL, 178, NULL, NULL, NULL, NULL, 188, 33, '188|33'),
(1957, NULL, NULL, '1234-variant-179', NULL, NULL, NULL, NULL, NULL, NULL, 189, 1, '189|1'),
(1958, 'en', NULL, 'Variant 179', NULL, NULL, NULL, NULL, NULL, NULL, 189, 2, 'en|189|2'),
(1959, 'en', NULL, '1234-variant-179', NULL, NULL, NULL, NULL, NULL, NULL, 189, 3, 'en|189|3'),
(1960, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 189, 4, 'default|189|4'),
(1961, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 189, 8, 'default|189|8'),
(1962, 'en', NULL, '1234-variant-179', NULL, NULL, NULL, NULL, NULL, NULL, 189, 9, 'en|189|9'),
(1963, 'en', NULL, '1234-variant-179', NULL, NULL, NULL, NULL, NULL, NULL, 189, 10, 'en|189|10'),
(1964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 189, 11, '189|11'),
(1965, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 189, 22, '189|22'),
(1966, NULL, NULL, NULL, NULL, 179, NULL, NULL, NULL, NULL, 189, 33, '189|33'),
(1967, NULL, NULL, '1234-variant-180', NULL, NULL, NULL, NULL, NULL, NULL, 190, 1, '190|1'),
(1968, 'en', NULL, 'Variant 180', NULL, NULL, NULL, NULL, NULL, NULL, 190, 2, 'en|190|2'),
(1969, 'en', NULL, '1234-variant-180', NULL, NULL, NULL, NULL, NULL, NULL, 190, 3, 'en|190|3'),
(1970, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 190, 4, 'default|190|4'),
(1971, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 190, 8, 'default|190|8'),
(1972, 'en', NULL, '1234-variant-180', NULL, NULL, NULL, NULL, NULL, NULL, 190, 9, 'en|190|9'),
(1973, 'en', NULL, '1234-variant-180', NULL, NULL, NULL, NULL, NULL, NULL, 190, 10, 'en|190|10'),
(1974, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 190, 11, '190|11'),
(1975, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 190, 22, '190|22'),
(1976, NULL, NULL, NULL, NULL, 180, NULL, NULL, NULL, NULL, 190, 33, '190|33'),
(1977, NULL, NULL, '1234-variant-181', NULL, NULL, NULL, NULL, NULL, NULL, 191, 1, '191|1'),
(1978, 'en', NULL, 'Variant 181', NULL, NULL, NULL, NULL, NULL, NULL, 191, 2, 'en|191|2'),
(1979, 'en', NULL, '1234-variant-181', NULL, NULL, NULL, NULL, NULL, NULL, 191, 3, 'en|191|3'),
(1980, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 191, 4, 'default|191|4'),
(1981, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 191, 8, 'default|191|8'),
(1982, 'en', NULL, '1234-variant-181', NULL, NULL, NULL, NULL, NULL, NULL, 191, 9, 'en|191|9'),
(1983, 'en', NULL, '1234-variant-181', NULL, NULL, NULL, NULL, NULL, NULL, 191, 10, 'en|191|10'),
(1984, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 191, 11, '191|11'),
(1985, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 191, 22, '191|22'),
(1986, NULL, NULL, NULL, NULL, 181, NULL, NULL, NULL, NULL, 191, 33, '191|33'),
(1987, NULL, NULL, '1234-variant-182', NULL, NULL, NULL, NULL, NULL, NULL, 192, 1, '192|1'),
(1988, 'en', NULL, 'Variant 182', NULL, NULL, NULL, NULL, NULL, NULL, 192, 2, 'en|192|2'),
(1989, 'en', NULL, '1234-variant-182', NULL, NULL, NULL, NULL, NULL, NULL, 192, 3, 'en|192|3'),
(1990, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 192, 4, 'default|192|4'),
(1991, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 192, 8, 'default|192|8'),
(1992, 'en', NULL, '1234-variant-182', NULL, NULL, NULL, NULL, NULL, NULL, 192, 9, 'en|192|9'),
(1993, 'en', NULL, '1234-variant-182', NULL, NULL, NULL, NULL, NULL, NULL, 192, 10, 'en|192|10'),
(1994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 192, 11, '192|11'),
(1995, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 192, 22, '192|22'),
(1996, NULL, NULL, NULL, NULL, 182, NULL, NULL, NULL, NULL, 192, 33, '192|33'),
(1997, NULL, NULL, '1234-variant-183', NULL, NULL, NULL, NULL, NULL, NULL, 193, 1, '193|1'),
(1998, 'en', NULL, 'Variant 183', NULL, NULL, NULL, NULL, NULL, NULL, 193, 2, 'en|193|2'),
(1999, 'en', NULL, '1234-variant-183', NULL, NULL, NULL, NULL, NULL, NULL, 193, 3, 'en|193|3'),
(2000, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 193, 4, 'default|193|4'),
(2001, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 193, 8, 'default|193|8'),
(2002, 'en', NULL, '1234-variant-183', NULL, NULL, NULL, NULL, NULL, NULL, 193, 9, 'en|193|9'),
(2003, 'en', NULL, '1234-variant-183', NULL, NULL, NULL, NULL, NULL, NULL, 193, 10, 'en|193|10'),
(2004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 193, 11, '193|11'),
(2005, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 193, 22, '193|22'),
(2006, NULL, NULL, NULL, NULL, 183, NULL, NULL, NULL, NULL, 193, 33, '193|33'),
(2007, NULL, NULL, '1234-variant-184', NULL, NULL, NULL, NULL, NULL, NULL, 194, 1, '194|1'),
(2008, 'en', NULL, 'Variant 184', NULL, NULL, NULL, NULL, NULL, NULL, 194, 2, 'en|194|2'),
(2009, 'en', NULL, '1234-variant-184', NULL, NULL, NULL, NULL, NULL, NULL, 194, 3, 'en|194|3'),
(2010, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 194, 4, 'default|194|4'),
(2011, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 194, 8, 'default|194|8'),
(2012, 'en', NULL, '1234-variant-184', NULL, NULL, NULL, NULL, NULL, NULL, 194, 9, 'en|194|9'),
(2013, 'en', NULL, '1234-variant-184', NULL, NULL, NULL, NULL, NULL, NULL, 194, 10, 'en|194|10'),
(2014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 194, 11, '194|11'),
(2015, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 194, 22, '194|22'),
(2016, NULL, NULL, NULL, NULL, 184, NULL, NULL, NULL, NULL, 194, 33, '194|33'),
(2017, NULL, NULL, '1234-variant-185', NULL, NULL, NULL, NULL, NULL, NULL, 195, 1, '195|1'),
(2018, 'en', NULL, 'Variant 185', NULL, NULL, NULL, NULL, NULL, NULL, 195, 2, 'en|195|2'),
(2019, 'en', NULL, '1234-variant-185', NULL, NULL, NULL, NULL, NULL, NULL, 195, 3, 'en|195|3'),
(2020, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 195, 4, 'default|195|4'),
(2021, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 195, 8, 'default|195|8'),
(2022, 'en', NULL, '1234-variant-185', NULL, NULL, NULL, NULL, NULL, NULL, 195, 9, 'en|195|9'),
(2023, 'en', NULL, '1234-variant-185', NULL, NULL, NULL, NULL, NULL, NULL, 195, 10, 'en|195|10'),
(2024, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 195, 11, '195|11'),
(2025, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 195, 22, '195|22'),
(2026, NULL, NULL, NULL, NULL, 185, NULL, NULL, NULL, NULL, 195, 33, '195|33'),
(2027, NULL, NULL, '1234-variant-186', NULL, NULL, NULL, NULL, NULL, NULL, 196, 1, '196|1'),
(2028, 'en', NULL, 'Variant 186', NULL, NULL, NULL, NULL, NULL, NULL, 196, 2, 'en|196|2'),
(2029, 'en', NULL, '1234-variant-186', NULL, NULL, NULL, NULL, NULL, NULL, 196, 3, 'en|196|3'),
(2030, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 196, 4, 'default|196|4'),
(2031, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 196, 8, 'default|196|8'),
(2032, 'en', NULL, '1234-variant-186', NULL, NULL, NULL, NULL, NULL, NULL, 196, 9, 'en|196|9'),
(2033, 'en', NULL, '1234-variant-186', NULL, NULL, NULL, NULL, NULL, NULL, 196, 10, 'en|196|10'),
(2034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 196, 11, '196|11'),
(2035, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 196, 22, '196|22'),
(2036, NULL, NULL, NULL, NULL, 186, NULL, NULL, NULL, NULL, 196, 33, '196|33'),
(2037, NULL, NULL, '1234-variant-187', NULL, NULL, NULL, NULL, NULL, NULL, 197, 1, '197|1'),
(2038, 'en', NULL, 'Variant 187', NULL, NULL, NULL, NULL, NULL, NULL, 197, 2, 'en|197|2'),
(2039, 'en', NULL, '1234-variant-187', NULL, NULL, NULL, NULL, NULL, NULL, 197, 3, 'en|197|3'),
(2040, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 197, 4, 'default|197|4'),
(2041, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 197, 8, 'default|197|8'),
(2042, 'en', NULL, '1234-variant-187', NULL, NULL, NULL, NULL, NULL, NULL, 197, 9, 'en|197|9'),
(2043, 'en', NULL, '1234-variant-187', NULL, NULL, NULL, NULL, NULL, NULL, 197, 10, 'en|197|10'),
(2044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 197, 11, '197|11'),
(2045, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 197, 22, '197|22'),
(2046, NULL, NULL, NULL, NULL, 187, NULL, NULL, NULL, NULL, 197, 33, '197|33'),
(2047, NULL, NULL, '1234-variant-188', NULL, NULL, NULL, NULL, NULL, NULL, 198, 1, '198|1'),
(2048, 'en', NULL, 'Variant 188', NULL, NULL, NULL, NULL, NULL, NULL, 198, 2, 'en|198|2'),
(2049, 'en', NULL, '1234-variant-188', NULL, NULL, NULL, NULL, NULL, NULL, 198, 3, 'en|198|3'),
(2050, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 198, 4, 'default|198|4'),
(2051, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 198, 8, 'default|198|8'),
(2052, 'en', NULL, '1234-variant-188', NULL, NULL, NULL, NULL, NULL, NULL, 198, 9, 'en|198|9'),
(2053, 'en', NULL, '1234-variant-188', NULL, NULL, NULL, NULL, NULL, NULL, 198, 10, 'en|198|10'),
(2054, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 198, 11, '198|11'),
(2055, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 198, 22, '198|22'),
(2056, NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL, NULL, 198, 33, '198|33'),
(2057, NULL, NULL, '1234-variant-189', NULL, NULL, NULL, NULL, NULL, NULL, 199, 1, '199|1'),
(2058, 'en', NULL, 'Variant 189', NULL, NULL, NULL, NULL, NULL, NULL, 199, 2, 'en|199|2'),
(2059, 'en', NULL, '1234-variant-189', NULL, NULL, NULL, NULL, NULL, NULL, 199, 3, 'en|199|3'),
(2060, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 199, 4, 'default|199|4'),
(2061, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 199, 8, 'default|199|8'),
(2062, 'en', NULL, '1234-variant-189', NULL, NULL, NULL, NULL, NULL, NULL, 199, 9, 'en|199|9'),
(2063, 'en', NULL, '1234-variant-189', NULL, NULL, NULL, NULL, NULL, NULL, 199, 10, 'en|199|10'),
(2064, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 199, 11, '199|11'),
(2065, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 199, 22, '199|22'),
(2066, NULL, NULL, NULL, NULL, 189, NULL, NULL, NULL, NULL, 199, 33, '199|33'),
(2067, NULL, NULL, '1234-variant-190', NULL, NULL, NULL, NULL, NULL, NULL, 200, 1, '200|1'),
(2068, 'en', NULL, 'Variant 190', NULL, NULL, NULL, NULL, NULL, NULL, 200, 2, 'en|200|2'),
(2069, 'en', NULL, '1234-variant-190', NULL, NULL, NULL, NULL, NULL, NULL, 200, 3, 'en|200|3'),
(2070, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 200, 4, 'default|200|4'),
(2071, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 200, 8, 'default|200|8'),
(2072, 'en', NULL, '1234-variant-190', NULL, NULL, NULL, NULL, NULL, NULL, 200, 9, 'en|200|9'),
(2073, 'en', NULL, '1234-variant-190', NULL, NULL, NULL, NULL, NULL, NULL, 200, 10, 'en|200|10'),
(2074, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200, 11, '200|11'),
(2075, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 200, 22, '200|22'),
(2076, NULL, NULL, NULL, NULL, 190, NULL, NULL, NULL, NULL, 200, 33, '200|33'),
(2077, NULL, NULL, '1234-variant-191', NULL, NULL, NULL, NULL, NULL, NULL, 201, 1, '201|1'),
(2078, 'en', NULL, 'Variant 191', NULL, NULL, NULL, NULL, NULL, NULL, 201, 2, 'en|201|2'),
(2079, 'en', NULL, '1234-variant-191', NULL, NULL, NULL, NULL, NULL, NULL, 201, 3, 'en|201|3'),
(2080, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 201, 4, 'default|201|4'),
(2081, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 201, 8, 'default|201|8'),
(2082, 'en', NULL, '1234-variant-191', NULL, NULL, NULL, NULL, NULL, NULL, 201, 9, 'en|201|9'),
(2083, 'en', NULL, '1234-variant-191', NULL, NULL, NULL, NULL, NULL, NULL, 201, 10, 'en|201|10'),
(2084, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 201, 11, '201|11'),
(2085, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 201, 22, '201|22'),
(2086, NULL, NULL, NULL, NULL, 191, NULL, NULL, NULL, NULL, 201, 33, '201|33'),
(2087, NULL, NULL, '1234-variant-192', NULL, NULL, NULL, NULL, NULL, NULL, 202, 1, '202|1'),
(2088, 'en', NULL, 'Variant 192', NULL, NULL, NULL, NULL, NULL, NULL, 202, 2, 'en|202|2'),
(2089, 'en', NULL, '1234-variant-192', NULL, NULL, NULL, NULL, NULL, NULL, 202, 3, 'en|202|3'),
(2090, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 202, 4, 'default|202|4'),
(2091, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 202, 8, 'default|202|8'),
(2092, 'en', NULL, '1234-variant-192', NULL, NULL, NULL, NULL, NULL, NULL, 202, 9, 'en|202|9'),
(2093, 'en', NULL, '1234-variant-192', NULL, NULL, NULL, NULL, NULL, NULL, 202, 10, 'en|202|10'),
(2094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 202, 11, '202|11'),
(2095, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 202, 22, '202|22'),
(2096, NULL, NULL, NULL, NULL, 192, NULL, NULL, NULL, NULL, 202, 33, '202|33'),
(2097, NULL, NULL, '1234-variant-193', NULL, NULL, NULL, NULL, NULL, NULL, 203, 1, '203|1'),
(2098, 'en', NULL, 'Variant 193', NULL, NULL, NULL, NULL, NULL, NULL, 203, 2, 'en|203|2'),
(2099, 'en', NULL, '1234-variant-193', NULL, NULL, NULL, NULL, NULL, NULL, 203, 3, 'en|203|3'),
(2100, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 203, 4, 'default|203|4');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(2101, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 203, 8, 'default|203|8'),
(2102, 'en', NULL, '1234-variant-193', NULL, NULL, NULL, NULL, NULL, NULL, 203, 9, 'en|203|9'),
(2103, 'en', NULL, '1234-variant-193', NULL, NULL, NULL, NULL, NULL, NULL, 203, 10, 'en|203|10'),
(2104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 203, 11, '203|11'),
(2105, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 203, 22, '203|22'),
(2106, NULL, NULL, NULL, NULL, 193, NULL, NULL, NULL, NULL, 203, 33, '203|33'),
(2107, NULL, NULL, '1234-variant-194', NULL, NULL, NULL, NULL, NULL, NULL, 204, 1, '204|1'),
(2108, 'en', NULL, 'Variant 194', NULL, NULL, NULL, NULL, NULL, NULL, 204, 2, 'en|204|2'),
(2109, 'en', NULL, '1234-variant-194', NULL, NULL, NULL, NULL, NULL, NULL, 204, 3, 'en|204|3'),
(2110, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 204, 4, 'default|204|4'),
(2111, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 204, 8, 'default|204|8'),
(2112, 'en', NULL, '1234-variant-194', NULL, NULL, NULL, NULL, NULL, NULL, 204, 9, 'en|204|9'),
(2113, 'en', NULL, '1234-variant-194', NULL, NULL, NULL, NULL, NULL, NULL, 204, 10, 'en|204|10'),
(2114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 204, 11, '204|11'),
(2115, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 204, 22, '204|22'),
(2116, NULL, NULL, NULL, NULL, 194, NULL, NULL, NULL, NULL, 204, 33, '204|33'),
(2117, NULL, NULL, '1234-variant-195', NULL, NULL, NULL, NULL, NULL, NULL, 205, 1, '205|1'),
(2118, 'en', NULL, 'Variant 195', NULL, NULL, NULL, NULL, NULL, NULL, 205, 2, 'en|205|2'),
(2119, 'en', NULL, '1234-variant-195', NULL, NULL, NULL, NULL, NULL, NULL, 205, 3, 'en|205|3'),
(2120, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 205, 4, 'default|205|4'),
(2121, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 205, 8, 'default|205|8'),
(2122, 'en', NULL, '1234-variant-195', NULL, NULL, NULL, NULL, NULL, NULL, 205, 9, 'en|205|9'),
(2123, 'en', NULL, '1234-variant-195', NULL, NULL, NULL, NULL, NULL, NULL, 205, 10, 'en|205|10'),
(2124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 205, 11, '205|11'),
(2125, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 205, 22, '205|22'),
(2126, NULL, NULL, NULL, NULL, 195, NULL, NULL, NULL, NULL, 205, 33, '205|33'),
(2127, NULL, NULL, '1234-variant-196', NULL, NULL, NULL, NULL, NULL, NULL, 206, 1, '206|1'),
(2128, 'en', NULL, 'Variant 196', NULL, NULL, NULL, NULL, NULL, NULL, 206, 2, 'en|206|2'),
(2129, 'en', NULL, '1234-variant-196', NULL, NULL, NULL, NULL, NULL, NULL, 206, 3, 'en|206|3'),
(2130, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 206, 4, 'default|206|4'),
(2131, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 206, 8, 'default|206|8'),
(2132, 'en', NULL, '1234-variant-196', NULL, NULL, NULL, NULL, NULL, NULL, 206, 9, 'en|206|9'),
(2133, 'en', NULL, '1234-variant-196', NULL, NULL, NULL, NULL, NULL, NULL, 206, 10, 'en|206|10'),
(2134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 206, 11, '206|11'),
(2135, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 206, 22, '206|22'),
(2136, NULL, NULL, NULL, NULL, 196, NULL, NULL, NULL, NULL, 206, 33, '206|33'),
(2137, NULL, NULL, '1234-variant-197', NULL, NULL, NULL, NULL, NULL, NULL, 207, 1, '207|1'),
(2138, 'en', NULL, 'Variant 197', NULL, NULL, NULL, NULL, NULL, NULL, 207, 2, 'en|207|2'),
(2139, 'en', NULL, '1234-variant-197', NULL, NULL, NULL, NULL, NULL, NULL, 207, 3, 'en|207|3'),
(2140, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 207, 4, 'default|207|4'),
(2141, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 207, 8, 'default|207|8'),
(2142, 'en', NULL, '1234-variant-197', NULL, NULL, NULL, NULL, NULL, NULL, 207, 9, 'en|207|9'),
(2143, 'en', NULL, '1234-variant-197', NULL, NULL, NULL, NULL, NULL, NULL, 207, 10, 'en|207|10'),
(2144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 207, 11, '207|11'),
(2145, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 207, 22, '207|22'),
(2146, NULL, NULL, NULL, NULL, 197, NULL, NULL, NULL, NULL, 207, 33, '207|33'),
(2147, NULL, NULL, '1234-variant-198', NULL, NULL, NULL, NULL, NULL, NULL, 208, 1, '208|1'),
(2148, 'en', NULL, 'Variant 198', NULL, NULL, NULL, NULL, NULL, NULL, 208, 2, 'en|208|2'),
(2149, 'en', NULL, '1234-variant-198', NULL, NULL, NULL, NULL, NULL, NULL, 208, 3, 'en|208|3'),
(2150, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 208, 4, 'default|208|4'),
(2151, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 208, 8, 'default|208|8'),
(2152, 'en', NULL, '1234-variant-198', NULL, NULL, NULL, NULL, NULL, NULL, 208, 9, 'en|208|9'),
(2153, 'en', NULL, '1234-variant-198', NULL, NULL, NULL, NULL, NULL, NULL, 208, 10, 'en|208|10'),
(2154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 208, 11, '208|11'),
(2155, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 208, 22, '208|22'),
(2156, NULL, NULL, NULL, NULL, 198, NULL, NULL, NULL, NULL, 208, 33, '208|33'),
(2157, NULL, NULL, '1234-variant-199', NULL, NULL, NULL, NULL, NULL, NULL, 209, 1, '209|1'),
(2158, 'en', NULL, 'Variant 199', NULL, NULL, NULL, NULL, NULL, NULL, 209, 2, 'en|209|2'),
(2159, 'en', NULL, '1234-variant-199', NULL, NULL, NULL, NULL, NULL, NULL, 209, 3, 'en|209|3'),
(2160, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 209, 4, 'default|209|4'),
(2161, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 209, 8, 'default|209|8'),
(2162, 'en', NULL, '1234-variant-199', NULL, NULL, NULL, NULL, NULL, NULL, 209, 9, 'en|209|9'),
(2163, 'en', NULL, '1234-variant-199', NULL, NULL, NULL, NULL, NULL, NULL, 209, 10, 'en|209|10'),
(2164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 209, 11, '209|11'),
(2165, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 209, 22, '209|22'),
(2166, NULL, NULL, NULL, NULL, 199, NULL, NULL, NULL, NULL, 209, 33, '209|33'),
(2167, NULL, NULL, '1234-variant-200', NULL, NULL, NULL, NULL, NULL, NULL, 210, 1, '210|1'),
(2168, 'en', NULL, 'Variant 200', NULL, NULL, NULL, NULL, NULL, NULL, 210, 2, 'en|210|2'),
(2169, 'en', NULL, '1234-variant-200', NULL, NULL, NULL, NULL, NULL, NULL, 210, 3, 'en|210|3'),
(2170, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 210, 4, 'default|210|4'),
(2171, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 210, 8, 'default|210|8'),
(2172, 'en', NULL, '1234-variant-200', NULL, NULL, NULL, NULL, NULL, NULL, 210, 9, 'en|210|9'),
(2173, 'en', NULL, '1234-variant-200', NULL, NULL, NULL, NULL, NULL, NULL, 210, 10, 'en|210|10'),
(2174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 210, 11, '210|11'),
(2175, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 210, 22, '210|22'),
(2176, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, 210, 33, '210|33'),
(2177, NULL, NULL, '1234-variant-201', NULL, NULL, NULL, NULL, NULL, NULL, 211, 1, '211|1'),
(2178, 'en', NULL, 'Variant 201', NULL, NULL, NULL, NULL, NULL, NULL, 211, 2, 'en|211|2'),
(2179, 'en', NULL, '1234-variant-201', NULL, NULL, NULL, NULL, NULL, NULL, 211, 3, 'en|211|3'),
(2180, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 211, 4, 'default|211|4'),
(2181, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 211, 8, 'default|211|8'),
(2182, 'en', NULL, '1234-variant-201', NULL, NULL, NULL, NULL, NULL, NULL, 211, 9, 'en|211|9'),
(2183, 'en', NULL, '1234-variant-201', NULL, NULL, NULL, NULL, NULL, NULL, 211, 10, 'en|211|10'),
(2184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 211, 11, '211|11'),
(2185, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 211, 22, '211|22'),
(2186, NULL, NULL, NULL, NULL, 201, NULL, NULL, NULL, NULL, 211, 33, '211|33'),
(2187, NULL, NULL, '1234-variant-202', NULL, NULL, NULL, NULL, NULL, NULL, 212, 1, '212|1'),
(2188, 'en', NULL, 'Variant 202', NULL, NULL, NULL, NULL, NULL, NULL, 212, 2, 'en|212|2'),
(2189, 'en', NULL, '1234-variant-202', NULL, NULL, NULL, NULL, NULL, NULL, 212, 3, 'en|212|3'),
(2190, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 212, 4, 'default|212|4'),
(2191, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 212, 8, 'default|212|8'),
(2192, 'en', NULL, '1234-variant-202', NULL, NULL, NULL, NULL, NULL, NULL, 212, 9, 'en|212|9'),
(2193, 'en', NULL, '1234-variant-202', NULL, NULL, NULL, NULL, NULL, NULL, 212, 10, 'en|212|10'),
(2194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 212, 11, '212|11'),
(2195, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 212, 22, '212|22'),
(2196, NULL, NULL, NULL, NULL, 202, NULL, NULL, NULL, NULL, 212, 33, '212|33'),
(2197, NULL, NULL, '1234-variant-203', NULL, NULL, NULL, NULL, NULL, NULL, 213, 1, '213|1'),
(2198, 'en', NULL, 'Variant 203', NULL, NULL, NULL, NULL, NULL, NULL, 213, 2, 'en|213|2'),
(2199, 'en', NULL, '1234-variant-203', NULL, NULL, NULL, NULL, NULL, NULL, 213, 3, 'en|213|3'),
(2200, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 213, 4, 'default|213|4'),
(2201, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 213, 8, 'default|213|8'),
(2202, 'en', NULL, '1234-variant-203', NULL, NULL, NULL, NULL, NULL, NULL, 213, 9, 'en|213|9'),
(2203, 'en', NULL, '1234-variant-203', NULL, NULL, NULL, NULL, NULL, NULL, 213, 10, 'en|213|10'),
(2204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 213, 11, '213|11'),
(2205, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 213, 22, '213|22'),
(2206, NULL, NULL, NULL, NULL, 203, NULL, NULL, NULL, NULL, 213, 33, '213|33'),
(2207, NULL, NULL, '1234-variant-204', NULL, NULL, NULL, NULL, NULL, NULL, 214, 1, '214|1'),
(2208, 'en', NULL, 'Variant 204', NULL, NULL, NULL, NULL, NULL, NULL, 214, 2, 'en|214|2'),
(2209, 'en', NULL, '1234-variant-204', NULL, NULL, NULL, NULL, NULL, NULL, 214, 3, 'en|214|3'),
(2210, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 214, 4, 'default|214|4'),
(2211, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 214, 8, 'default|214|8'),
(2212, 'en', NULL, '1234-variant-204', NULL, NULL, NULL, NULL, NULL, NULL, 214, 9, 'en|214|9'),
(2213, 'en', NULL, '1234-variant-204', NULL, NULL, NULL, NULL, NULL, NULL, 214, 10, 'en|214|10'),
(2214, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 214, 11, '214|11'),
(2215, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 214, 22, '214|22'),
(2216, NULL, NULL, NULL, NULL, 204, NULL, NULL, NULL, NULL, 214, 33, '214|33'),
(2217, NULL, NULL, '1234-variant-205', NULL, NULL, NULL, NULL, NULL, NULL, 215, 1, '215|1'),
(2218, 'en', NULL, 'Variant 205', NULL, NULL, NULL, NULL, NULL, NULL, 215, 2, 'en|215|2'),
(2219, 'en', NULL, '1234-variant-205', NULL, NULL, NULL, NULL, NULL, NULL, 215, 3, 'en|215|3'),
(2220, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 215, 4, 'default|215|4'),
(2221, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 215, 8, 'default|215|8'),
(2222, 'en', NULL, '1234-variant-205', NULL, NULL, NULL, NULL, NULL, NULL, 215, 9, 'en|215|9'),
(2223, 'en', NULL, '1234-variant-205', NULL, NULL, NULL, NULL, NULL, NULL, 215, 10, 'en|215|10'),
(2224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 215, 11, '215|11'),
(2225, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 215, 22, '215|22'),
(2226, NULL, NULL, NULL, NULL, 205, NULL, NULL, NULL, NULL, 215, 33, '215|33'),
(2227, NULL, NULL, '1234-variant-206', NULL, NULL, NULL, NULL, NULL, NULL, 216, 1, '216|1'),
(2228, 'en', NULL, 'Variant 206', NULL, NULL, NULL, NULL, NULL, NULL, 216, 2, 'en|216|2'),
(2229, 'en', NULL, '1234-variant-206', NULL, NULL, NULL, NULL, NULL, NULL, 216, 3, 'en|216|3'),
(2230, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 216, 4, 'default|216|4'),
(2231, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 216, 8, 'default|216|8'),
(2232, 'en', NULL, '1234-variant-206', NULL, NULL, NULL, NULL, NULL, NULL, 216, 9, 'en|216|9'),
(2233, 'en', NULL, '1234-variant-206', NULL, NULL, NULL, NULL, NULL, NULL, 216, 10, 'en|216|10'),
(2234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 216, 11, '216|11'),
(2235, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 216, 22, '216|22'),
(2236, NULL, NULL, NULL, NULL, 206, NULL, NULL, NULL, NULL, 216, 33, '216|33'),
(2237, NULL, NULL, '1234-variant-207', NULL, NULL, NULL, NULL, NULL, NULL, 217, 1, '217|1'),
(2238, 'en', NULL, 'Variant 207', NULL, NULL, NULL, NULL, NULL, NULL, 217, 2, 'en|217|2'),
(2239, 'en', NULL, '1234-variant-207', NULL, NULL, NULL, NULL, NULL, NULL, 217, 3, 'en|217|3'),
(2240, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 217, 4, 'default|217|4'),
(2241, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 217, 8, 'default|217|8'),
(2242, 'en', NULL, '1234-variant-207', NULL, NULL, NULL, NULL, NULL, NULL, 217, 9, 'en|217|9'),
(2243, 'en', NULL, '1234-variant-207', NULL, NULL, NULL, NULL, NULL, NULL, 217, 10, 'en|217|10'),
(2244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 217, 11, '217|11'),
(2245, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 217, 22, '217|22'),
(2246, NULL, NULL, NULL, NULL, 207, NULL, NULL, NULL, NULL, 217, 33, '217|33'),
(2247, NULL, NULL, '1234-variant-208', NULL, NULL, NULL, NULL, NULL, NULL, 218, 1, '218|1'),
(2248, 'en', NULL, 'Variant 208', NULL, NULL, NULL, NULL, NULL, NULL, 218, 2, 'en|218|2'),
(2249, 'en', NULL, '1234-variant-208', NULL, NULL, NULL, NULL, NULL, NULL, 218, 3, 'en|218|3'),
(2250, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 218, 4, 'default|218|4'),
(2251, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 218, 8, 'default|218|8'),
(2252, 'en', NULL, '1234-variant-208', NULL, NULL, NULL, NULL, NULL, NULL, 218, 9, 'en|218|9'),
(2253, 'en', NULL, '1234-variant-208', NULL, NULL, NULL, NULL, NULL, NULL, 218, 10, 'en|218|10'),
(2254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 218, 11, '218|11'),
(2255, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 218, 22, '218|22'),
(2256, NULL, NULL, NULL, NULL, 208, NULL, NULL, NULL, NULL, 218, 33, '218|33'),
(2257, NULL, NULL, '1234-variant-209', NULL, NULL, NULL, NULL, NULL, NULL, 219, 1, '219|1'),
(2258, 'en', NULL, 'Variant 209', NULL, NULL, NULL, NULL, NULL, NULL, 219, 2, 'en|219|2'),
(2259, 'en', NULL, '1234-variant-209', NULL, NULL, NULL, NULL, NULL, NULL, 219, 3, 'en|219|3'),
(2260, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 219, 4, 'default|219|4'),
(2261, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 219, 8, 'default|219|8'),
(2262, 'en', NULL, '1234-variant-209', NULL, NULL, NULL, NULL, NULL, NULL, 219, 9, 'en|219|9'),
(2263, 'en', NULL, '1234-variant-209', NULL, NULL, NULL, NULL, NULL, NULL, 219, 10, 'en|219|10'),
(2264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 219, 11, '219|11'),
(2265, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 219, 22, '219|22'),
(2266, NULL, NULL, NULL, NULL, 209, NULL, NULL, NULL, NULL, 219, 33, '219|33'),
(2267, NULL, NULL, '1234-variant-210', NULL, NULL, NULL, NULL, NULL, NULL, 220, 1, '220|1'),
(2268, 'en', NULL, 'Variant 210', NULL, NULL, NULL, NULL, NULL, NULL, 220, 2, 'en|220|2'),
(2269, 'en', NULL, '1234-variant-210', NULL, NULL, NULL, NULL, NULL, NULL, 220, 3, 'en|220|3'),
(2270, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 220, 4, 'default|220|4'),
(2271, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 220, 8, 'default|220|8'),
(2272, 'en', NULL, '1234-variant-210', NULL, NULL, NULL, NULL, NULL, NULL, 220, 9, 'en|220|9'),
(2273, 'en', NULL, '1234-variant-210', NULL, NULL, NULL, NULL, NULL, NULL, 220, 10, 'en|220|10'),
(2274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 220, 11, '220|11'),
(2275, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 220, 22, '220|22'),
(2276, NULL, NULL, NULL, NULL, 210, NULL, NULL, NULL, NULL, 220, 33, '220|33'),
(2277, NULL, NULL, '1234-variant-211', NULL, NULL, NULL, NULL, NULL, NULL, 221, 1, '221|1'),
(2278, 'en', NULL, 'Variant 211', NULL, NULL, NULL, NULL, NULL, NULL, 221, 2, 'en|221|2'),
(2279, 'en', NULL, '1234-variant-211', NULL, NULL, NULL, NULL, NULL, NULL, 221, 3, 'en|221|3'),
(2280, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 221, 4, 'default|221|4'),
(2281, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 221, 8, 'default|221|8'),
(2282, 'en', NULL, '1234-variant-211', NULL, NULL, NULL, NULL, NULL, NULL, 221, 9, 'en|221|9'),
(2283, 'en', NULL, '1234-variant-211', NULL, NULL, NULL, NULL, NULL, NULL, 221, 10, 'en|221|10'),
(2284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 221, 11, '221|11'),
(2285, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 221, 22, '221|22'),
(2286, NULL, NULL, NULL, NULL, 211, NULL, NULL, NULL, NULL, 221, 33, '221|33'),
(2287, NULL, NULL, '1234-variant-212', NULL, NULL, NULL, NULL, NULL, NULL, 222, 1, '222|1'),
(2288, 'en', NULL, 'Variant 212', NULL, NULL, NULL, NULL, NULL, NULL, 222, 2, 'en|222|2'),
(2289, 'en', NULL, '1234-variant-212', NULL, NULL, NULL, NULL, NULL, NULL, 222, 3, 'en|222|3'),
(2290, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 222, 4, 'default|222|4'),
(2291, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 222, 8, 'default|222|8'),
(2292, 'en', NULL, '1234-variant-212', NULL, NULL, NULL, NULL, NULL, NULL, 222, 9, 'en|222|9'),
(2293, 'en', NULL, '1234-variant-212', NULL, NULL, NULL, NULL, NULL, NULL, 222, 10, 'en|222|10'),
(2294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 222, 11, '222|11'),
(2295, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 222, 22, '222|22'),
(2296, NULL, NULL, NULL, NULL, 212, NULL, NULL, NULL, NULL, 222, 33, '222|33'),
(2297, NULL, NULL, '1234-variant-213', NULL, NULL, NULL, NULL, NULL, NULL, 223, 1, '223|1'),
(2298, 'en', NULL, 'Variant 213', NULL, NULL, NULL, NULL, NULL, NULL, 223, 2, 'en|223|2'),
(2299, 'en', NULL, '1234-variant-213', NULL, NULL, NULL, NULL, NULL, NULL, 223, 3, 'en|223|3'),
(2300, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 223, 4, 'default|223|4'),
(2301, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 223, 8, 'default|223|8'),
(2302, 'en', NULL, '1234-variant-213', NULL, NULL, NULL, NULL, NULL, NULL, 223, 9, 'en|223|9'),
(2303, 'en', NULL, '1234-variant-213', NULL, NULL, NULL, NULL, NULL, NULL, 223, 10, 'en|223|10'),
(2304, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 223, 11, '223|11'),
(2305, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 223, 22, '223|22'),
(2306, NULL, NULL, NULL, NULL, 213, NULL, NULL, NULL, NULL, 223, 33, '223|33'),
(2307, NULL, NULL, '1234-variant-214', NULL, NULL, NULL, NULL, NULL, NULL, 224, 1, '224|1'),
(2308, 'en', NULL, 'Variant 214', NULL, NULL, NULL, NULL, NULL, NULL, 224, 2, 'en|224|2'),
(2309, 'en', NULL, '1234-variant-214', NULL, NULL, NULL, NULL, NULL, NULL, 224, 3, 'en|224|3'),
(2310, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 224, 4, 'default|224|4'),
(2311, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 224, 8, 'default|224|8'),
(2312, 'en', NULL, '1234-variant-214', NULL, NULL, NULL, NULL, NULL, NULL, 224, 9, 'en|224|9'),
(2313, 'en', NULL, '1234-variant-214', NULL, NULL, NULL, NULL, NULL, NULL, 224, 10, 'en|224|10'),
(2314, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 224, 11, '224|11'),
(2315, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 224, 22, '224|22'),
(2316, NULL, NULL, NULL, NULL, 214, NULL, NULL, NULL, NULL, 224, 33, '224|33'),
(2317, NULL, NULL, '1234-variant-215', NULL, NULL, NULL, NULL, NULL, NULL, 225, 1, '225|1'),
(2318, 'en', NULL, 'Variant 215', NULL, NULL, NULL, NULL, NULL, NULL, 225, 2, 'en|225|2'),
(2319, 'en', NULL, '1234-variant-215', NULL, NULL, NULL, NULL, NULL, NULL, 225, 3, 'en|225|3'),
(2320, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 225, 4, 'default|225|4'),
(2321, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 225, 8, 'default|225|8'),
(2322, 'en', NULL, '1234-variant-215', NULL, NULL, NULL, NULL, NULL, NULL, 225, 9, 'en|225|9'),
(2323, 'en', NULL, '1234-variant-215', NULL, NULL, NULL, NULL, NULL, NULL, 225, 10, 'en|225|10'),
(2324, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 225, 11, '225|11'),
(2325, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 225, 22, '225|22'),
(2326, NULL, NULL, NULL, NULL, 215, NULL, NULL, NULL, NULL, 225, 33, '225|33'),
(2327, NULL, NULL, '1234-variant-216', NULL, NULL, NULL, NULL, NULL, NULL, 226, 1, '226|1'),
(2328, 'en', NULL, 'Variant 216', NULL, NULL, NULL, NULL, NULL, NULL, 226, 2, 'en|226|2'),
(2329, 'en', NULL, '1234-variant-216', NULL, NULL, NULL, NULL, NULL, NULL, 226, 3, 'en|226|3'),
(2330, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 226, 4, 'default|226|4'),
(2331, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 226, 8, 'default|226|8'),
(2332, 'en', NULL, '1234-variant-216', NULL, NULL, NULL, NULL, NULL, NULL, 226, 9, 'en|226|9'),
(2333, 'en', NULL, '1234-variant-216', NULL, NULL, NULL, NULL, NULL, NULL, 226, 10, 'en|226|10'),
(2334, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 226, 11, '226|11'),
(2335, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 226, 22, '226|22'),
(2336, NULL, NULL, NULL, NULL, 216, NULL, NULL, NULL, NULL, 226, 33, '226|33'),
(2337, NULL, NULL, '1234-variant-217', NULL, NULL, NULL, NULL, NULL, NULL, 227, 1, '227|1'),
(2338, 'en', NULL, 'Variant 217', NULL, NULL, NULL, NULL, NULL, NULL, 227, 2, 'en|227|2'),
(2339, 'en', NULL, '1234-variant-217', NULL, NULL, NULL, NULL, NULL, NULL, 227, 3, 'en|227|3'),
(2340, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 227, 4, 'default|227|4'),
(2341, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 227, 8, 'default|227|8'),
(2342, 'en', NULL, '1234-variant-217', NULL, NULL, NULL, NULL, NULL, NULL, 227, 9, 'en|227|9'),
(2343, 'en', NULL, '1234-variant-217', NULL, NULL, NULL, NULL, NULL, NULL, 227, 10, 'en|227|10'),
(2344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 227, 11, '227|11'),
(2345, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 227, 22, '227|22'),
(2346, NULL, NULL, NULL, NULL, 217, NULL, NULL, NULL, NULL, 227, 33, '227|33'),
(2347, NULL, NULL, '1234-variant-218', NULL, NULL, NULL, NULL, NULL, NULL, 228, 1, '228|1'),
(2348, 'en', NULL, 'Variant 218', NULL, NULL, NULL, NULL, NULL, NULL, 228, 2, 'en|228|2'),
(2349, 'en', NULL, '1234-variant-218', NULL, NULL, NULL, NULL, NULL, NULL, 228, 3, 'en|228|3'),
(2350, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 228, 4, 'default|228|4'),
(2351, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 228, 8, 'default|228|8'),
(2352, 'en', NULL, '1234-variant-218', NULL, NULL, NULL, NULL, NULL, NULL, 228, 9, 'en|228|9'),
(2353, 'en', NULL, '1234-variant-218', NULL, NULL, NULL, NULL, NULL, NULL, 228, 10, 'en|228|10'),
(2354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 228, 11, '228|11'),
(2355, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 228, 22, '228|22'),
(2356, NULL, NULL, NULL, NULL, 218, NULL, NULL, NULL, NULL, 228, 33, '228|33'),
(2357, NULL, NULL, '1234-variant-219', NULL, NULL, NULL, NULL, NULL, NULL, 229, 1, '229|1'),
(2358, 'en', NULL, 'Variant 219', NULL, NULL, NULL, NULL, NULL, NULL, 229, 2, 'en|229|2'),
(2359, 'en', NULL, '1234-variant-219', NULL, NULL, NULL, NULL, NULL, NULL, 229, 3, 'en|229|3'),
(2360, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 229, 4, 'default|229|4'),
(2361, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 229, 8, 'default|229|8'),
(2362, 'en', NULL, '1234-variant-219', NULL, NULL, NULL, NULL, NULL, NULL, 229, 9, 'en|229|9'),
(2363, 'en', NULL, '1234-variant-219', NULL, NULL, NULL, NULL, NULL, NULL, 229, 10, 'en|229|10'),
(2364, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 229, 11, '229|11'),
(2365, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 229, 22, '229|22'),
(2366, NULL, NULL, NULL, NULL, 219, NULL, NULL, NULL, NULL, 229, 33, '229|33'),
(2367, NULL, NULL, '1234-variant-220', NULL, NULL, NULL, NULL, NULL, NULL, 230, 1, '230|1'),
(2368, 'en', NULL, 'Variant 220', NULL, NULL, NULL, NULL, NULL, NULL, 230, 2, 'en|230|2'),
(2369, 'en', NULL, '1234-variant-220', NULL, NULL, NULL, NULL, NULL, NULL, 230, 3, 'en|230|3'),
(2370, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 230, 4, 'default|230|4'),
(2371, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 230, 8, 'default|230|8'),
(2372, 'en', NULL, '1234-variant-220', NULL, NULL, NULL, NULL, NULL, NULL, 230, 9, 'en|230|9'),
(2373, 'en', NULL, '1234-variant-220', NULL, NULL, NULL, NULL, NULL, NULL, 230, 10, 'en|230|10'),
(2374, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 230, 11, '230|11'),
(2375, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 230, 22, '230|22'),
(2376, NULL, NULL, NULL, NULL, 220, NULL, NULL, NULL, NULL, 230, 33, '230|33'),
(2377, NULL, NULL, '1234-variant-221', NULL, NULL, NULL, NULL, NULL, NULL, 231, 1, '231|1'),
(2378, 'en', NULL, 'Variant 221', NULL, NULL, NULL, NULL, NULL, NULL, 231, 2, 'en|231|2'),
(2379, 'en', NULL, '1234-variant-221', NULL, NULL, NULL, NULL, NULL, NULL, 231, 3, 'en|231|3'),
(2380, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 231, 4, 'default|231|4'),
(2381, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 231, 8, 'default|231|8'),
(2382, 'en', NULL, '1234-variant-221', NULL, NULL, NULL, NULL, NULL, NULL, 231, 9, 'en|231|9'),
(2383, 'en', NULL, '1234-variant-221', NULL, NULL, NULL, NULL, NULL, NULL, 231, 10, 'en|231|10'),
(2384, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 231, 11, '231|11'),
(2385, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 231, 22, '231|22'),
(2386, NULL, NULL, NULL, NULL, 221, NULL, NULL, NULL, NULL, 231, 33, '231|33'),
(2387, NULL, NULL, '1234-variant-222', NULL, NULL, NULL, NULL, NULL, NULL, 232, 1, '232|1'),
(2388, 'en', NULL, 'Variant 222', NULL, NULL, NULL, NULL, NULL, NULL, 232, 2, 'en|232|2'),
(2389, 'en', NULL, '1234-variant-222', NULL, NULL, NULL, NULL, NULL, NULL, 232, 3, 'en|232|3'),
(2390, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 232, 4, 'default|232|4'),
(2391, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 232, 8, 'default|232|8'),
(2392, 'en', NULL, '1234-variant-222', NULL, NULL, NULL, NULL, NULL, NULL, 232, 9, 'en|232|9'),
(2393, 'en', NULL, '1234-variant-222', NULL, NULL, NULL, NULL, NULL, NULL, 232, 10, 'en|232|10'),
(2394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 232, 11, '232|11'),
(2395, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 232, 22, '232|22'),
(2396, NULL, NULL, NULL, NULL, 222, NULL, NULL, NULL, NULL, 232, 33, '232|33'),
(2397, NULL, NULL, '1234-variant-223', NULL, NULL, NULL, NULL, NULL, NULL, 233, 1, '233|1'),
(2398, 'en', NULL, 'Variant 223', NULL, NULL, NULL, NULL, NULL, NULL, 233, 2, 'en|233|2'),
(2399, 'en', NULL, '1234-variant-223', NULL, NULL, NULL, NULL, NULL, NULL, 233, 3, 'en|233|3'),
(2400, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 233, 4, 'default|233|4'),
(2401, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 233, 8, 'default|233|8'),
(2402, 'en', NULL, '1234-variant-223', NULL, NULL, NULL, NULL, NULL, NULL, 233, 9, 'en|233|9'),
(2403, 'en', NULL, '1234-variant-223', NULL, NULL, NULL, NULL, NULL, NULL, 233, 10, 'en|233|10'),
(2404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 233, 11, '233|11'),
(2405, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 233, 22, '233|22'),
(2406, NULL, NULL, NULL, NULL, 223, NULL, NULL, NULL, NULL, 233, 33, '233|33'),
(2407, NULL, NULL, '1234-variant-224', NULL, NULL, NULL, NULL, NULL, NULL, 234, 1, '234|1'),
(2408, 'en', NULL, 'Variant 224', NULL, NULL, NULL, NULL, NULL, NULL, 234, 2, 'en|234|2'),
(2409, 'en', NULL, '1234-variant-224', NULL, NULL, NULL, NULL, NULL, NULL, 234, 3, 'en|234|3'),
(2410, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 234, 4, 'default|234|4'),
(2411, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 234, 8, 'default|234|8'),
(2412, 'en', NULL, '1234-variant-224', NULL, NULL, NULL, NULL, NULL, NULL, 234, 9, 'en|234|9'),
(2413, 'en', NULL, '1234-variant-224', NULL, NULL, NULL, NULL, NULL, NULL, 234, 10, 'en|234|10'),
(2414, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 234, 11, '234|11'),
(2415, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 234, 22, '234|22'),
(2416, NULL, NULL, NULL, NULL, 224, NULL, NULL, NULL, NULL, 234, 33, '234|33'),
(2417, NULL, NULL, '1234-variant-225', NULL, NULL, NULL, NULL, NULL, NULL, 235, 1, '235|1'),
(2418, 'en', NULL, 'Variant 225', NULL, NULL, NULL, NULL, NULL, NULL, 235, 2, 'en|235|2'),
(2419, 'en', NULL, '1234-variant-225', NULL, NULL, NULL, NULL, NULL, NULL, 235, 3, 'en|235|3'),
(2420, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 235, 4, 'default|235|4'),
(2421, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 235, 8, 'default|235|8'),
(2422, 'en', NULL, '1234-variant-225', NULL, NULL, NULL, NULL, NULL, NULL, 235, 9, 'en|235|9'),
(2423, 'en', NULL, '1234-variant-225', NULL, NULL, NULL, NULL, NULL, NULL, 235, 10, 'en|235|10'),
(2424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 235, 11, '235|11'),
(2425, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 235, 22, '235|22'),
(2426, NULL, NULL, NULL, NULL, 225, NULL, NULL, NULL, NULL, 235, 33, '235|33'),
(2427, NULL, NULL, '1234-variant-226', NULL, NULL, NULL, NULL, NULL, NULL, 236, 1, '236|1'),
(2428, 'en', NULL, 'Variant 226', NULL, NULL, NULL, NULL, NULL, NULL, 236, 2, 'en|236|2'),
(2429, 'en', NULL, '1234-variant-226', NULL, NULL, NULL, NULL, NULL, NULL, 236, 3, 'en|236|3'),
(2430, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 236, 4, 'default|236|4'),
(2431, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 236, 8, 'default|236|8'),
(2432, 'en', NULL, '1234-variant-226', NULL, NULL, NULL, NULL, NULL, NULL, 236, 9, 'en|236|9'),
(2433, 'en', NULL, '1234-variant-226', NULL, NULL, NULL, NULL, NULL, NULL, 236, 10, 'en|236|10'),
(2434, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 236, 11, '236|11'),
(2435, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 236, 22, '236|22'),
(2436, NULL, NULL, NULL, NULL, 226, NULL, NULL, NULL, NULL, 236, 33, '236|33'),
(2437, NULL, NULL, '1234-variant-227', NULL, NULL, NULL, NULL, NULL, NULL, 237, 1, '237|1'),
(2438, 'en', NULL, 'Variant 227', NULL, NULL, NULL, NULL, NULL, NULL, 237, 2, 'en|237|2'),
(2439, 'en', NULL, '1234-variant-227', NULL, NULL, NULL, NULL, NULL, NULL, 237, 3, 'en|237|3'),
(2440, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 237, 4, 'default|237|4'),
(2441, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 237, 8, 'default|237|8'),
(2442, 'en', NULL, '1234-variant-227', NULL, NULL, NULL, NULL, NULL, NULL, 237, 9, 'en|237|9'),
(2443, 'en', NULL, '1234-variant-227', NULL, NULL, NULL, NULL, NULL, NULL, 237, 10, 'en|237|10'),
(2444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 237, 11, '237|11'),
(2445, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 237, 22, '237|22'),
(2446, NULL, NULL, NULL, NULL, 227, NULL, NULL, NULL, NULL, 237, 33, '237|33'),
(2447, NULL, NULL, '1234-variant-228', NULL, NULL, NULL, NULL, NULL, NULL, 238, 1, '238|1'),
(2448, 'en', NULL, 'Variant 228', NULL, NULL, NULL, NULL, NULL, NULL, 238, 2, 'en|238|2'),
(2449, 'en', NULL, '1234-variant-228', NULL, NULL, NULL, NULL, NULL, NULL, 238, 3, 'en|238|3'),
(2450, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 238, 4, 'default|238|4'),
(2451, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 238, 8, 'default|238|8'),
(2452, 'en', NULL, '1234-variant-228', NULL, NULL, NULL, NULL, NULL, NULL, 238, 9, 'en|238|9'),
(2453, 'en', NULL, '1234-variant-228', NULL, NULL, NULL, NULL, NULL, NULL, 238, 10, 'en|238|10'),
(2454, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 238, 11, '238|11'),
(2455, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 238, 22, '238|22'),
(2456, NULL, NULL, NULL, NULL, 228, NULL, NULL, NULL, NULL, 238, 33, '238|33'),
(2457, NULL, NULL, '1234-variant-229', NULL, NULL, NULL, NULL, NULL, NULL, 239, 1, '239|1'),
(2458, 'en', NULL, 'Variant 229', NULL, NULL, NULL, NULL, NULL, NULL, 239, 2, 'en|239|2'),
(2459, 'en', NULL, '1234-variant-229', NULL, NULL, NULL, NULL, NULL, NULL, 239, 3, 'en|239|3'),
(2460, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 239, 4, 'default|239|4'),
(2461, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 239, 8, 'default|239|8'),
(2462, 'en', NULL, '1234-variant-229', NULL, NULL, NULL, NULL, NULL, NULL, 239, 9, 'en|239|9'),
(2463, 'en', NULL, '1234-variant-229', NULL, NULL, NULL, NULL, NULL, NULL, 239, 10, 'en|239|10'),
(2464, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 239, 11, '239|11'),
(2465, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 239, 22, '239|22'),
(2466, NULL, NULL, NULL, NULL, 229, NULL, NULL, NULL, NULL, 239, 33, '239|33'),
(2467, NULL, NULL, '1234-variant-230', NULL, NULL, NULL, NULL, NULL, NULL, 240, 1, '240|1'),
(2468, 'en', NULL, 'Variant 230', NULL, NULL, NULL, NULL, NULL, NULL, 240, 2, 'en|240|2'),
(2469, 'en', NULL, '1234-variant-230', NULL, NULL, NULL, NULL, NULL, NULL, 240, 3, 'en|240|3'),
(2470, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 240, 4, 'default|240|4'),
(2471, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 240, 8, 'default|240|8'),
(2472, 'en', NULL, '1234-variant-230', NULL, NULL, NULL, NULL, NULL, NULL, 240, 9, 'en|240|9'),
(2473, 'en', NULL, '1234-variant-230', NULL, NULL, NULL, NULL, NULL, NULL, 240, 10, 'en|240|10'),
(2474, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 240, 11, '240|11'),
(2475, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 240, 22, '240|22'),
(2476, NULL, NULL, NULL, NULL, 230, NULL, NULL, NULL, NULL, 240, 33, '240|33'),
(2477, NULL, NULL, '1234-variant-231', NULL, NULL, NULL, NULL, NULL, NULL, 241, 1, '241|1'),
(2478, 'en', NULL, 'Variant 231', NULL, NULL, NULL, NULL, NULL, NULL, 241, 2, 'en|241|2'),
(2479, 'en', NULL, '1234-variant-231', NULL, NULL, NULL, NULL, NULL, NULL, 241, 3, 'en|241|3'),
(2480, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 241, 4, 'default|241|4'),
(2481, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 241, 8, 'default|241|8'),
(2482, 'en', NULL, '1234-variant-231', NULL, NULL, NULL, NULL, NULL, NULL, 241, 9, 'en|241|9'),
(2483, 'en', NULL, '1234-variant-231', NULL, NULL, NULL, NULL, NULL, NULL, 241, 10, 'en|241|10'),
(2484, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 241, 11, '241|11'),
(2485, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 241, 22, '241|22'),
(2486, NULL, NULL, NULL, NULL, 231, NULL, NULL, NULL, NULL, 241, 33, '241|33'),
(2487, NULL, NULL, '1234-variant-232', NULL, NULL, NULL, NULL, NULL, NULL, 242, 1, '242|1'),
(2488, 'en', NULL, 'Variant 232', NULL, NULL, NULL, NULL, NULL, NULL, 242, 2, 'en|242|2'),
(2489, 'en', NULL, '1234-variant-232', NULL, NULL, NULL, NULL, NULL, NULL, 242, 3, 'en|242|3'),
(2490, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 242, 4, 'default|242|4'),
(2491, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 242, 8, 'default|242|8'),
(2492, 'en', NULL, '1234-variant-232', NULL, NULL, NULL, NULL, NULL, NULL, 242, 9, 'en|242|9'),
(2493, 'en', NULL, '1234-variant-232', NULL, NULL, NULL, NULL, NULL, NULL, 242, 10, 'en|242|10'),
(2494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 242, 11, '242|11'),
(2495, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 242, 22, '242|22'),
(2496, NULL, NULL, NULL, NULL, 232, NULL, NULL, NULL, NULL, 242, 33, '242|33'),
(2497, NULL, NULL, '1234-variant-233', NULL, NULL, NULL, NULL, NULL, NULL, 243, 1, '243|1'),
(2498, 'en', NULL, 'Variant 233', NULL, NULL, NULL, NULL, NULL, NULL, 243, 2, 'en|243|2'),
(2499, 'en', NULL, '1234-variant-233', NULL, NULL, NULL, NULL, NULL, NULL, 243, 3, 'en|243|3'),
(2500, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 243, 4, 'default|243|4'),
(2501, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 243, 8, 'default|243|8'),
(2502, 'en', NULL, '1234-variant-233', NULL, NULL, NULL, NULL, NULL, NULL, 243, 9, 'en|243|9'),
(2503, 'en', NULL, '1234-variant-233', NULL, NULL, NULL, NULL, NULL, NULL, 243, 10, 'en|243|10'),
(2504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 243, 11, '243|11'),
(2505, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 243, 22, '243|22'),
(2506, NULL, NULL, NULL, NULL, 233, NULL, NULL, NULL, NULL, 243, 33, '243|33'),
(2507, NULL, NULL, '1234-variant-234', NULL, NULL, NULL, NULL, NULL, NULL, 244, 1, '244|1'),
(2508, 'en', NULL, 'Variant 234', NULL, NULL, NULL, NULL, NULL, NULL, 244, 2, 'en|244|2'),
(2509, 'en', NULL, '1234-variant-234', NULL, NULL, NULL, NULL, NULL, NULL, 244, 3, 'en|244|3'),
(2510, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 244, 4, 'default|244|4'),
(2511, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 244, 8, 'default|244|8'),
(2512, 'en', NULL, '1234-variant-234', NULL, NULL, NULL, NULL, NULL, NULL, 244, 9, 'en|244|9'),
(2513, 'en', NULL, '1234-variant-234', NULL, NULL, NULL, NULL, NULL, NULL, 244, 10, 'en|244|10'),
(2514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 244, 11, '244|11'),
(2515, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 244, 22, '244|22'),
(2516, NULL, NULL, NULL, NULL, 234, NULL, NULL, NULL, NULL, 244, 33, '244|33'),
(2517, NULL, NULL, '1234-variant-235', NULL, NULL, NULL, NULL, NULL, NULL, 245, 1, '245|1'),
(2518, 'en', NULL, 'Variant 235', NULL, NULL, NULL, NULL, NULL, NULL, 245, 2, 'en|245|2'),
(2519, 'en', NULL, '1234-variant-235', NULL, NULL, NULL, NULL, NULL, NULL, 245, 3, 'en|245|3'),
(2520, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 245, 4, 'default|245|4'),
(2521, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 245, 8, 'default|245|8'),
(2522, 'en', NULL, '1234-variant-235', NULL, NULL, NULL, NULL, NULL, NULL, 245, 9, 'en|245|9'),
(2523, 'en', NULL, '1234-variant-235', NULL, NULL, NULL, NULL, NULL, NULL, 245, 10, 'en|245|10'),
(2524, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 245, 11, '245|11'),
(2525, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 245, 22, '245|22'),
(2526, NULL, NULL, NULL, NULL, 235, NULL, NULL, NULL, NULL, 245, 33, '245|33'),
(2527, NULL, NULL, '1234-variant-236', NULL, NULL, NULL, NULL, NULL, NULL, 246, 1, '246|1'),
(2528, 'en', NULL, 'Variant 236', NULL, NULL, NULL, NULL, NULL, NULL, 246, 2, 'en|246|2'),
(2529, 'en', NULL, '1234-variant-236', NULL, NULL, NULL, NULL, NULL, NULL, 246, 3, 'en|246|3'),
(2530, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 246, 4, 'default|246|4'),
(2531, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 246, 8, 'default|246|8'),
(2532, 'en', NULL, '1234-variant-236', NULL, NULL, NULL, NULL, NULL, NULL, 246, 9, 'en|246|9'),
(2533, 'en', NULL, '1234-variant-236', NULL, NULL, NULL, NULL, NULL, NULL, 246, 10, 'en|246|10'),
(2534, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 246, 11, '246|11'),
(2535, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 246, 22, '246|22'),
(2536, NULL, NULL, NULL, NULL, 236, NULL, NULL, NULL, NULL, 246, 33, '246|33'),
(2537, NULL, NULL, '1234-variant-237', NULL, NULL, NULL, NULL, NULL, NULL, 247, 1, '247|1'),
(2538, 'en', NULL, 'Variant 237', NULL, NULL, NULL, NULL, NULL, NULL, 247, 2, 'en|247|2'),
(2539, 'en', NULL, '1234-variant-237', NULL, NULL, NULL, NULL, NULL, NULL, 247, 3, 'en|247|3'),
(2540, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 247, 4, 'default|247|4'),
(2541, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 247, 8, 'default|247|8'),
(2542, 'en', NULL, '1234-variant-237', NULL, NULL, NULL, NULL, NULL, NULL, 247, 9, 'en|247|9'),
(2543, 'en', NULL, '1234-variant-237', NULL, NULL, NULL, NULL, NULL, NULL, 247, 10, 'en|247|10'),
(2544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 247, 11, '247|11'),
(2545, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 247, 22, '247|22'),
(2546, NULL, NULL, NULL, NULL, 237, NULL, NULL, NULL, NULL, 247, 33, '247|33'),
(2547, NULL, NULL, '1234-variant-238', NULL, NULL, NULL, NULL, NULL, NULL, 248, 1, '248|1'),
(2548, 'en', NULL, 'Variant 238', NULL, NULL, NULL, NULL, NULL, NULL, 248, 2, 'en|248|2'),
(2549, 'en', NULL, '1234-variant-238', NULL, NULL, NULL, NULL, NULL, NULL, 248, 3, 'en|248|3'),
(2550, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 248, 4, 'default|248|4'),
(2551, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 248, 8, 'default|248|8'),
(2552, 'en', NULL, '1234-variant-238', NULL, NULL, NULL, NULL, NULL, NULL, 248, 9, 'en|248|9'),
(2553, 'en', NULL, '1234-variant-238', NULL, NULL, NULL, NULL, NULL, NULL, 248, 10, 'en|248|10'),
(2554, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 248, 11, '248|11'),
(2555, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 248, 22, '248|22'),
(2556, NULL, NULL, NULL, NULL, 238, NULL, NULL, NULL, NULL, 248, 33, '248|33'),
(2557, NULL, NULL, '1234-variant-239', NULL, NULL, NULL, NULL, NULL, NULL, 249, 1, '249|1'),
(2558, 'en', NULL, 'Variant 239', NULL, NULL, NULL, NULL, NULL, NULL, 249, 2, 'en|249|2'),
(2559, 'en', NULL, '1234-variant-239', NULL, NULL, NULL, NULL, NULL, NULL, 249, 3, 'en|249|3'),
(2560, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 249, 4, 'default|249|4'),
(2561, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 249, 8, 'default|249|8'),
(2562, 'en', NULL, '1234-variant-239', NULL, NULL, NULL, NULL, NULL, NULL, 249, 9, 'en|249|9'),
(2563, 'en', NULL, '1234-variant-239', NULL, NULL, NULL, NULL, NULL, NULL, 249, 10, 'en|249|10'),
(2564, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 249, 11, '249|11'),
(2565, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 249, 22, '249|22'),
(2566, NULL, NULL, NULL, NULL, 239, NULL, NULL, NULL, NULL, 249, 33, '249|33'),
(2567, NULL, NULL, '1234-variant-240', NULL, NULL, NULL, NULL, NULL, NULL, 250, 1, '250|1'),
(2568, 'en', NULL, 'Variant 240', NULL, NULL, NULL, NULL, NULL, NULL, 250, 2, 'en|250|2'),
(2569, 'en', NULL, '1234-variant-240', NULL, NULL, NULL, NULL, NULL, NULL, 250, 3, 'en|250|3'),
(2570, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 250, 4, 'default|250|4'),
(2571, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 250, 8, 'default|250|8'),
(2572, 'en', NULL, '1234-variant-240', NULL, NULL, NULL, NULL, NULL, NULL, 250, 9, 'en|250|9'),
(2573, 'en', NULL, '1234-variant-240', NULL, NULL, NULL, NULL, NULL, NULL, 250, 10, 'en|250|10'),
(2574, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 250, 11, '250|11'),
(2575, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 250, 22, '250|22'),
(2576, NULL, NULL, NULL, NULL, 240, NULL, NULL, NULL, NULL, 250, 33, '250|33'),
(2577, NULL, NULL, '1234-variant-241', NULL, NULL, NULL, NULL, NULL, NULL, 251, 1, '251|1'),
(2578, 'en', NULL, 'Variant 241', NULL, NULL, NULL, NULL, NULL, NULL, 251, 2, 'en|251|2'),
(2579, 'en', NULL, '1234-variant-241', NULL, NULL, NULL, NULL, NULL, NULL, 251, 3, 'en|251|3'),
(2580, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 251, 4, 'default|251|4'),
(2581, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 251, 8, 'default|251|8'),
(2582, 'en', NULL, '1234-variant-241', NULL, NULL, NULL, NULL, NULL, NULL, 251, 9, 'en|251|9'),
(2583, 'en', NULL, '1234-variant-241', NULL, NULL, NULL, NULL, NULL, NULL, 251, 10, 'en|251|10'),
(2584, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 251, 11, '251|11'),
(2585, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 251, 22, '251|22'),
(2586, NULL, NULL, NULL, NULL, 241, NULL, NULL, NULL, NULL, 251, 33, '251|33'),
(2587, NULL, NULL, '1234-variant-242', NULL, NULL, NULL, NULL, NULL, NULL, 252, 1, '252|1'),
(2588, 'en', NULL, 'Variant 242', NULL, NULL, NULL, NULL, NULL, NULL, 252, 2, 'en|252|2'),
(2589, 'en', NULL, '1234-variant-242', NULL, NULL, NULL, NULL, NULL, NULL, 252, 3, 'en|252|3'),
(2590, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 252, 4, 'default|252|4'),
(2591, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 252, 8, 'default|252|8'),
(2592, 'en', NULL, '1234-variant-242', NULL, NULL, NULL, NULL, NULL, NULL, 252, 9, 'en|252|9'),
(2593, 'en', NULL, '1234-variant-242', NULL, NULL, NULL, NULL, NULL, NULL, 252, 10, 'en|252|10'),
(2594, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 252, 11, '252|11'),
(2595, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 252, 22, '252|22'),
(2596, NULL, NULL, NULL, NULL, 242, NULL, NULL, NULL, NULL, 252, 33, '252|33'),
(2597, NULL, NULL, '1234-variant-243', NULL, NULL, NULL, NULL, NULL, NULL, 253, 1, '253|1'),
(2598, 'en', NULL, 'Variant 243', NULL, NULL, NULL, NULL, NULL, NULL, 253, 2, 'en|253|2'),
(2599, 'en', NULL, '1234-variant-243', NULL, NULL, NULL, NULL, NULL, NULL, 253, 3, 'en|253|3'),
(2600, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 253, 4, 'default|253|4'),
(2601, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 253, 8, 'default|253|8'),
(2602, 'en', NULL, '1234-variant-243', NULL, NULL, NULL, NULL, NULL, NULL, 253, 9, 'en|253|9'),
(2603, 'en', NULL, '1234-variant-243', NULL, NULL, NULL, NULL, NULL, NULL, 253, 10, 'en|253|10'),
(2604, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 253, 11, '253|11'),
(2605, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 253, 22, '253|22'),
(2606, NULL, NULL, NULL, NULL, 243, NULL, NULL, NULL, NULL, 253, 33, '253|33'),
(2607, NULL, NULL, '1234-variant-244', NULL, NULL, NULL, NULL, NULL, NULL, 254, 1, '254|1'),
(2608, 'en', NULL, 'Variant 244', NULL, NULL, NULL, NULL, NULL, NULL, 254, 2, 'en|254|2'),
(2609, 'en', NULL, '1234-variant-244', NULL, NULL, NULL, NULL, NULL, NULL, 254, 3, 'en|254|3'),
(2610, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 254, 4, 'default|254|4'),
(2611, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 254, 8, 'default|254|8'),
(2612, 'en', NULL, '1234-variant-244', NULL, NULL, NULL, NULL, NULL, NULL, 254, 9, 'en|254|9'),
(2613, 'en', NULL, '1234-variant-244', NULL, NULL, NULL, NULL, NULL, NULL, 254, 10, 'en|254|10'),
(2614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 254, 11, '254|11'),
(2615, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 254, 22, '254|22'),
(2616, NULL, NULL, NULL, NULL, 244, NULL, NULL, NULL, NULL, 254, 33, '254|33'),
(2617, NULL, NULL, '1234-variant-245', NULL, NULL, NULL, NULL, NULL, NULL, 255, 1, '255|1'),
(2618, 'en', NULL, 'Variant 245', NULL, NULL, NULL, NULL, NULL, NULL, 255, 2, 'en|255|2'),
(2619, 'en', NULL, '1234-variant-245', NULL, NULL, NULL, NULL, NULL, NULL, 255, 3, 'en|255|3'),
(2620, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 255, 4, 'default|255|4'),
(2621, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 255, 8, 'default|255|8'),
(2622, 'en', NULL, '1234-variant-245', NULL, NULL, NULL, NULL, NULL, NULL, 255, 9, 'en|255|9'),
(2623, 'en', NULL, '1234-variant-245', NULL, NULL, NULL, NULL, NULL, NULL, 255, 10, 'en|255|10'),
(2624, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 255, 11, '255|11'),
(2625, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 255, 22, '255|22'),
(2626, NULL, NULL, NULL, NULL, 245, NULL, NULL, NULL, NULL, 255, 33, '255|33'),
(2627, NULL, NULL, '1234-variant-246', NULL, NULL, NULL, NULL, NULL, NULL, 256, 1, '256|1'),
(2628, 'en', NULL, 'Variant 246', NULL, NULL, NULL, NULL, NULL, NULL, 256, 2, 'en|256|2'),
(2629, 'en', NULL, '1234-variant-246', NULL, NULL, NULL, NULL, NULL, NULL, 256, 3, 'en|256|3'),
(2630, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 256, 4, 'default|256|4'),
(2631, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 256, 8, 'default|256|8'),
(2632, 'en', NULL, '1234-variant-246', NULL, NULL, NULL, NULL, NULL, NULL, 256, 9, 'en|256|9'),
(2633, 'en', NULL, '1234-variant-246', NULL, NULL, NULL, NULL, NULL, NULL, 256, 10, 'en|256|10'),
(2634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 256, 11, '256|11'),
(2635, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 256, 22, '256|22'),
(2636, NULL, NULL, NULL, NULL, 246, NULL, NULL, NULL, NULL, 256, 33, '256|33'),
(2637, NULL, NULL, '1234-variant-247', NULL, NULL, NULL, NULL, NULL, NULL, 257, 1, '257|1'),
(2638, 'en', NULL, 'Variant 247', NULL, NULL, NULL, NULL, NULL, NULL, 257, 2, 'en|257|2'),
(2639, 'en', NULL, '1234-variant-247', NULL, NULL, NULL, NULL, NULL, NULL, 257, 3, 'en|257|3'),
(2640, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 257, 4, 'default|257|4'),
(2641, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 257, 8, 'default|257|8'),
(2642, 'en', NULL, '1234-variant-247', NULL, NULL, NULL, NULL, NULL, NULL, 257, 9, 'en|257|9'),
(2643, 'en', NULL, '1234-variant-247', NULL, NULL, NULL, NULL, NULL, NULL, 257, 10, 'en|257|10'),
(2644, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 257, 11, '257|11'),
(2645, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 257, 22, '257|22'),
(2646, NULL, NULL, NULL, NULL, 247, NULL, NULL, NULL, NULL, 257, 33, '257|33'),
(2647, NULL, NULL, '1234-variant-248', NULL, NULL, NULL, NULL, NULL, NULL, 258, 1, '258|1'),
(2648, 'en', NULL, 'Variant 248', NULL, NULL, NULL, NULL, NULL, NULL, 258, 2, 'en|258|2'),
(2649, 'en', NULL, '1234-variant-248', NULL, NULL, NULL, NULL, NULL, NULL, 258, 3, 'en|258|3'),
(2650, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 258, 4, 'default|258|4'),
(2651, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 258, 8, 'default|258|8'),
(2652, 'en', NULL, '1234-variant-248', NULL, NULL, NULL, NULL, NULL, NULL, 258, 9, 'en|258|9'),
(2653, 'en', NULL, '1234-variant-248', NULL, NULL, NULL, NULL, NULL, NULL, 258, 10, 'en|258|10'),
(2654, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 258, 11, '258|11'),
(2655, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 258, 22, '258|22'),
(2656, NULL, NULL, NULL, NULL, 248, NULL, NULL, NULL, NULL, 258, 33, '258|33'),
(2657, NULL, NULL, '1234-variant-249', NULL, NULL, NULL, NULL, NULL, NULL, 259, 1, '259|1'),
(2658, 'en', NULL, 'Variant 249', NULL, NULL, NULL, NULL, NULL, NULL, 259, 2, 'en|259|2'),
(2659, 'en', NULL, '1234-variant-249', NULL, NULL, NULL, NULL, NULL, NULL, 259, 3, 'en|259|3'),
(2660, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 259, 4, 'default|259|4'),
(2661, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 259, 8, 'default|259|8'),
(2662, 'en', NULL, '1234-variant-249', NULL, NULL, NULL, NULL, NULL, NULL, 259, 9, 'en|259|9'),
(2663, 'en', NULL, '1234-variant-249', NULL, NULL, NULL, NULL, NULL, NULL, 259, 10, 'en|259|10'),
(2664, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 259, 11, '259|11'),
(2665, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 259, 22, '259|22'),
(2666, NULL, NULL, NULL, NULL, 249, NULL, NULL, NULL, NULL, 259, 33, '259|33'),
(2667, NULL, NULL, '1234-variant-250', NULL, NULL, NULL, NULL, NULL, NULL, 260, 1, '260|1'),
(2668, 'en', NULL, 'Variant 250', NULL, NULL, NULL, NULL, NULL, NULL, 260, 2, 'en|260|2'),
(2669, 'en', NULL, '1234-variant-250', NULL, NULL, NULL, NULL, NULL, NULL, 260, 3, 'en|260|3'),
(2670, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 260, 4, 'default|260|4');
INSERT INTO `product_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`, `unique_id`) VALUES
(2671, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 260, 8, 'default|260|8'),
(2672, 'en', NULL, '1234-variant-250', NULL, NULL, NULL, NULL, NULL, NULL, 260, 9, 'en|260|9'),
(2673, 'en', NULL, '1234-variant-250', NULL, NULL, NULL, NULL, NULL, NULL, 260, 10, 'en|260|10'),
(2674, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 260, 11, '260|11'),
(2675, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 260, 22, '260|22'),
(2676, NULL, NULL, NULL, NULL, 250, NULL, NULL, NULL, NULL, 260, 33, '260|33'),
(2677, NULL, NULL, '1234-variant-251', NULL, NULL, NULL, NULL, NULL, NULL, 261, 1, '261|1'),
(2678, 'en', NULL, 'Variant 251', NULL, NULL, NULL, NULL, NULL, NULL, 261, 2, 'en|261|2'),
(2679, 'en', NULL, '1234-variant-251', NULL, NULL, NULL, NULL, NULL, NULL, 261, 3, 'en|261|3'),
(2680, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 261, 4, 'default|261|4'),
(2681, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 261, 8, 'default|261|8'),
(2682, 'en', NULL, '1234-variant-251', NULL, NULL, NULL, NULL, NULL, NULL, 261, 9, 'en|261|9'),
(2683, 'en', NULL, '1234-variant-251', NULL, NULL, NULL, NULL, NULL, NULL, 261, 10, 'en|261|10'),
(2684, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 261, 11, '261|11'),
(2685, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 261, 22, '261|22'),
(2686, NULL, NULL, NULL, NULL, 251, NULL, NULL, NULL, NULL, 261, 33, '261|33'),
(2687, NULL, NULL, '1234-variant-252', NULL, NULL, NULL, NULL, NULL, NULL, 262, 1, '262|1'),
(2688, 'en', NULL, 'Variant 252', NULL, NULL, NULL, NULL, NULL, NULL, 262, 2, 'en|262|2'),
(2689, 'en', NULL, '1234-variant-252', NULL, NULL, NULL, NULL, NULL, NULL, 262, 3, 'en|262|3'),
(2690, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 262, 4, 'default|262|4'),
(2691, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 262, 8, 'default|262|8'),
(2692, 'en', NULL, '1234-variant-252', NULL, NULL, NULL, NULL, NULL, NULL, 262, 9, 'en|262|9'),
(2693, 'en', NULL, '1234-variant-252', NULL, NULL, NULL, NULL, NULL, NULL, 262, 10, 'en|262|10'),
(2694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 262, 11, '262|11'),
(2695, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 262, 22, '262|22'),
(2696, NULL, NULL, NULL, NULL, 252, NULL, NULL, NULL, NULL, 262, 33, '262|33'),
(2697, NULL, NULL, '1234-variant-253', NULL, NULL, NULL, NULL, NULL, NULL, 263, 1, '263|1'),
(2698, 'en', NULL, 'Variant 253', NULL, NULL, NULL, NULL, NULL, NULL, 263, 2, 'en|263|2'),
(2699, 'en', NULL, '1234-variant-253', NULL, NULL, NULL, NULL, NULL, NULL, 263, 3, 'en|263|3'),
(2700, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 263, 4, 'default|263|4'),
(2701, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 263, 8, 'default|263|8'),
(2702, 'en', NULL, '1234-variant-253', NULL, NULL, NULL, NULL, NULL, NULL, 263, 9, 'en|263|9'),
(2703, 'en', NULL, '1234-variant-253', NULL, NULL, NULL, NULL, NULL, NULL, 263, 10, 'en|263|10'),
(2704, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 263, 11, '263|11'),
(2705, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 263, 22, '263|22'),
(2706, NULL, NULL, NULL, NULL, 253, NULL, NULL, NULL, NULL, 263, 33, '263|33'),
(2707, NULL, NULL, '1234-variant-254', NULL, NULL, NULL, NULL, NULL, NULL, 264, 1, '264|1'),
(2708, 'en', NULL, 'Variant 254', NULL, NULL, NULL, NULL, NULL, NULL, 264, 2, 'en|264|2'),
(2709, 'en', NULL, '1234-variant-254', NULL, NULL, NULL, NULL, NULL, NULL, 264, 3, 'en|264|3'),
(2710, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 264, 4, 'default|264|4'),
(2711, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 264, 8, 'default|264|8'),
(2712, 'en', NULL, '1234-variant-254', NULL, NULL, NULL, NULL, NULL, NULL, 264, 9, 'en|264|9'),
(2713, 'en', NULL, '1234-variant-254', NULL, NULL, NULL, NULL, NULL, NULL, 264, 10, 'en|264|10'),
(2714, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 264, 11, '264|11'),
(2715, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 264, 22, '264|22'),
(2716, NULL, NULL, NULL, NULL, 254, NULL, NULL, NULL, NULL, 264, 33, '264|33'),
(2717, NULL, NULL, '1234-variant-255', NULL, NULL, NULL, NULL, NULL, NULL, 265, 1, '265|1'),
(2718, 'en', NULL, 'Variant 255', NULL, NULL, NULL, NULL, NULL, NULL, 265, 2, 'en|265|2'),
(2719, 'en', NULL, '1234-variant-255', NULL, NULL, NULL, NULL, NULL, NULL, 265, 3, 'en|265|3'),
(2720, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 265, 4, 'default|265|4'),
(2721, NULL, 'default', NULL, 1, NULL, NULL, NULL, NULL, NULL, 265, 8, 'default|265|8'),
(2722, 'en', NULL, '1234-variant-255', NULL, NULL, NULL, NULL, NULL, NULL, 265, 9, 'en|265|9'),
(2723, 'en', NULL, '1234-variant-255', NULL, NULL, NULL, NULL, NULL, NULL, 265, 10, 'en|265|10'),
(2724, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 265, 11, '265|11'),
(2725, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, 265, 22, '265|22'),
(2726, NULL, NULL, NULL, NULL, 255, NULL, NULL, NULL, NULL, 265, 33, '265|33');

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_options`
--

CREATE TABLE `product_bundle_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_bundle_options`
--

INSERT INTO `product_bundle_options` (`id`, `product_id`, `type`, `is_required`, `sort_order`) VALUES
(1, 6, 'radio', 1, 0),
(2, 6, 'radio', 1, 1),
(3, 6, 'checkbox', 1, 2),
(4, 6, 'checkbox', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_products`
--

CREATE TABLE `product_bundle_option_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_bundle_option_products`
--

INSERT INTO `product_bundle_option_products` (`id`, `product_id`, `product_bundle_option_id`, `qty`, `is_user_defined`, `is_default`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 0, 0),
(2, 2, 2, 2, 1, 1, 1),
(3, 3, 3, 1, 1, 1, 2),
(4, 4, 4, 2, 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_bundle_option_translations`
--

CREATE TABLE `product_bundle_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `label` varchar(191) DEFAULT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_bundle_option_translations`
--

INSERT INTO `product_bundle_option_translations` (`id`, `locale`, `label`, `product_bundle_option_id`) VALUES
(1, 'en', 'Bundle Option 1', 1),
(2, 'en', 'Bundle Option 1', 2),
(3, 'en', 'Bundle Option 2', 3),
(4, 'en', 'Bundle Option 2', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`product_id`, `category_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_channels`
--

CREATE TABLE `product_channels` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_channels`
--

INSERT INTO `product_channels` (`product_id`, `channel_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cross_sells`
--

CREATE TABLE `product_cross_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_cross_sells`
--

INSERT INTO `product_cross_sells` (`parent_id`, `child_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 3),
(2, 4),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_customer_group_prices`
--

CREATE TABLE `product_customer_group_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `value_type` varchar(191) NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `unique_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_customer_group_prices`
--

INSERT INTO `product_customer_group_prices` (`id`, `qty`, `value_type`, `value`, `product_id`, `customer_group_id`, `created_at`, `updated_at`, `unique_id`) VALUES
(1, 2, 'fixed', 12.0000, 1, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13', '002|1|1'),
(2, 2, 'fixed', 12.0000, 1, 2, '2025-02-13 07:16:13', '2025-02-13 07:16:13', '002|1|2'),
(3, 2, 'fixed', 12.0000, 1, 3, '2025-02-13 07:16:13', '2025-02-13 07:16:13', '002|1|3'),
(4, 3, 'fixed', 50.0000, 1, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13', '003|1|1'),
(5, 3, 'fixed', 50.0000, 1, 2, '2025-02-13 07:16:13', '2025-02-13 07:16:13', '003|1|2'),
(6, 3, 'fixed', 50.0000, 1, 3, '2025-02-13 07:16:13', '2025-02-13 07:16:13', '003|1|3');

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_links`
--

CREATE TABLE `product_downloadable_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sample_url` varchar(191) DEFAULT NULL,
  `sample_file` varchar(191) DEFAULT NULL,
  `sample_file_name` varchar(191) DEFAULT NULL,
  `sample_type` varchar(191) DEFAULT NULL,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_link_translations`
--

CREATE TABLE `product_downloadable_link_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_downloadable_link_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_samples`
--

CREATE TABLE `product_downloadable_samples` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `file` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_downloadable_sample_translations`
--

CREATE TABLE `product_downloadable_sample_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_downloadable_sample_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_flat`
--

CREATE TABLE `product_flat` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `product_number` varchar(191) DEFAULT NULL,
  `product_code` varchar(191) DEFAULT NULL,
  `manufacturer_detail` varchar(191) DEFAULT NULL,
  `packer_detail` varchar(191) DEFAULT NULL,
  `importer_detail` varchar(191) DEFAULT NULL,
  `country_of_origin` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url_key` varchar(191) DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `channel` varchar(191) DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_flat`
--

INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `product_code`, `manufacturer_detail`, `packer_detail`, `importer_detail`, `country_of_origin`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(1, 'SP-001', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, 'Arctic Cozy Knit Unisex Beanie', 'Embrace the chilly days in style with our Arctic Cozy Knit Beanie. Crafted from a soft and durable blend of acrylic, this classic beanie offers warmth and versatility. Suitable for both men and women, it\'s the ideal accessory for casual or outdoor wear. Elevate your winter wardrobe or gift someone special with this essential beanie cap.', 'The Arctic Cozy Knit Beanie is your go-to solution for staying warm, comfortable, and stylish during the colder months. Crafted from a soft and durable blend of acrylic knit, this beanie is designed to provide a cozy and snug fit. The classic design makes it suitable for both men and women, offering a versatile accessory that complements various styles. Whether you\'re heading out for a casual day in town or embracing the great outdoors, this beanie adds a touch of comfort and warmth to your ensemble. The soft and breathable material ensures that you stay cozy without sacrificing style. The Arctic Cozy Knit Beanie isn\'t just an accessory; it\'s a statement of winter fashion. Its simplicity makes it easy to pair with different outfits, making it a staple in your winter wardrobe. Ideal for gifting or as a treat for yourself, this beanie is a thoughtful addition to any winter ensemble. It\'s a versatile accessory that goes beyond functionality, adding a touch of warmth and style to your look. Embrace the essence of winter with the Arctic Cozy Knit Beanie. Whether you\'re enjoying a casual day out or facing the elements, let this beanie be your companion for comfort and style. Elevate your winter wardrobe with this classic accessory that effortlessly combines warmth with a timeless sense of fashion.', 'arctic-cozy-knit-unisex-beanie', 1, 1, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', 14.0000, NULL, NULL, NULL, 1.2300, '2025-02-13 13:01:13', 'en', 'default', 1, 1, '2025-02-14 10:49:52', NULL, 1),
(2, 'SP-002', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, 'Arctic Bliss Stylish Winter Scarf', 'Experience the embrace of warmth and style with our Arctic Bliss Winter Scarf. Crafted from a luxurious blend of acrylic and wool, this cozy scarf is designed to keep you snug during the coldest days. Its stylish and versatile design, combined with an extra-long length, offers customizable styling options. Elevate your winter wardrobe or delight someone special with this essential winter accessory.', 'The Arctic Bliss Winter Scarf is more than just a cold-weather accessory; it\'s a statement of warmth, comfort, and style for the winter season. Crafted with care from a luxurious blend of acrylic and wool, this scarf is designed to keep you cozy and snug even in the chilliest temperatures. The soft and plush texture not only provides insulation against the cold but also adds a touch of luxury to your winter wardrobe. The design of the Arctic Bliss Winter Scarf is both stylish and versatile, making it a perfect addition to a variety of winter outfits. Whether you\'re dressing up for a special occasion or adding a chic layer to your everyday look, this scarf complements your style effortlessly. The extra-long length of the scarf offers customizable styling options. Wrap it around for added warmth, drape it loosely for a casual look, or experiment with different knots to express your unique style. This versatility makes it a must-have accessory for the winter season. Looking for the perfect gift? The Arctic Bliss Winter Scarf is an ideal choice. Whether you\'re surprising a loved one or treating yourself, this scarf is a timeless and practical gift that will be cherished throughout the winter months. Embrace the winter with the Arctic Bliss Winter Scarf, where warmth meets style in perfect harmony. Elevate your winter wardrobe with this essential accessory that not only keeps you warm but also adds a touch of sophistication to your cold-weather ensemble.', 'arctic-bliss-stylish-winter-scarf', 1, 1, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', 17.0000, NULL, NULL, NULL, 1.2300, '2025-02-13 13:01:13', 'en', 'default', 1, 2, '2025-02-13 13:01:13', NULL, 1),
(3, 'SP-003', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, 'Arctic Touchscreen Winter Gloves', 'Stay connected and warm with our Arctic Touchscreen Winter Gloves. These gloves are not only crafted from high-quality acrylic for warmth and durability but also feature a touchscreen-compatible design. With an insulated lining, elastic cuffs for a secure fit, and a stylish look, these gloves are perfect for daily wear in chilly conditions.', 'Introducing the Arctic Touchscreen Winter Gloves – where warmth, style, and connectivity meet to enhance your winter experience. Crafted from high-quality acrylic, these gloves are designed to provide exceptional warmth and durability. The touchscreen-compatible fingertips allow you to stay connected without exposing your hands to the cold. Answer calls, send messages, and navigate your devices effortlessly, all while keeping your hands snug. The insulated lining adds an extra layer of coziness, making these gloves your go-to choice for facing the winter chill. Whether you\'re commuting, running errands, or enjoying outdoor activities, these gloves provide the warmth and protection you need. Elastic cuffs ensure a secure fit, preventing cold drafts and keeping the gloves in place during your daily activities. The stylish design adds a touch of flair to your winter ensemble, making these gloves as fashionable as they are functional. Ideal for gifting or as a treat for yourself, the Arctic Touchscreen Winter Gloves are a must-have accessory for the modern individual. Say goodbye to the inconvenience of removing your gloves to use your devices and embrace the seamless blend of warmth, style, and connectivity. Stay connected, stay warm, and stay stylish with the Arctic Touchscreen Winter Gloves – your reliable companion for conquering the winter season with confidence.', 'arctic-touchscreen-winter-gloves', 1, 1, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', 21.0000, 17.0000, '2025-02-13', '2025-02-14', 1.0000, '2025-02-13 13:01:13', 'en', 'default', 1, 3, '2025-03-04 22:26:50', NULL, 1),
(4, 'SP-004', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, 'Arctic Warmth Wool Blend Socks', 'Experience the unmatched warmth and comfort of our Arctic Warmth Wool Blend Socks. Crafted from a blend of Merino wool, acrylic, nylon, and spandex, these socks offer ultimate coziness for cold weather. With a reinforced heel and toe for durability, these versatile and stylish socks are perfect for various occasions.', 'Introducing the Arctic Warmth Wool Blend Socks – your essential companion for cozy and comfortable feet during the colder seasons. Crafted from a premium blend of Merino wool, acrylic, nylon, and spandex, these socks are designed to provide unparalleled warmth and comfort. The wool blend ensures that your feet stay toasty even in the coldest temperatures, making these socks the perfect choice for winter adventures or simply staying snug at home. The soft and cozy texture of the socks offers a luxurious feel against your skin. Say goodbye to chilly feet as you embrace the plush warmth provided by these wool blend socks. Designed for durability, the socks feature a reinforced heel and toe, adding extra strength to high-wear areas. This ensures that your socks withstand the test of time, providing long-lasting comfort and coziness. The breathable nature of the material prevents overheating, allowing your feet to stay comfortable and dry throughout the day. Whether you\'re heading outdoors for a winter hike or relaxing indoors, these socks offer the perfect balance of warmth and breathability. Versatile and stylish, these wool blend socks are suitable for various occasions. Pair them with your favorite boots for a fashionable winter look or wear them around the house for ultimate comfort. Elevate your winter wardrobe and prioritize comfort with the Arctic Warmth Wool Blend Socks. Treat your feet to the luxury they deserve and step into a world of coziness that lasts all season long.', 'arctic-warmth-wool-blend-socks', 0, 0, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', 21.0000, NULL, NULL, NULL, 1.0000, '2025-02-13 13:01:13', 'en', 'default', 1, 4, '2025-02-13 13:01:13', NULL, 1),
(5, 'GP-001', 'grouped', NULL, NULL, NULL, NULL, NULL, NULL, 'Arctic Frost Winter Accessories', 'Embrace the winter chill with our Arctic Frost Winter Accessories Bundle. This curated set includes a luxurious scarf, a cozy beanie, touchscreen-compatible gloves and wool Blend Socks. Stylish and functional, this ensemble is crafted from high-quality materials, ensuring both durability and comfort. Elevate your winter wardrobe or delight someone special with this perfect gifting option.', 'Introducing the Arctic Frost Winter Accessories Bundle, your go-to solution for staying warm, stylish, and connected during the chilly winter days. This thoughtfully curated set brings together Four essential winter accessories to create a harmonious ensemble. The luxurious scarf, woven from a blend of acrylic and wool, not only adds a layer of warmth but also brings a touch of elegance to your winter wardrobe. The soft knit beanie, crafted with care, promises to keep you cozy while adding a fashionable flair to your look. But it doesn\'t end there – our bundle also includes touchscreen-compatible gloves. Stay connected without sacrificing warmth as you navigate your devices effortlessly. Whether you\'re answering calls, sending messages, or capturing winter moments on your smartphone, these gloves ensure convenience without compromising style. The soft and cozy texture of the socks offers a luxurious feel against your skin. Say goodbye to chilly feet as you embrace the plush warmth provided by these wool blend socks. The Arctic Frost Winter Accessories Bundle is not just about functionality; it\'s a statement of winter fashion. Each piece is designed not only to protect you from the cold but also to elevate your style during the frosty season. The materials chosen for this bundle prioritize both durability and comfort, ensuring that you can enjoy the winter wonderland in style. Whether you\'re treating yourself or searching for the perfect gift, the Arctic Frost Winter Accessories Bundle is a versatile choice. Delight someone special during the holiday season or elevate your own winter wardrobe with this stylish and functional ensemble. Embrace the frost with confidence, knowing that you have the perfect accessories to keep you warm and chic.', 'arctic-frost-winter-accessories', 0, 0, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', NULL, NULL, NULL, NULL, 1.0000, '2025-02-13 13:01:13', 'en', 'default', 1, 5, '2025-02-13 13:01:13', NULL, 1),
(6, 'BP-001', 'bundle', NULL, NULL, NULL, NULL, NULL, NULL, 'Arctic Frost Winter Accessories Bundle', 'Embrace the winter chill with our Arctic Frost Winter Accessories Bundle. This curated set includes a luxurious scarf, a cozy beanie, touchscreen-compatible gloves and wool Blend Socks. Stylish and functional, this ensemble is crafted from high-quality materials, ensuring both durability and comfort. Elevate your winter wardrobe or delight someone special with this perfect gifting option.', 'Introducing the Arctic Frost Winter Accessories Bundle, your go-to solution for staying warm, stylish, and connected during the chilly winter days. This thoughtfully curated set brings together Four essential winter accessories to create a harmonious ensemble. The luxurious scarf, woven from a blend of acrylic and wool, not only adds a layer of warmth but also brings a touch of elegance to your winter wardrobe. The soft knit beanie, crafted with care, promises to keep you cozy while adding a fashionable flair to your look. But it doesn\'t end there – our bundle also includes touchscreen-compatible gloves. Stay connected without sacrificing warmth as you navigate your devices effortlessly. Whether you\'re answering calls, sending messages, or capturing winter moments on your smartphone, these gloves ensure convenience without compromising style. The soft and cozy texture of the socks offers a luxurious feel against your skin. Say goodbye to chilly feet as you embrace the plush warmth provided by these wool blend socks. The Arctic Frost Winter Accessories Bundle is not just about functionality; it\'s a statement of winter fashion. Each piece is designed not only to protect you from the cold but also to elevate your style during the frosty season. The materials chosen for this bundle prioritize both durability and comfort, ensuring that you can enjoy the winter wonderland in style. Whether you\'re treating yourself or searching for the perfect gift, the Arctic Frost Winter Accessories Bundle is a versatile choice. Delight someone special during the holiday season or elevate your own winter wardrobe with this stylish and functional ensemble. Embrace the frost with confidence, knowing that you have the perfect accessories to keep you warm and chic.', 'arctic-frost-winter-accessories-bundle', 0, 0, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', NULL, NULL, NULL, NULL, 1.0000, '2025-02-13 13:01:13', 'en', 'default', 1, 6, '2025-02-13 13:01:13', NULL, 1),
(7, 'CP-001', 'configurable', '', NULL, NULL, NULL, NULL, NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket', 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', 'Introducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.', 'omniheat-mens-solid-hooded-puffer-jacket', 0, 0, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', NULL, NULL, NULL, NULL, NULL, '2025-02-13 13:01:13', 'en', 'default', 1, 7, '2025-02-13 13:01:13', NULL, 1),
(8, 'SP-005', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket-Blue-Yellow-M', 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', 'Introducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.', 'omniheat-mens-solid-hooded-puffer-jacket-blue-yellow-m', 0, 0, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', 14.0000, NULL, NULL, NULL, 1.2300, '2025-02-13 13:01:13', 'en', 'default', 1, 8, '2025-02-13 13:01:13', NULL, 1),
(9, 'SP-006', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket-Blue-Yellow-L', 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', 'DescIntroducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.ription 9', 'omniheat-mens-solid-hooded-puffer-jacket-blue-yellow-l', 0, 0, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', 17.0000, NULL, NULL, NULL, 1.0000, '2025-02-13 13:01:13', 'en', 'default', 1, 9, '2025-02-13 13:01:13', NULL, 1),
(10, 'SP-007', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket-Blue-Green-M', 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', 'Introducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.', 'omniheat-mens-solid-hooded-puffer-jacket-blue-green-m', 0, 0, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', 21.0000, 17.0000, '2025-02-13', '2025-02-18', 1.0000, '2025-02-13 13:01:13', 'en', 'default', 1, 10, '2025-02-13 13:01:13', NULL, 1),
(11, 'SP-008', 'simple', NULL, NULL, NULL, NULL, NULL, NULL, 'OmniHeat Men\'s Solid Hooded Puffer Jacket-Blue-Green-L', 'Stay warm and stylish with our OmniHeat Men\'s Solid Hooded Puffer Jacket. This jacket is designed to provide ultimate warmth and features insert pockets for added convenience. The insulated material ensures you stay cozy in cold weather. Available in 5 attractive colors, making it a versatile choice for various occasions.', 'Introducing the OmniHeat Men\'s Solid Hooded Puffer Jacket, your go-to solution for staying warm and fashionable during colder seasons. This jacket is crafted with durability and warmth in mind, ensuring it becomes your trusted companion. The hooded design not only adds a touch of style but also provides additional warmth, shielding you from cold winds and weather. The full sleeves offer complete coverage, ensuring you stay cozy from shoulder to wrist. Equipped with insert pockets, this puffer jacket provides convenience for carrying your essentials or keeping your hands warm. The insulated synthetic filling offers enhanced warmth, making it ideal for battling chilly days and nights. Made from a durable polyester shell and lining, this jacket is built to last and endure the elements. Available in 5 attractive colors, you can choose the one that suits your style and preference. Versatile and functional, the OmniHeat Men\'s Solid Hooded Puffer Jacket is suitable for various occasions, whether you\'re heading to work, going for a casual outing, or attending an outdoor event. Experience the perfect blend of style, comfort, and functionality with OmniHeat Men\'s Solid Hooded Puffer Jacket. Elevate your winter wardrobe and stay snug while embracing the outdoors. Beat the cold in style and make a statement with this essential piece.', 'omniheat-mens-solid-hooded-puffer-jacket-blue-green-l', 0, 0, 1, 'Meta Title', 'meta1, meta2, meta3', 'meta description', 21.0000, 17.0000, '2025-02-13', '2025-02-23', 1.0000, '2025-02-13 13:01:13', 'en', 'default', 1, 11, '2025-02-13 13:01:13', NULL, 1),
(12, 'SP-012', 'downloadable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-02-14 10:56:54', 'en', 'default', 1, 12, '2025-02-14 10:56:54', NULL, NULL),
(13, '1234', 'configurable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-04 09:55:31', 'en', 'default', 1, 13, '2025-03-04 09:55:31', NULL, NULL),
(14, '1234-variant-1', 'simple', NULL, NULL, NULL, NULL, NULL, '1', 'Variant 1', '1234-variant-1', '1234-variant-1', '1234-variant-1', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 14, '2025-03-04 09:55:31', NULL, NULL),
(15, '1234-variant-2', 'simple', NULL, NULL, NULL, NULL, NULL, '2', 'Variant 2', '1234-variant-2', '1234-variant-2', '1234-variant-2', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 15, '2025-03-04 09:55:31', NULL, NULL),
(16, '1234-variant-3', 'simple', NULL, NULL, NULL, NULL, NULL, '3', 'Variant 3', '1234-variant-3', '1234-variant-3', '1234-variant-3', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 16, '2025-03-04 09:55:31', NULL, NULL),
(17, '1234-variant-4', 'simple', NULL, NULL, NULL, NULL, NULL, '4', 'Variant 4', '1234-variant-4', '1234-variant-4', '1234-variant-4', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 17, '2025-03-04 09:55:31', NULL, NULL),
(18, '1234-variant-5', 'simple', NULL, NULL, NULL, NULL, NULL, '5', 'Variant 5', '1234-variant-5', '1234-variant-5', '1234-variant-5', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 18, '2025-03-04 09:55:31', NULL, NULL),
(19, '1234-variant-6', 'simple', NULL, NULL, NULL, NULL, NULL, '6', 'Variant 6', '1234-variant-6', '1234-variant-6', '1234-variant-6', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 19, '2025-03-04 09:55:31', NULL, NULL),
(20, '1234-variant-7', 'simple', NULL, NULL, NULL, NULL, NULL, '7', 'Variant 7', '1234-variant-7', '1234-variant-7', '1234-variant-7', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 20, '2025-03-04 09:55:31', NULL, NULL),
(21, '1234-variant-8', 'simple', NULL, NULL, NULL, NULL, NULL, '8', 'Variant 8', '1234-variant-8', '1234-variant-8', '1234-variant-8', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 21, '2025-03-04 09:55:31', NULL, NULL),
(22, '1234-variant-9', 'simple', NULL, NULL, NULL, NULL, NULL, '9', 'Variant 9', '1234-variant-9', '1234-variant-9', '1234-variant-9', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 22, '2025-03-04 09:55:31', NULL, NULL),
(23, '1234-variant-10', 'simple', NULL, NULL, NULL, NULL, NULL, '10', 'Variant 10', '1234-variant-10', '1234-variant-10', '1234-variant-10', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 23, '2025-03-04 09:55:31', NULL, NULL),
(24, '1234-variant-11', 'simple', NULL, NULL, NULL, NULL, NULL, '11', 'Variant 11', '1234-variant-11', '1234-variant-11', '1234-variant-11', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 24, '2025-03-04 09:55:31', NULL, NULL),
(25, '1234-variant-12', 'simple', NULL, NULL, NULL, NULL, NULL, '12', 'Variant 12', '1234-variant-12', '1234-variant-12', '1234-variant-12', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 25, '2025-03-04 09:55:31', NULL, NULL),
(26, '1234-variant-13', 'simple', NULL, NULL, NULL, NULL, NULL, '13', 'Variant 13', '1234-variant-13', '1234-variant-13', '1234-variant-13', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 26, '2025-03-04 09:55:31', NULL, NULL),
(27, '1234-variant-14', 'simple', NULL, NULL, NULL, NULL, NULL, '14', 'Variant 14', '1234-variant-14', '1234-variant-14', '1234-variant-14', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 27, '2025-03-04 09:55:31', NULL, NULL),
(28, '1234-variant-15', 'simple', NULL, NULL, NULL, NULL, NULL, '15', 'Variant 15', '1234-variant-15', '1234-variant-15', '1234-variant-15', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 28, '2025-03-04 09:55:31', NULL, NULL),
(29, '1234-variant-17', 'simple', NULL, NULL, NULL, NULL, NULL, '17', 'Variant 17', '1234-variant-17', '1234-variant-17', '1234-variant-17', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 29, '2025-03-04 09:55:31', NULL, NULL),
(30, '1234-variant-18', 'simple', NULL, NULL, NULL, NULL, NULL, '18', 'Variant 18', '1234-variant-18', '1234-variant-18', '1234-variant-18', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 30, '2025-03-04 09:55:31', NULL, NULL),
(31, '1234-variant-19', 'simple', NULL, NULL, NULL, NULL, NULL, '19', 'Variant 19', '1234-variant-19', '1234-variant-19', '1234-variant-19', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 31, '2025-03-04 09:55:31', NULL, NULL),
(32, '1234-variant-21', 'simple', NULL, NULL, NULL, NULL, NULL, '21', 'Variant 21', '1234-variant-21', '1234-variant-21', '1234-variant-21', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 32, '2025-03-04 09:55:31', NULL, NULL),
(33, '1234-variant-22', 'simple', NULL, NULL, NULL, NULL, NULL, '22', 'Variant 22', '1234-variant-22', '1234-variant-22', '1234-variant-22', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 33, '2025-03-04 09:55:31', NULL, NULL),
(34, '1234-variant-23', 'simple', NULL, NULL, NULL, NULL, NULL, '23', 'Variant 23', '1234-variant-23', '1234-variant-23', '1234-variant-23', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 34, '2025-03-04 09:55:31', NULL, NULL),
(35, '1234-variant-24', 'simple', NULL, NULL, NULL, NULL, NULL, '24', 'Variant 24', '1234-variant-24', '1234-variant-24', '1234-variant-24', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 35, '2025-03-04 09:55:31', NULL, NULL),
(36, '1234-variant-25', 'simple', NULL, NULL, NULL, NULL, NULL, '25', 'Variant 25', '1234-variant-25', '1234-variant-25', '1234-variant-25', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 36, '2025-03-04 09:55:31', NULL, NULL),
(37, '1234-variant-26', 'simple', NULL, NULL, NULL, NULL, NULL, '26', 'Variant 26', '1234-variant-26', '1234-variant-26', '1234-variant-26', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 37, '2025-03-04 09:55:31', NULL, NULL),
(38, '1234-variant-27', 'simple', NULL, NULL, NULL, NULL, NULL, '27', 'Variant 27', '1234-variant-27', '1234-variant-27', '1234-variant-27', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 38, '2025-03-04 09:55:31', NULL, NULL),
(39, '1234-variant-28', 'simple', NULL, NULL, NULL, NULL, NULL, '28', 'Variant 28', '1234-variant-28', '1234-variant-28', '1234-variant-28', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 39, '2025-03-04 09:55:31', NULL, NULL),
(40, '1234-variant-29', 'simple', NULL, NULL, NULL, NULL, NULL, '29', 'Variant 29', '1234-variant-29', '1234-variant-29', '1234-variant-29', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 40, '2025-03-04 09:55:31', NULL, NULL),
(41, '1234-variant-30', 'simple', NULL, NULL, NULL, NULL, NULL, '30', 'Variant 30', '1234-variant-30', '1234-variant-30', '1234-variant-30', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 41, '2025-03-04 09:55:31', NULL, NULL),
(42, '1234-variant-31', 'simple', NULL, NULL, NULL, NULL, NULL, '31', 'Variant 31', '1234-variant-31', '1234-variant-31', '1234-variant-31', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 42, '2025-03-04 09:55:31', NULL, NULL),
(43, '1234-variant-32', 'simple', NULL, NULL, NULL, NULL, NULL, '32', 'Variant 32', '1234-variant-32', '1234-variant-32', '1234-variant-32', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 43, '2025-03-04 09:55:31', NULL, NULL),
(44, '1234-variant-33', 'simple', NULL, NULL, NULL, NULL, NULL, '33', 'Variant 33', '1234-variant-33', '1234-variant-33', '1234-variant-33', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 44, '2025-03-04 09:55:31', NULL, NULL),
(45, '1234-variant-34', 'simple', NULL, NULL, NULL, NULL, NULL, '34', 'Variant 34', '1234-variant-34', '1234-variant-34', '1234-variant-34', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 45, '2025-03-04 09:55:31', NULL, NULL),
(46, '1234-variant-35', 'simple', NULL, NULL, NULL, NULL, NULL, '35', 'Variant 35', '1234-variant-35', '1234-variant-35', '1234-variant-35', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 46, '2025-03-04 09:55:31', NULL, NULL),
(47, '1234-variant-36', 'simple', NULL, NULL, NULL, NULL, NULL, '36', 'Variant 36', '1234-variant-36', '1234-variant-36', '1234-variant-36', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 47, '2025-03-04 09:55:31', NULL, NULL),
(48, '1234-variant-37', 'simple', NULL, NULL, NULL, NULL, NULL, '37', 'Variant 37', '1234-variant-37', '1234-variant-37', '1234-variant-37', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 48, '2025-03-04 09:55:31', NULL, NULL),
(49, '1234-variant-38', 'simple', NULL, NULL, NULL, NULL, NULL, '38', 'Variant 38', '1234-variant-38', '1234-variant-38', '1234-variant-38', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 49, '2025-03-04 09:55:31', NULL, NULL),
(50, '1234-variant-39', 'simple', NULL, NULL, NULL, NULL, NULL, '39', 'Variant 39', '1234-variant-39', '1234-variant-39', '1234-variant-39', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 50, '2025-03-04 09:55:31', NULL, NULL),
(51, '1234-variant-40', 'simple', NULL, NULL, NULL, NULL, NULL, '40', 'Variant 40', '1234-variant-40', '1234-variant-40', '1234-variant-40', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 51, '2025-03-04 09:55:31', NULL, NULL),
(52, '1234-variant-41', 'simple', NULL, NULL, NULL, NULL, NULL, '41', 'Variant 41', '1234-variant-41', '1234-variant-41', '1234-variant-41', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 52, '2025-03-04 09:55:31', NULL, NULL),
(53, '1234-variant-42', 'simple', NULL, NULL, NULL, NULL, NULL, '42', 'Variant 42', '1234-variant-42', '1234-variant-42', '1234-variant-42', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 53, '2025-03-04 09:55:31', NULL, NULL),
(54, '1234-variant-44', 'simple', NULL, NULL, NULL, NULL, NULL, '44', 'Variant 44', '1234-variant-44', '1234-variant-44', '1234-variant-44', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 54, '2025-03-04 09:55:31', NULL, NULL),
(55, '1234-variant-45', 'simple', NULL, NULL, NULL, NULL, NULL, '45', 'Variant 45', '1234-variant-45', '1234-variant-45', '1234-variant-45', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 55, '2025-03-04 09:55:31', NULL, NULL),
(56, '1234-variant-46', 'simple', NULL, NULL, NULL, NULL, NULL, '46', 'Variant 46', '1234-variant-46', '1234-variant-46', '1234-variant-46', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 56, '2025-03-04 09:55:31', NULL, NULL),
(57, '1234-variant-47', 'simple', NULL, NULL, NULL, NULL, NULL, '47', 'Variant 47', '1234-variant-47', '1234-variant-47', '1234-variant-47', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 57, '2025-03-04 09:55:31', NULL, NULL),
(58, '1234-variant-48', 'simple', NULL, NULL, NULL, NULL, NULL, '48', 'Variant 48', '1234-variant-48', '1234-variant-48', '1234-variant-48', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 58, '2025-03-04 09:55:31', NULL, NULL),
(59, '1234-variant-49', 'simple', NULL, NULL, NULL, NULL, NULL, '49', 'Variant 49', '1234-variant-49', '1234-variant-49', '1234-variant-49', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 59, '2025-03-04 09:55:31', NULL, NULL),
(60, '1234-variant-50', 'simple', NULL, NULL, NULL, NULL, NULL, '50', 'Variant 50', '1234-variant-50', '1234-variant-50', '1234-variant-50', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 60, '2025-03-04 09:55:31', NULL, NULL),
(61, '1234-variant-51', 'simple', NULL, NULL, NULL, NULL, NULL, '51', 'Variant 51', '1234-variant-51', '1234-variant-51', '1234-variant-51', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 61, '2025-03-04 09:55:31', NULL, NULL),
(62, '1234-variant-52', 'simple', NULL, NULL, NULL, NULL, NULL, '52', 'Variant 52', '1234-variant-52', '1234-variant-52', '1234-variant-52', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 62, '2025-03-04 09:55:31', NULL, NULL),
(63, '1234-variant-53', 'simple', NULL, NULL, NULL, NULL, NULL, '53', 'Variant 53', '1234-variant-53', '1234-variant-53', '1234-variant-53', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 63, '2025-03-04 09:55:31', NULL, NULL),
(64, '1234-variant-54', 'simple', NULL, NULL, NULL, NULL, NULL, '54', 'Variant 54', '1234-variant-54', '1234-variant-54', '1234-variant-54', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 64, '2025-03-04 09:55:31', NULL, NULL),
(65, '1234-variant-55', 'simple', NULL, NULL, NULL, NULL, NULL, '55', 'Variant 55', '1234-variant-55', '1234-variant-55', '1234-variant-55', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 65, '2025-03-04 09:55:31', NULL, NULL),
(66, '1234-variant-56', 'simple', NULL, NULL, NULL, NULL, NULL, '56', 'Variant 56', '1234-variant-56', '1234-variant-56', '1234-variant-56', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 66, '2025-03-04 09:55:31', NULL, NULL),
(67, '1234-variant-57', 'simple', NULL, NULL, NULL, NULL, NULL, '57', 'Variant 57', '1234-variant-57', '1234-variant-57', '1234-variant-57', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 67, '2025-03-04 09:55:31', NULL, NULL),
(68, '1234-variant-58', 'simple', NULL, NULL, NULL, NULL, NULL, '58', 'Variant 58', '1234-variant-58', '1234-variant-58', '1234-variant-58', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 68, '2025-03-04 09:55:31', NULL, NULL),
(69, '1234-variant-59', 'simple', NULL, NULL, NULL, NULL, NULL, '59', 'Variant 59', '1234-variant-59', '1234-variant-59', '1234-variant-59', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 69, '2025-03-04 09:55:31', NULL, NULL),
(70, '1234-variant-60', 'simple', NULL, NULL, NULL, NULL, NULL, '60', 'Variant 60', '1234-variant-60', '1234-variant-60', '1234-variant-60', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 70, '2025-03-04 09:55:31', NULL, NULL),
(71, '1234-variant-61', 'simple', NULL, NULL, NULL, NULL, NULL, '61', 'Variant 61', '1234-variant-61', '1234-variant-61', '1234-variant-61', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 71, '2025-03-04 09:55:31', NULL, NULL),
(72, '1234-variant-62', 'simple', NULL, NULL, NULL, NULL, NULL, '62', 'Variant 62', '1234-variant-62', '1234-variant-62', '1234-variant-62', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 72, '2025-03-04 09:55:31', NULL, NULL),
(73, '1234-variant-63', 'simple', NULL, NULL, NULL, NULL, NULL, '63', 'Variant 63', '1234-variant-63', '1234-variant-63', '1234-variant-63', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 73, '2025-03-04 09:55:31', NULL, NULL),
(74, '1234-variant-64', 'simple', NULL, NULL, NULL, NULL, NULL, '64', 'Variant 64', '1234-variant-64', '1234-variant-64', '1234-variant-64', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 74, '2025-03-04 09:55:31', NULL, NULL),
(75, '1234-variant-65', 'simple', NULL, NULL, NULL, NULL, NULL, '65', 'Variant 65', '1234-variant-65', '1234-variant-65', '1234-variant-65', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 75, '2025-03-04 09:55:31', NULL, NULL),
(76, '1234-variant-66', 'simple', NULL, NULL, NULL, NULL, NULL, '66', 'Variant 66', '1234-variant-66', '1234-variant-66', '1234-variant-66', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 76, '2025-03-04 09:55:31', NULL, NULL),
(77, '1234-variant-67', 'simple', NULL, NULL, NULL, NULL, NULL, '67', 'Variant 67', '1234-variant-67', '1234-variant-67', '1234-variant-67', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 77, '2025-03-04 09:55:31', NULL, NULL),
(78, '1234-variant-68', 'simple', NULL, NULL, NULL, NULL, NULL, '68', 'Variant 68', '1234-variant-68', '1234-variant-68', '1234-variant-68', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 78, '2025-03-04 09:55:31', NULL, NULL),
(79, '1234-variant-69', 'simple', NULL, NULL, NULL, NULL, NULL, '69', 'Variant 69', '1234-variant-69', '1234-variant-69', '1234-variant-69', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 79, '2025-03-04 09:55:31', NULL, NULL),
(80, '1234-variant-70', 'simple', NULL, NULL, NULL, NULL, NULL, '70', 'Variant 70', '1234-variant-70', '1234-variant-70', '1234-variant-70', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 80, '2025-03-04 09:55:31', NULL, NULL),
(81, '1234-variant-71', 'simple', NULL, NULL, NULL, NULL, NULL, '71', 'Variant 71', '1234-variant-71', '1234-variant-71', '1234-variant-71', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 81, '2025-03-04 09:55:31', NULL, NULL),
(82, '1234-variant-72', 'simple', NULL, NULL, NULL, NULL, NULL, '72', 'Variant 72', '1234-variant-72', '1234-variant-72', '1234-variant-72', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 82, '2025-03-04 09:55:31', NULL, NULL),
(83, '1234-variant-73', 'simple', NULL, NULL, NULL, NULL, NULL, '73', 'Variant 73', '1234-variant-73', '1234-variant-73', '1234-variant-73', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 83, '2025-03-04 09:55:31', NULL, NULL),
(84, '1234-variant-74', 'simple', NULL, NULL, NULL, NULL, NULL, '74', 'Variant 74', '1234-variant-74', '1234-variant-74', '1234-variant-74', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 84, '2025-03-04 09:55:31', NULL, NULL),
(85, '1234-variant-75', 'simple', NULL, NULL, NULL, NULL, NULL, '75', 'Variant 75', '1234-variant-75', '1234-variant-75', '1234-variant-75', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 85, '2025-03-04 09:55:31', NULL, NULL),
(86, '1234-variant-76', 'simple', NULL, NULL, NULL, NULL, NULL, '76', 'Variant 76', '1234-variant-76', '1234-variant-76', '1234-variant-76', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 86, '2025-03-04 09:55:31', NULL, NULL),
(87, '1234-variant-77', 'simple', NULL, NULL, NULL, NULL, NULL, '77', 'Variant 77', '1234-variant-77', '1234-variant-77', '1234-variant-77', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 87, '2025-03-04 09:55:31', NULL, NULL),
(88, '1234-variant-78', 'simple', NULL, NULL, NULL, NULL, NULL, '78', 'Variant 78', '1234-variant-78', '1234-variant-78', '1234-variant-78', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 88, '2025-03-04 09:55:31', NULL, NULL),
(89, '1234-variant-79', 'simple', NULL, NULL, NULL, NULL, NULL, '79', 'Variant 79', '1234-variant-79', '1234-variant-79', '1234-variant-79', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 89, '2025-03-04 09:55:31', NULL, NULL),
(90, '1234-variant-80', 'simple', NULL, NULL, NULL, NULL, NULL, '80', 'Variant 80', '1234-variant-80', '1234-variant-80', '1234-variant-80', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 90, '2025-03-04 09:55:31', NULL, NULL),
(91, '1234-variant-81', 'simple', NULL, NULL, NULL, NULL, NULL, '81', 'Variant 81', '1234-variant-81', '1234-variant-81', '1234-variant-81', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 91, '2025-03-04 09:55:31', NULL, NULL),
(92, '1234-variant-82', 'simple', NULL, NULL, NULL, NULL, NULL, '82', 'Variant 82', '1234-variant-82', '1234-variant-82', '1234-variant-82', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 92, '2025-03-04 09:55:31', NULL, NULL),
(93, '1234-variant-83', 'simple', NULL, NULL, NULL, NULL, NULL, '83', 'Variant 83', '1234-variant-83', '1234-variant-83', '1234-variant-83', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:31', 'en', 'default', 1, 93, '2025-03-04 09:55:31', NULL, NULL),
(94, '1234-variant-84', 'simple', NULL, NULL, NULL, NULL, NULL, '84', 'Variant 84', '1234-variant-84', '1234-variant-84', '1234-variant-84', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 94, '2025-03-04 09:55:32', NULL, NULL),
(95, '1234-variant-85', 'simple', NULL, NULL, NULL, NULL, NULL, '85', 'Variant 85', '1234-variant-85', '1234-variant-85', '1234-variant-85', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 95, '2025-03-04 09:55:32', NULL, NULL),
(96, '1234-variant-86', 'simple', NULL, NULL, NULL, NULL, NULL, '86', 'Variant 86', '1234-variant-86', '1234-variant-86', '1234-variant-86', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 96, '2025-03-04 09:55:32', NULL, NULL),
(97, '1234-variant-87', 'simple', NULL, NULL, NULL, NULL, NULL, '87', 'Variant 87', '1234-variant-87', '1234-variant-87', '1234-variant-87', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 97, '2025-03-04 09:55:32', NULL, NULL),
(98, '1234-variant-88', 'simple', NULL, NULL, NULL, NULL, NULL, '88', 'Variant 88', '1234-variant-88', '1234-variant-88', '1234-variant-88', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 98, '2025-03-04 09:55:32', NULL, NULL),
(99, '1234-variant-89', 'simple', NULL, NULL, NULL, NULL, NULL, '89', 'Variant 89', '1234-variant-89', '1234-variant-89', '1234-variant-89', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 99, '2025-03-04 09:55:32', NULL, NULL),
(100, '1234-variant-90', 'simple', NULL, NULL, NULL, NULL, NULL, '90', 'Variant 90', '1234-variant-90', '1234-variant-90', '1234-variant-90', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 100, '2025-03-04 09:55:32', NULL, NULL),
(101, '1234-variant-91', 'simple', NULL, NULL, NULL, NULL, NULL, '91', 'Variant 91', '1234-variant-91', '1234-variant-91', '1234-variant-91', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 101, '2025-03-04 09:55:32', NULL, NULL);
INSERT INTO `product_flat` (`id`, `sku`, `type`, `product_number`, `product_code`, `manufacturer_detail`, `packer_detail`, `importer_detail`, `country_of_origin`, `name`, `short_description`, `description`, `url_key`, `new`, `featured`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `price`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `created_at`, `locale`, `channel`, `attribute_family_id`, `product_id`, `updated_at`, `parent_id`, `visible_individually`) VALUES
(102, '1234-variant-92', 'simple', NULL, NULL, NULL, NULL, NULL, '92', 'Variant 92', '1234-variant-92', '1234-variant-92', '1234-variant-92', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 102, '2025-03-04 09:55:32', NULL, NULL),
(103, '1234-variant-93', 'simple', NULL, NULL, NULL, NULL, NULL, '93', 'Variant 93', '1234-variant-93', '1234-variant-93', '1234-variant-93', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 103, '2025-03-04 09:55:32', NULL, NULL),
(104, '1234-variant-94', 'simple', NULL, NULL, NULL, NULL, NULL, '94', 'Variant 94', '1234-variant-94', '1234-variant-94', '1234-variant-94', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 104, '2025-03-04 09:55:32', NULL, NULL),
(105, '1234-variant-95', 'simple', NULL, NULL, NULL, NULL, NULL, '95', 'Variant 95', '1234-variant-95', '1234-variant-95', '1234-variant-95', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 105, '2025-03-04 09:55:32', NULL, NULL),
(106, '1234-variant-96', 'simple', NULL, NULL, NULL, NULL, NULL, '96', 'Variant 96', '1234-variant-96', '1234-variant-96', '1234-variant-96', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 106, '2025-03-04 09:55:32', NULL, NULL),
(107, '1234-variant-97', 'simple', NULL, NULL, NULL, NULL, NULL, '97', 'Variant 97', '1234-variant-97', '1234-variant-97', '1234-variant-97', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 107, '2025-03-04 09:55:32', NULL, NULL),
(108, '1234-variant-98', 'simple', NULL, NULL, NULL, NULL, NULL, '98', 'Variant 98', '1234-variant-98', '1234-variant-98', '1234-variant-98', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 108, '2025-03-04 09:55:32', NULL, NULL),
(109, '1234-variant-99', 'simple', NULL, NULL, NULL, NULL, NULL, '99', 'Variant 99', '1234-variant-99', '1234-variant-99', '1234-variant-99', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 109, '2025-03-04 09:55:32', NULL, NULL),
(110, '1234-variant-100', 'simple', NULL, NULL, NULL, NULL, NULL, '100', 'Variant 100', '1234-variant-100', '1234-variant-100', '1234-variant-100', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 110, '2025-03-04 09:55:32', NULL, NULL),
(111, '1234-variant-101', 'simple', NULL, NULL, NULL, NULL, NULL, '101', 'Variant 101', '1234-variant-101', '1234-variant-101', '1234-variant-101', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 111, '2025-03-04 09:55:32', NULL, NULL),
(112, '1234-variant-102', 'simple', NULL, NULL, NULL, NULL, NULL, '102', 'Variant 102', '1234-variant-102', '1234-variant-102', '1234-variant-102', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 112, '2025-03-04 09:55:32', NULL, NULL),
(113, '1234-variant-103', 'simple', NULL, NULL, NULL, NULL, NULL, '103', 'Variant 103', '1234-variant-103', '1234-variant-103', '1234-variant-103', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 113, '2025-03-04 09:55:32', NULL, NULL),
(114, '1234-variant-104', 'simple', NULL, NULL, NULL, NULL, NULL, '104', 'Variant 104', '1234-variant-104', '1234-variant-104', '1234-variant-104', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 114, '2025-03-04 09:55:32', NULL, NULL),
(115, '1234-variant-105', 'simple', NULL, NULL, NULL, NULL, NULL, '105', 'Variant 105', '1234-variant-105', '1234-variant-105', '1234-variant-105', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 115, '2025-03-04 09:55:32', NULL, NULL),
(116, '1234-variant-106', 'simple', NULL, NULL, NULL, NULL, NULL, '106', 'Variant 106', '1234-variant-106', '1234-variant-106', '1234-variant-106', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 116, '2025-03-04 09:55:32', NULL, NULL),
(117, '1234-variant-107', 'simple', NULL, NULL, NULL, NULL, NULL, '107', 'Variant 107', '1234-variant-107', '1234-variant-107', '1234-variant-107', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 117, '2025-03-04 09:55:32', NULL, NULL),
(118, '1234-variant-108', 'simple', NULL, NULL, NULL, NULL, NULL, '108', 'Variant 108', '1234-variant-108', '1234-variant-108', '1234-variant-108', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 118, '2025-03-04 09:55:32', NULL, NULL),
(119, '1234-variant-109', 'simple', NULL, NULL, NULL, NULL, NULL, '109', 'Variant 109', '1234-variant-109', '1234-variant-109', '1234-variant-109', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 119, '2025-03-04 09:55:32', NULL, NULL),
(120, '1234-variant-110', 'simple', NULL, NULL, NULL, NULL, NULL, '110', 'Variant 110', '1234-variant-110', '1234-variant-110', '1234-variant-110', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 120, '2025-03-04 09:55:32', NULL, NULL),
(121, '1234-variant-111', 'simple', NULL, NULL, NULL, NULL, NULL, '111', 'Variant 111', '1234-variant-111', '1234-variant-111', '1234-variant-111', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 121, '2025-03-04 09:55:32', NULL, NULL),
(122, '1234-variant-112', 'simple', NULL, NULL, NULL, NULL, NULL, '112', 'Variant 112', '1234-variant-112', '1234-variant-112', '1234-variant-112', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 122, '2025-03-04 09:55:32', NULL, NULL),
(123, '1234-variant-113', 'simple', NULL, NULL, NULL, NULL, NULL, '113', 'Variant 113', '1234-variant-113', '1234-variant-113', '1234-variant-113', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 123, '2025-03-04 09:55:32', NULL, NULL),
(124, '1234-variant-114', 'simple', NULL, NULL, NULL, NULL, NULL, '114', 'Variant 114', '1234-variant-114', '1234-variant-114', '1234-variant-114', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 124, '2025-03-04 09:55:32', NULL, NULL),
(125, '1234-variant-115', 'simple', NULL, NULL, NULL, NULL, NULL, '115', 'Variant 115', '1234-variant-115', '1234-variant-115', '1234-variant-115', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 125, '2025-03-04 09:55:32', NULL, NULL),
(126, '1234-variant-116', 'simple', NULL, NULL, NULL, NULL, NULL, '116', 'Variant 116', '1234-variant-116', '1234-variant-116', '1234-variant-116', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 126, '2025-03-04 09:55:32', NULL, NULL),
(127, '1234-variant-117', 'simple', NULL, NULL, NULL, NULL, NULL, '117', 'Variant 117', '1234-variant-117', '1234-variant-117', '1234-variant-117', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 127, '2025-03-04 09:55:32', NULL, NULL),
(128, '1234-variant-118', 'simple', NULL, NULL, NULL, NULL, NULL, '118', 'Variant 118', '1234-variant-118', '1234-variant-118', '1234-variant-118', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 128, '2025-03-04 09:55:32', NULL, NULL),
(129, '1234-variant-119', 'simple', NULL, NULL, NULL, NULL, NULL, '119', 'Variant 119', '1234-variant-119', '1234-variant-119', '1234-variant-119', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 129, '2025-03-04 09:55:32', NULL, NULL),
(130, '1234-variant-120', 'simple', NULL, NULL, NULL, NULL, NULL, '120', 'Variant 120', '1234-variant-120', '1234-variant-120', '1234-variant-120', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 130, '2025-03-04 09:55:32', NULL, NULL),
(131, '1234-variant-121', 'simple', NULL, NULL, NULL, NULL, NULL, '121', 'Variant 121', '1234-variant-121', '1234-variant-121', '1234-variant-121', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 131, '2025-03-04 09:55:32', NULL, NULL),
(132, '1234-variant-122', 'simple', NULL, NULL, NULL, NULL, NULL, '122', 'Variant 122', '1234-variant-122', '1234-variant-122', '1234-variant-122', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 132, '2025-03-04 09:55:32', NULL, NULL),
(133, '1234-variant-123', 'simple', NULL, NULL, NULL, NULL, NULL, '123', 'Variant 123', '1234-variant-123', '1234-variant-123', '1234-variant-123', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 133, '2025-03-04 09:55:32', NULL, NULL),
(134, '1234-variant-124', 'simple', NULL, NULL, NULL, NULL, NULL, '124', 'Variant 124', '1234-variant-124', '1234-variant-124', '1234-variant-124', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 134, '2025-03-04 09:55:32', NULL, NULL),
(135, '1234-variant-125', 'simple', NULL, NULL, NULL, NULL, NULL, '125', 'Variant 125', '1234-variant-125', '1234-variant-125', '1234-variant-125', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 135, '2025-03-04 09:55:32', NULL, NULL),
(136, '1234-variant-126', 'simple', NULL, NULL, NULL, NULL, NULL, '126', 'Variant 126', '1234-variant-126', '1234-variant-126', '1234-variant-126', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 136, '2025-03-04 09:55:32', NULL, NULL),
(137, '1234-variant-127', 'simple', NULL, NULL, NULL, NULL, NULL, '127', 'Variant 127', '1234-variant-127', '1234-variant-127', '1234-variant-127', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 137, '2025-03-04 09:55:32', NULL, NULL),
(138, '1234-variant-128', 'simple', NULL, NULL, NULL, NULL, NULL, '128', 'Variant 128', '1234-variant-128', '1234-variant-128', '1234-variant-128', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 138, '2025-03-04 09:55:32', NULL, NULL),
(139, '1234-variant-129', 'simple', NULL, NULL, NULL, NULL, NULL, '129', 'Variant 129', '1234-variant-129', '1234-variant-129', '1234-variant-129', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 139, '2025-03-04 09:55:32', NULL, NULL),
(140, '1234-variant-130', 'simple', NULL, NULL, NULL, NULL, NULL, '130', 'Variant 130', '1234-variant-130', '1234-variant-130', '1234-variant-130', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 140, '2025-03-04 09:55:32', NULL, NULL),
(141, '1234-variant-131', 'simple', NULL, NULL, NULL, NULL, NULL, '131', 'Variant 131', '1234-variant-131', '1234-variant-131', '1234-variant-131', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 141, '2025-03-04 09:55:32', NULL, NULL),
(142, '1234-variant-132', 'simple', NULL, NULL, NULL, NULL, NULL, '132', 'Variant 132', '1234-variant-132', '1234-variant-132', '1234-variant-132', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 142, '2025-03-04 09:55:32', NULL, NULL),
(143, '1234-variant-133', 'simple', NULL, NULL, NULL, NULL, NULL, '133', 'Variant 133', '1234-variant-133', '1234-variant-133', '1234-variant-133', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 143, '2025-03-04 09:55:32', NULL, NULL),
(144, '1234-variant-134', 'simple', NULL, NULL, NULL, NULL, NULL, '134', 'Variant 134', '1234-variant-134', '1234-variant-134', '1234-variant-134', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 144, '2025-03-04 09:55:32', NULL, NULL),
(145, '1234-variant-135', 'simple', NULL, NULL, NULL, NULL, NULL, '135', 'Variant 135', '1234-variant-135', '1234-variant-135', '1234-variant-135', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 145, '2025-03-04 09:55:32', NULL, NULL),
(146, '1234-variant-136', 'simple', NULL, NULL, NULL, NULL, NULL, '136', 'Variant 136', '1234-variant-136', '1234-variant-136', '1234-variant-136', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 146, '2025-03-04 09:55:32', NULL, NULL),
(147, '1234-variant-137', 'simple', NULL, NULL, NULL, NULL, NULL, '137', 'Variant 137', '1234-variant-137', '1234-variant-137', '1234-variant-137', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 147, '2025-03-04 09:55:32', NULL, NULL),
(148, '1234-variant-138', 'simple', NULL, NULL, NULL, NULL, NULL, '138', 'Variant 138', '1234-variant-138', '1234-variant-138', '1234-variant-138', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 148, '2025-03-04 09:55:32', NULL, NULL),
(149, '1234-variant-139', 'simple', NULL, NULL, NULL, NULL, NULL, '139', 'Variant 139', '1234-variant-139', '1234-variant-139', '1234-variant-139', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 149, '2025-03-04 09:55:32', NULL, NULL),
(150, '1234-variant-140', 'simple', NULL, NULL, NULL, NULL, NULL, '140', 'Variant 140', '1234-variant-140', '1234-variant-140', '1234-variant-140', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 150, '2025-03-04 09:55:32', NULL, NULL),
(151, '1234-variant-141', 'simple', NULL, NULL, NULL, NULL, NULL, '141', 'Variant 141', '1234-variant-141', '1234-variant-141', '1234-variant-141', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 151, '2025-03-04 09:55:32', NULL, NULL),
(152, '1234-variant-142', 'simple', NULL, NULL, NULL, NULL, NULL, '142', 'Variant 142', '1234-variant-142', '1234-variant-142', '1234-variant-142', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 152, '2025-03-04 09:55:32', NULL, NULL),
(153, '1234-variant-143', 'simple', NULL, NULL, NULL, NULL, NULL, '143', 'Variant 143', '1234-variant-143', '1234-variant-143', '1234-variant-143', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 153, '2025-03-04 09:55:32', NULL, NULL),
(154, '1234-variant-144', 'simple', NULL, NULL, NULL, NULL, NULL, '144', 'Variant 144', '1234-variant-144', '1234-variant-144', '1234-variant-144', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 154, '2025-03-04 09:55:32', NULL, NULL),
(155, '1234-variant-145', 'simple', NULL, NULL, NULL, NULL, NULL, '145', 'Variant 145', '1234-variant-145', '1234-variant-145', '1234-variant-145', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 155, '2025-03-04 09:55:32', NULL, NULL),
(156, '1234-variant-146', 'simple', NULL, NULL, NULL, NULL, NULL, '146', 'Variant 146', '1234-variant-146', '1234-variant-146', '1234-variant-146', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 156, '2025-03-04 09:55:32', NULL, NULL),
(157, '1234-variant-147', 'simple', NULL, NULL, NULL, NULL, NULL, '147', 'Variant 147', '1234-variant-147', '1234-variant-147', '1234-variant-147', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 157, '2025-03-04 09:55:32', NULL, NULL),
(158, '1234-variant-148', 'simple', NULL, NULL, NULL, NULL, NULL, '148', 'Variant 148', '1234-variant-148', '1234-variant-148', '1234-variant-148', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 158, '2025-03-04 09:55:32', NULL, NULL),
(159, '1234-variant-149', 'simple', NULL, NULL, NULL, NULL, NULL, '149', 'Variant 149', '1234-variant-149', '1234-variant-149', '1234-variant-149', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 159, '2025-03-04 09:55:32', NULL, NULL),
(160, '1234-variant-150', 'simple', NULL, NULL, NULL, NULL, NULL, '150', 'Variant 150', '1234-variant-150', '1234-variant-150', '1234-variant-150', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 160, '2025-03-04 09:55:32', NULL, NULL),
(161, '1234-variant-151', 'simple', NULL, NULL, NULL, NULL, NULL, '151', 'Variant 151', '1234-variant-151', '1234-variant-151', '1234-variant-151', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 161, '2025-03-04 09:55:32', NULL, NULL),
(162, '1234-variant-152', 'simple', NULL, NULL, NULL, NULL, NULL, '152', 'Variant 152', '1234-variant-152', '1234-variant-152', '1234-variant-152', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 162, '2025-03-04 09:55:32', NULL, NULL),
(163, '1234-variant-153', 'simple', NULL, NULL, NULL, NULL, NULL, '153', 'Variant 153', '1234-variant-153', '1234-variant-153', '1234-variant-153', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 163, '2025-03-04 09:55:32', NULL, NULL),
(164, '1234-variant-154', 'simple', NULL, NULL, NULL, NULL, NULL, '154', 'Variant 154', '1234-variant-154', '1234-variant-154', '1234-variant-154', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 164, '2025-03-04 09:55:32', NULL, NULL),
(165, '1234-variant-155', 'simple', NULL, NULL, NULL, NULL, NULL, '155', 'Variant 155', '1234-variant-155', '1234-variant-155', '1234-variant-155', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 165, '2025-03-04 09:55:32', NULL, NULL),
(166, '1234-variant-156', 'simple', NULL, NULL, NULL, NULL, NULL, '156', 'Variant 156', '1234-variant-156', '1234-variant-156', '1234-variant-156', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 166, '2025-03-04 09:55:32', NULL, NULL),
(167, '1234-variant-157', 'simple', NULL, NULL, NULL, NULL, NULL, '157', 'Variant 157', '1234-variant-157', '1234-variant-157', '1234-variant-157', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 167, '2025-03-04 09:55:32', NULL, NULL),
(168, '1234-variant-158', 'simple', NULL, NULL, NULL, NULL, NULL, '158', 'Variant 158', '1234-variant-158', '1234-variant-158', '1234-variant-158', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 168, '2025-03-04 09:55:32', NULL, NULL),
(169, '1234-variant-159', 'simple', NULL, NULL, NULL, NULL, NULL, '159', 'Variant 159', '1234-variant-159', '1234-variant-159', '1234-variant-159', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 169, '2025-03-04 09:55:32', NULL, NULL),
(170, '1234-variant-160', 'simple', NULL, NULL, NULL, NULL, NULL, '160', 'Variant 160', '1234-variant-160', '1234-variant-160', '1234-variant-160', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 170, '2025-03-04 09:55:32', NULL, NULL),
(171, '1234-variant-161', 'simple', NULL, NULL, NULL, NULL, NULL, '161', 'Variant 161', '1234-variant-161', '1234-variant-161', '1234-variant-161', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 171, '2025-03-04 09:55:32', NULL, NULL),
(172, '1234-variant-162', 'simple', NULL, NULL, NULL, NULL, NULL, '162', 'Variant 162', '1234-variant-162', '1234-variant-162', '1234-variant-162', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 172, '2025-03-04 09:55:32', NULL, NULL),
(173, '1234-variant-163', 'simple', NULL, NULL, NULL, NULL, NULL, '163', 'Variant 163', '1234-variant-163', '1234-variant-163', '1234-variant-163', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 173, '2025-03-04 09:55:32', NULL, NULL),
(174, '1234-variant-164', 'simple', NULL, NULL, NULL, NULL, NULL, '164', 'Variant 164', '1234-variant-164', '1234-variant-164', '1234-variant-164', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 174, '2025-03-04 09:55:32', NULL, NULL),
(175, '1234-variant-165', 'simple', NULL, NULL, NULL, NULL, NULL, '165', 'Variant 165', '1234-variant-165', '1234-variant-165', '1234-variant-165', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 175, '2025-03-04 09:55:32', NULL, NULL),
(176, '1234-variant-166', 'simple', NULL, NULL, NULL, NULL, NULL, '166', 'Variant 166', '1234-variant-166', '1234-variant-166', '1234-variant-166', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 176, '2025-03-04 09:55:32', NULL, NULL),
(177, '1234-variant-167', 'simple', NULL, NULL, NULL, NULL, NULL, '167', 'Variant 167', '1234-variant-167', '1234-variant-167', '1234-variant-167', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 177, '2025-03-04 09:55:32', NULL, NULL),
(178, '1234-variant-168', 'simple', NULL, NULL, NULL, NULL, NULL, '168', 'Variant 168', '1234-variant-168', '1234-variant-168', '1234-variant-168', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 178, '2025-03-04 09:55:32', NULL, NULL),
(179, '1234-variant-169', 'simple', NULL, NULL, NULL, NULL, NULL, '169', 'Variant 169', '1234-variant-169', '1234-variant-169', '1234-variant-169', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 179, '2025-03-04 09:55:32', NULL, NULL),
(180, '1234-variant-170', 'simple', NULL, NULL, NULL, NULL, NULL, '170', 'Variant 170', '1234-variant-170', '1234-variant-170', '1234-variant-170', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 180, '2025-03-04 09:55:32', NULL, NULL),
(181, '1234-variant-171', 'simple', NULL, NULL, NULL, NULL, NULL, '171', 'Variant 171', '1234-variant-171', '1234-variant-171', '1234-variant-171', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 181, '2025-03-04 09:55:32', NULL, NULL),
(182, '1234-variant-172', 'simple', NULL, NULL, NULL, NULL, NULL, '172', 'Variant 172', '1234-variant-172', '1234-variant-172', '1234-variant-172', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 182, '2025-03-04 09:55:32', NULL, NULL),
(183, '1234-variant-173', 'simple', NULL, NULL, NULL, NULL, NULL, '173', 'Variant 173', '1234-variant-173', '1234-variant-173', '1234-variant-173', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 183, '2025-03-04 09:55:32', NULL, NULL),
(184, '1234-variant-174', 'simple', NULL, NULL, NULL, NULL, NULL, '174', 'Variant 174', '1234-variant-174', '1234-variant-174', '1234-variant-174', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 184, '2025-03-04 09:55:32', NULL, NULL),
(185, '1234-variant-175', 'simple', NULL, NULL, NULL, NULL, NULL, '175', 'Variant 175', '1234-variant-175', '1234-variant-175', '1234-variant-175', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 185, '2025-03-04 09:55:32', NULL, NULL),
(186, '1234-variant-176', 'simple', NULL, NULL, NULL, NULL, NULL, '176', 'Variant 176', '1234-variant-176', '1234-variant-176', '1234-variant-176', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 186, '2025-03-04 09:55:32', NULL, NULL),
(187, '1234-variant-177', 'simple', NULL, NULL, NULL, NULL, NULL, '177', 'Variant 177', '1234-variant-177', '1234-variant-177', '1234-variant-177', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 187, '2025-03-04 09:55:32', NULL, NULL),
(188, '1234-variant-178', 'simple', NULL, NULL, NULL, NULL, NULL, '178', 'Variant 178', '1234-variant-178', '1234-variant-178', '1234-variant-178', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 188, '2025-03-04 09:55:32', NULL, NULL),
(189, '1234-variant-179', 'simple', NULL, NULL, NULL, NULL, NULL, '179', 'Variant 179', '1234-variant-179', '1234-variant-179', '1234-variant-179', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 189, '2025-03-04 09:55:32', NULL, NULL),
(190, '1234-variant-180', 'simple', NULL, NULL, NULL, NULL, NULL, '180', 'Variant 180', '1234-variant-180', '1234-variant-180', '1234-variant-180', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 190, '2025-03-04 09:55:32', NULL, NULL),
(191, '1234-variant-181', 'simple', NULL, NULL, NULL, NULL, NULL, '181', 'Variant 181', '1234-variant-181', '1234-variant-181', '1234-variant-181', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 191, '2025-03-04 09:55:32', NULL, NULL),
(192, '1234-variant-182', 'simple', NULL, NULL, NULL, NULL, NULL, '182', 'Variant 182', '1234-variant-182', '1234-variant-182', '1234-variant-182', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 192, '2025-03-04 09:55:32', NULL, NULL),
(193, '1234-variant-183', 'simple', NULL, NULL, NULL, NULL, NULL, '183', 'Variant 183', '1234-variant-183', '1234-variant-183', '1234-variant-183', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:32', 'en', 'default', 1, 193, '2025-03-04 09:55:32', NULL, NULL),
(194, '1234-variant-184', 'simple', NULL, NULL, NULL, NULL, NULL, '184', 'Variant 184', '1234-variant-184', '1234-variant-184', '1234-variant-184', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 194, '2025-03-04 09:55:33', NULL, NULL),
(195, '1234-variant-185', 'simple', NULL, NULL, NULL, NULL, NULL, '185', 'Variant 185', '1234-variant-185', '1234-variant-185', '1234-variant-185', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 195, '2025-03-04 09:55:33', NULL, NULL),
(196, '1234-variant-186', 'simple', NULL, NULL, NULL, NULL, NULL, '186', 'Variant 186', '1234-variant-186', '1234-variant-186', '1234-variant-186', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 196, '2025-03-04 09:55:33', NULL, NULL),
(197, '1234-variant-187', 'simple', NULL, NULL, NULL, NULL, NULL, '187', 'Variant 187', '1234-variant-187', '1234-variant-187', '1234-variant-187', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 197, '2025-03-04 09:55:33', NULL, NULL),
(198, '1234-variant-188', 'simple', NULL, NULL, NULL, NULL, NULL, '188', 'Variant 188', '1234-variant-188', '1234-variant-188', '1234-variant-188', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 198, '2025-03-04 09:55:33', NULL, NULL),
(199, '1234-variant-189', 'simple', NULL, NULL, NULL, NULL, NULL, '189', 'Variant 189', '1234-variant-189', '1234-variant-189', '1234-variant-189', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 199, '2025-03-04 09:55:33', NULL, NULL),
(200, '1234-variant-190', 'simple', NULL, NULL, NULL, NULL, NULL, '190', 'Variant 190', '1234-variant-190', '1234-variant-190', '1234-variant-190', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 200, '2025-03-04 09:55:33', NULL, NULL),
(201, '1234-variant-191', 'simple', NULL, NULL, NULL, NULL, NULL, '191', 'Variant 191', '1234-variant-191', '1234-variant-191', '1234-variant-191', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 201, '2025-03-04 09:55:33', NULL, NULL),
(202, '1234-variant-192', 'simple', NULL, NULL, NULL, NULL, NULL, '192', 'Variant 192', '1234-variant-192', '1234-variant-192', '1234-variant-192', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 202, '2025-03-04 09:55:33', NULL, NULL),
(203, '1234-variant-193', 'simple', NULL, NULL, NULL, NULL, NULL, '193', 'Variant 193', '1234-variant-193', '1234-variant-193', '1234-variant-193', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 203, '2025-03-04 09:55:33', NULL, NULL),
(204, '1234-variant-194', 'simple', NULL, NULL, NULL, NULL, NULL, '194', 'Variant 194', '1234-variant-194', '1234-variant-194', '1234-variant-194', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 204, '2025-03-04 09:55:33', NULL, NULL),
(205, '1234-variant-195', 'simple', NULL, NULL, NULL, NULL, NULL, '195', 'Variant 195', '1234-variant-195', '1234-variant-195', '1234-variant-195', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 205, '2025-03-04 09:55:33', NULL, NULL),
(206, '1234-variant-196', 'simple', NULL, NULL, NULL, NULL, NULL, '196', 'Variant 196', '1234-variant-196', '1234-variant-196', '1234-variant-196', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 206, '2025-03-04 09:55:33', NULL, NULL),
(207, '1234-variant-197', 'simple', NULL, NULL, NULL, NULL, NULL, '197', 'Variant 197', '1234-variant-197', '1234-variant-197', '1234-variant-197', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 207, '2025-03-04 09:55:33', NULL, NULL),
(208, '1234-variant-198', 'simple', NULL, NULL, NULL, NULL, NULL, '198', 'Variant 198', '1234-variant-198', '1234-variant-198', '1234-variant-198', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 208, '2025-03-04 09:55:33', NULL, NULL),
(209, '1234-variant-199', 'simple', NULL, NULL, NULL, NULL, NULL, '199', 'Variant 199', '1234-variant-199', '1234-variant-199', '1234-variant-199', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 209, '2025-03-04 09:55:33', NULL, NULL),
(210, '1234-variant-200', 'simple', NULL, NULL, NULL, NULL, NULL, '200', 'Variant 200', '1234-variant-200', '1234-variant-200', '1234-variant-200', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 210, '2025-03-04 09:55:33', NULL, NULL),
(211, '1234-variant-201', 'simple', NULL, NULL, NULL, NULL, NULL, '201', 'Variant 201', '1234-variant-201', '1234-variant-201', '1234-variant-201', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 211, '2025-03-04 09:55:33', NULL, NULL),
(212, '1234-variant-202', 'simple', NULL, NULL, NULL, NULL, NULL, '202', 'Variant 202', '1234-variant-202', '1234-variant-202', '1234-variant-202', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 212, '2025-03-04 09:55:33', NULL, NULL),
(213, '1234-variant-203', 'simple', NULL, NULL, NULL, NULL, NULL, '203', 'Variant 203', '1234-variant-203', '1234-variant-203', '1234-variant-203', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 213, '2025-03-04 09:55:33', NULL, NULL),
(214, '1234-variant-204', 'simple', NULL, NULL, NULL, NULL, NULL, '204', 'Variant 204', '1234-variant-204', '1234-variant-204', '1234-variant-204', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 214, '2025-03-04 09:55:33', NULL, NULL),
(215, '1234-variant-205', 'simple', NULL, NULL, NULL, NULL, NULL, '205', 'Variant 205', '1234-variant-205', '1234-variant-205', '1234-variant-205', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 215, '2025-03-04 09:55:33', NULL, NULL),
(216, '1234-variant-206', 'simple', NULL, NULL, NULL, NULL, NULL, '206', 'Variant 206', '1234-variant-206', '1234-variant-206', '1234-variant-206', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 216, '2025-03-04 09:55:33', NULL, NULL),
(217, '1234-variant-207', 'simple', NULL, NULL, NULL, NULL, NULL, '207', 'Variant 207', '1234-variant-207', '1234-variant-207', '1234-variant-207', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 217, '2025-03-04 09:55:33', NULL, NULL),
(218, '1234-variant-208', 'simple', NULL, NULL, NULL, NULL, NULL, '208', 'Variant 208', '1234-variant-208', '1234-variant-208', '1234-variant-208', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 218, '2025-03-04 09:55:33', NULL, NULL),
(219, '1234-variant-209', 'simple', NULL, NULL, NULL, NULL, NULL, '209', 'Variant 209', '1234-variant-209', '1234-variant-209', '1234-variant-209', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 219, '2025-03-04 09:55:33', NULL, NULL),
(220, '1234-variant-210', 'simple', NULL, NULL, NULL, NULL, NULL, '210', 'Variant 210', '1234-variant-210', '1234-variant-210', '1234-variant-210', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 220, '2025-03-04 09:55:33', NULL, NULL),
(221, '1234-variant-211', 'simple', NULL, NULL, NULL, NULL, NULL, '211', 'Variant 211', '1234-variant-211', '1234-variant-211', '1234-variant-211', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 221, '2025-03-04 09:55:33', NULL, NULL),
(222, '1234-variant-212', 'simple', NULL, NULL, NULL, NULL, NULL, '212', 'Variant 212', '1234-variant-212', '1234-variant-212', '1234-variant-212', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 222, '2025-03-04 09:55:33', NULL, NULL),
(223, '1234-variant-213', 'simple', NULL, NULL, NULL, NULL, NULL, '213', 'Variant 213', '1234-variant-213', '1234-variant-213', '1234-variant-213', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 223, '2025-03-04 09:55:33', NULL, NULL),
(224, '1234-variant-214', 'simple', NULL, NULL, NULL, NULL, NULL, '214', 'Variant 214', '1234-variant-214', '1234-variant-214', '1234-variant-214', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 224, '2025-03-04 09:55:33', NULL, NULL),
(225, '1234-variant-215', 'simple', NULL, NULL, NULL, NULL, NULL, '215', 'Variant 215', '1234-variant-215', '1234-variant-215', '1234-variant-215', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 225, '2025-03-04 09:55:33', NULL, NULL),
(226, '1234-variant-216', 'simple', NULL, NULL, NULL, NULL, NULL, '216', 'Variant 216', '1234-variant-216', '1234-variant-216', '1234-variant-216', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 226, '2025-03-04 09:55:33', NULL, NULL),
(227, '1234-variant-217', 'simple', NULL, NULL, NULL, NULL, NULL, '217', 'Variant 217', '1234-variant-217', '1234-variant-217', '1234-variant-217', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 227, '2025-03-04 09:55:33', NULL, NULL),
(228, '1234-variant-218', 'simple', NULL, NULL, NULL, NULL, NULL, '218', 'Variant 218', '1234-variant-218', '1234-variant-218', '1234-variant-218', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 228, '2025-03-04 09:55:33', NULL, NULL),
(229, '1234-variant-219', 'simple', NULL, NULL, NULL, NULL, NULL, '219', 'Variant 219', '1234-variant-219', '1234-variant-219', '1234-variant-219', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 229, '2025-03-04 09:55:33', NULL, NULL),
(230, '1234-variant-220', 'simple', NULL, NULL, NULL, NULL, NULL, '220', 'Variant 220', '1234-variant-220', '1234-variant-220', '1234-variant-220', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 230, '2025-03-04 09:55:33', NULL, NULL),
(231, '1234-variant-221', 'simple', NULL, NULL, NULL, NULL, NULL, '221', 'Variant 221', '1234-variant-221', '1234-variant-221', '1234-variant-221', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 231, '2025-03-04 09:55:33', NULL, NULL),
(232, '1234-variant-222', 'simple', NULL, NULL, NULL, NULL, NULL, '222', 'Variant 222', '1234-variant-222', '1234-variant-222', '1234-variant-222', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 232, '2025-03-04 09:55:33', NULL, NULL),
(233, '1234-variant-223', 'simple', NULL, NULL, NULL, NULL, NULL, '223', 'Variant 223', '1234-variant-223', '1234-variant-223', '1234-variant-223', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 233, '2025-03-04 09:55:33', NULL, NULL),
(234, '1234-variant-224', 'simple', NULL, NULL, NULL, NULL, NULL, '224', 'Variant 224', '1234-variant-224', '1234-variant-224', '1234-variant-224', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 234, '2025-03-04 09:55:33', NULL, NULL),
(235, '1234-variant-225', 'simple', NULL, NULL, NULL, NULL, NULL, '225', 'Variant 225', '1234-variant-225', '1234-variant-225', '1234-variant-225', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 235, '2025-03-04 09:55:33', NULL, NULL),
(236, '1234-variant-226', 'simple', NULL, NULL, NULL, NULL, NULL, '226', 'Variant 226', '1234-variant-226', '1234-variant-226', '1234-variant-226', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 236, '2025-03-04 09:55:33', NULL, NULL),
(237, '1234-variant-227', 'simple', NULL, NULL, NULL, NULL, NULL, '227', 'Variant 227', '1234-variant-227', '1234-variant-227', '1234-variant-227', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 237, '2025-03-04 09:55:33', NULL, NULL),
(238, '1234-variant-228', 'simple', NULL, NULL, NULL, NULL, NULL, '228', 'Variant 228', '1234-variant-228', '1234-variant-228', '1234-variant-228', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 238, '2025-03-04 09:55:33', NULL, NULL),
(239, '1234-variant-229', 'simple', NULL, NULL, NULL, NULL, NULL, '229', 'Variant 229', '1234-variant-229', '1234-variant-229', '1234-variant-229', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 239, '2025-03-04 09:55:33', NULL, NULL),
(240, '1234-variant-230', 'simple', NULL, NULL, NULL, NULL, NULL, '230', 'Variant 230', '1234-variant-230', '1234-variant-230', '1234-variant-230', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 240, '2025-03-04 09:55:33', NULL, NULL),
(241, '1234-variant-231', 'simple', NULL, NULL, NULL, NULL, NULL, '231', 'Variant 231', '1234-variant-231', '1234-variant-231', '1234-variant-231', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 241, '2025-03-04 09:55:33', NULL, NULL),
(242, '1234-variant-232', 'simple', NULL, NULL, NULL, NULL, NULL, '232', 'Variant 232', '1234-variant-232', '1234-variant-232', '1234-variant-232', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 242, '2025-03-04 09:55:33', NULL, NULL),
(243, '1234-variant-233', 'simple', NULL, NULL, NULL, NULL, NULL, '233', 'Variant 233', '1234-variant-233', '1234-variant-233', '1234-variant-233', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 243, '2025-03-04 09:55:33', NULL, NULL),
(244, '1234-variant-234', 'simple', NULL, NULL, NULL, NULL, NULL, '234', 'Variant 234', '1234-variant-234', '1234-variant-234', '1234-variant-234', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 244, '2025-03-04 09:55:33', NULL, NULL),
(245, '1234-variant-235', 'simple', NULL, NULL, NULL, NULL, NULL, '235', 'Variant 235', '1234-variant-235', '1234-variant-235', '1234-variant-235', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 245, '2025-03-04 09:55:33', NULL, NULL),
(246, '1234-variant-236', 'simple', NULL, NULL, NULL, NULL, NULL, '236', 'Variant 236', '1234-variant-236', '1234-variant-236', '1234-variant-236', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 246, '2025-03-04 09:55:33', NULL, NULL),
(247, '1234-variant-237', 'simple', NULL, NULL, NULL, NULL, NULL, '237', 'Variant 237', '1234-variant-237', '1234-variant-237', '1234-variant-237', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 247, '2025-03-04 09:55:33', NULL, NULL),
(248, '1234-variant-238', 'simple', NULL, NULL, NULL, NULL, NULL, '238', 'Variant 238', '1234-variant-238', '1234-variant-238', '1234-variant-238', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 248, '2025-03-04 09:55:33', NULL, NULL),
(249, '1234-variant-239', 'simple', NULL, NULL, NULL, NULL, NULL, '239', 'Variant 239', '1234-variant-239', '1234-variant-239', '1234-variant-239', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 249, '2025-03-04 09:55:33', NULL, NULL),
(250, '1234-variant-240', 'simple', NULL, NULL, NULL, NULL, NULL, '240', 'Variant 240', '1234-variant-240', '1234-variant-240', '1234-variant-240', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 250, '2025-03-04 09:55:33', NULL, NULL),
(251, '1234-variant-241', 'simple', NULL, NULL, NULL, NULL, NULL, '241', 'Variant 241', '1234-variant-241', '1234-variant-241', '1234-variant-241', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 251, '2025-03-04 09:55:33', NULL, NULL),
(252, '1234-variant-242', 'simple', NULL, NULL, NULL, NULL, NULL, '242', 'Variant 242', '1234-variant-242', '1234-variant-242', '1234-variant-242', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 252, '2025-03-04 09:55:33', NULL, NULL),
(253, '1234-variant-243', 'simple', NULL, NULL, NULL, NULL, NULL, '243', 'Variant 243', '1234-variant-243', '1234-variant-243', '1234-variant-243', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 253, '2025-03-04 09:55:33', NULL, NULL),
(254, '1234-variant-244', 'simple', NULL, NULL, NULL, NULL, NULL, '244', 'Variant 244', '1234-variant-244', '1234-variant-244', '1234-variant-244', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 254, '2025-03-04 09:55:33', NULL, NULL),
(255, '1234-variant-245', 'simple', NULL, NULL, NULL, NULL, NULL, '245', 'Variant 245', '1234-variant-245', '1234-variant-245', '1234-variant-245', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 255, '2025-03-04 09:55:33', NULL, NULL),
(256, '1234-variant-246', 'simple', NULL, NULL, NULL, NULL, NULL, '246', 'Variant 246', '1234-variant-246', '1234-variant-246', '1234-variant-246', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 256, '2025-03-04 09:55:33', NULL, NULL),
(257, '1234-variant-247', 'simple', NULL, NULL, NULL, NULL, NULL, '247', 'Variant 247', '1234-variant-247', '1234-variant-247', '1234-variant-247', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 257, '2025-03-04 09:55:33', NULL, NULL),
(258, '1234-variant-248', 'simple', NULL, NULL, NULL, NULL, NULL, '248', 'Variant 248', '1234-variant-248', '1234-variant-248', '1234-variant-248', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 258, '2025-03-04 09:55:33', NULL, NULL),
(259, '1234-variant-249', 'simple', NULL, NULL, NULL, NULL, NULL, '249', 'Variant 249', '1234-variant-249', '1234-variant-249', '1234-variant-249', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 259, '2025-03-04 09:55:33', NULL, NULL),
(260, '1234-variant-250', 'simple', NULL, NULL, NULL, NULL, NULL, '250', 'Variant 250', '1234-variant-250', '1234-variant-250', '1234-variant-250', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 260, '2025-03-04 09:55:33', NULL, NULL),
(261, '1234-variant-251', 'simple', NULL, NULL, NULL, NULL, NULL, '251', 'Variant 251', '1234-variant-251', '1234-variant-251', '1234-variant-251', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 261, '2025-03-04 09:55:33', NULL, NULL),
(262, '1234-variant-252', 'simple', NULL, NULL, NULL, NULL, NULL, '252', 'Variant 252', '1234-variant-252', '1234-variant-252', '1234-variant-252', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 262, '2025-03-04 09:55:33', NULL, NULL),
(263, '1234-variant-253', 'simple', NULL, NULL, NULL, NULL, NULL, '253', 'Variant 253', '1234-variant-253', '1234-variant-253', '1234-variant-253', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 263, '2025-03-04 09:55:33', NULL, NULL),
(264, '1234-variant-254', 'simple', NULL, NULL, NULL, NULL, NULL, '254', 'Variant 254', '1234-variant-254', '1234-variant-254', '1234-variant-254', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 264, '2025-03-04 09:55:33', NULL, NULL),
(265, '1234-variant-255', 'simple', NULL, NULL, NULL, NULL, NULL, '255', 'Variant 255', '1234-variant-255', '1234-variant-255', '1234-variant-255', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, '2025-03-04 09:55:33', 'en', 'default', 1, 265, '2025-03-04 09:55:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_grouped_products`
--

CREATE TABLE `product_grouped_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `associated_product_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_grouped_products`
--

INSERT INTO `product_grouped_products` (`id`, `product_id`, `associated_product_id`, `qty`, `sort_order`) VALUES
(1, 5, 1, 5, 1),
(2, 5, 3, 5, 2),
(3, 5, 4, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `type`, `path`, `product_id`, `position`) VALUES
(1, 'image', 'product/1/FLSJ7jjIMhoACdcODouC5D5IoDMQdm2f6kbAF6kv.webp', 1, 1),
(2, 'image', 'product/2/XS8pRG72lO28Ywmvt9UuPdU6MPmPS9qq2z0qy7oe.webp', 2, 1),
(3, 'image', 'product/3/HVQejlMHwVJnljq0kxXVS7YLIcVmYMpmfjc2gETH.webp', 3, 1),
(4, 'image', 'product/4/dAD4ov9Ou5uHDAPorW1ukwiDRo0wREsrJ4kOkbpY.webp', 4, 1),
(5, 'image', 'product/5/oQGkZnSDg2irAeTBSiTWa4o0MBZ2t06kUdB6NH8O.webp', 5, 1),
(6, 'image', 'product/6/VqLG3EGbgV6iS3T1ic9bRdQFUgeAg6A0VbovDN4s.webp', 6, 1),
(7, 'image', 'product/7/cLwXqhhNhGvAZ2mFoqSflkM67DPb5wYStHUjbczW.webp', 7, 1),
(8, 'image', 'product/7/y0nHbYA9d7CTH6CZRAf9lN6pfT2tCO107unWqV3w.webp', 7, 2),
(9, 'image', 'product/7/8BWFfw8JnlOtRgtx6kutqraGuWTiAEhjuTOIP5V5.webp', 7, 3),
(10, 'image', 'product/8/xsX8JstGaW9qhjIk1p7WOhIeqIqKzdmPF8NegJlT.webp', 8, 1),
(11, 'image', 'product/8/UFL7KhDB9lbsMgMayGnzQsEp4am30mAR2ADlX9eH.webp', 8, 2),
(12, 'image', 'product/9/MCcLzxdGLS9wpv3g39mNv915x05b7gMCmKr13jUX.webp', 9, 1),
(13, 'image', 'product/9/ZTk3IfgtVqvlevmpWu6iAuqWVmXirueiT8YzGrCQ.webp', 9, 2),
(14, 'image', 'product/10/tmTkmL3yXdarbXq16jLt4bL3RefUy3UyfrYRd19r.webp', 10, 1),
(15, 'image', 'product/10/bk3Ye2uYbWkCFcSN79f57oxKZJf8Wo6oc0mcb7sw.webp', 10, 2),
(16, 'image', 'product/11/zDMR7rRNscrsQrWa4hMNvNEP4GQwxmaojIzXS5dT.webp', 11, 1),
(17, 'image', 'product/11/yqNTOxwdMGH4ggTSos2jriZ85rJgZITUp78NU7JQ.webp', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `vendor_id`, `inventory_source_id`) VALUES
(1, 100, 1, 0, 1),
(2, 100, 2, 0, 1),
(3, 98, 3, 0, 1),
(4, 100, 4, 0, 1),
(5, 100, 8, 0, 1),
(6, 100, 9, 0, 1),
(7, 100, 10, 0, 1),
(8, 100, 11, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory_indices`
--

CREATE TABLE `product_inventory_indices` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_inventory_indices`
--

INSERT INTO `product_inventory_indices` (`id`, `qty`, `product_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 100, 1, 1, '2025-02-13 07:16:13', '2025-02-14 05:06:58'),
(2, 100, 2, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(3, 98, 3, 1, '2025-02-13 07:16:13', '2025-02-14 05:02:02'),
(4, 100, 4, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(5, 100, 8, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(6, 100, 9, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(7, 100, 10, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(8, 100, 11, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(9, 0, 7, 1, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(10, 0, 6, 1, NULL, NULL),
(11, 0, 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_ordered_inventories`
--

CREATE TABLE `product_ordered_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_ordered_inventories`
--

INSERT INTO `product_ordered_inventories` (`id`, `qty`, `product_id`, `channel_id`) VALUES
(1, 0, 1, 1),
(2, 0, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_price_indices`
--

CREATE TABLE `product_price_indices` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `min_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `regular_min_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `max_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `regular_max_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_price_indices`
--

INSERT INTO `product_price_indices` (`id`, `product_id`, `customer_group_id`, `channel_id`, `min_price`, `regular_min_price`, `max_price`, `regular_max_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 14.0000, 14.0000, 14.0000, 14.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(2, 1, 2, 1, 14.0000, 14.0000, 14.0000, 14.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(3, 1, 3, 1, 14.0000, 14.0000, 14.0000, 14.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(4, 2, 1, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(5, 2, 2, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(6, 2, 3, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(7, 3, 1, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(8, 3, 2, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(9, 3, 3, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(10, 4, 1, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(11, 4, 2, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(12, 4, 3, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(13, 5, 1, 1, 14.0000, 14.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(14, 5, 2, 1, 14.0000, 14.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(15, 5, 3, 1, 14.0000, 14.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(16, 6, 1, 1, 111.0000, 111.0000, 111.0000, 111.0000, '2025-02-13 07:16:13', '2025-03-04 16:41:50'),
(17, 6, 2, 1, 111.0000, 111.0000, 111.0000, 111.0000, '2025-02-13 07:16:13', '2025-03-04 16:41:50'),
(18, 6, 3, 1, 111.0000, 111.0000, 111.0000, 111.0000, '2025-02-13 07:16:13', '2025-03-04 16:41:50'),
(19, 8, 1, 1, 14.0000, 14.0000, 14.0000, 14.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(20, 8, 2, 1, 14.0000, 14.0000, 14.0000, 14.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(21, 8, 3, 1, 14.0000, 14.0000, 14.0000, 14.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(22, 9, 1, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(23, 9, 2, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(24, 9, 3, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(25, 10, 1, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(26, 10, 2, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(27, 10, 3, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(28, 11, 1, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(29, 11, 2, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(30, 11, 3, 1, 21.0000, 21.0000, 21.0000, 21.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(31, 7, 1, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(32, 7, 2, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13'),
(33, 7, 3, 1, 17.0000, 17.0000, 17.0000, 17.0000, '2025-02-13 07:16:13', '2025-02-13 07:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_relations`
--

CREATE TABLE `product_relations` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_relations`
--

INSERT INTO `product_relations` (`parent_id`, `child_id`) VALUES
(1, 4),
(2, 1),
(3, 1),
(3, 2),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `title` varchar(191) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `status` varchar(191) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_review_attachments`
--

CREATE TABLE `product_review_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT 'image',
  `mime_type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_super_attributes`
--

CREATE TABLE `product_super_attributes` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_super_attributes`
--

INSERT INTO `product_super_attributes` (`product_id`, `attribute_id`) VALUES
(7, 23),
(7, 24),
(13, 33);

-- --------------------------------------------------------

--
-- Table structure for table `product_up_sells`
--

CREATE TABLE `product_up_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_up_sells`
--

INSERT INTO `product_up_sells` (`parent_id`, `child_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(2, 3),
(2, 4),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_videos`
--

CREATE TABLE `product_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `path` varchar(191) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) DEFAULT NULL,
  `channel_currency_code` varchar(191) DEFAULT NULL,
  `order_currency_code` varchar(191) DEFAULT NULL,
  `adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_tax_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_sub_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_shipping_amount_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `refunds`
--

INSERT INTO `refunds` (`id`, `increment_id`, `state`, `email_sent`, `total_qty`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `adjustment_refund`, `base_adjustment_refund`, `adjustment_fee`, `base_adjustment_fee`, `sub_total`, `base_sub_total`, `grand_total`, `base_grand_total`, `shipping_amount`, `base_shipping_amount`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `sub_total_incl_tax`, `base_sub_total_incl_tax`, `shipping_amount_incl_tax`, `base_shipping_amount_incl_tax`, `order_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'refunded', 1, 1, 'USD', 'USD', 'USD', 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 0.0000, 0.0000, 1, '2025-02-14 05:06:10', '2025-02-14 05:06:14');

-- --------------------------------------------------------

--
-- Table structure for table `refund_items`
--

CREATE TABLE `refund_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `refund_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `refund_items`
--

INSERT INTO `refund_items` (`id`, `parent_id`, `name`, `description`, `sku`, `qty`, `price`, `base_price`, `total`, `base_total`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `price_incl_tax`, `base_price_incl_tax`, `total_incl_tax`, `base_total_incl_tax`, `product_id`, `product_type`, `order_item_id`, `refund_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Arctic Cozy Knit Unisex Beanie', NULL, 'SP-001', 1, 14.0000, 14.0000, 14.0000, 14.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 14.0000, 14.0000, 14.0000, 14.0000, 1, 'Webkul\\Product\\Models\\Product', 1, 1, '{\"quantity\":1,\"product_id\":1,\"locale\":\"en\"}', '2025-02-14 05:06:10', '2025-02-14 05:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `permission_type` varchar(191) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'This role users will have all the access', 'all', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search_synonyms`
--

CREATE TABLE `search_synonyms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `terms` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `search_terms`
--

CREATE TABLE `search_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `term` varchar(191) NOT NULL,
  `results` int(11) NOT NULL DEFAULT 0,
  `uses` int(11) NOT NULL DEFAULT 0,
  `redirect_url` varchar(191) DEFAULT NULL,
  `display_in_suggested_terms` tinyint(1) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `carrier_code` varchar(191) DEFAULT NULL,
  `carrier_title` varchar(191) DEFAULT NULL,
  `track_number` text DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_address_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shipments`
--

INSERT INTO `shipments` (`id`, `status`, `total_qty`, `total_weight`, `carrier_code`, `carrier_title`, `track_number`, `email_sent`, `customer_id`, `customer_type`, `order_id`, `order_address_id`, `inventory_source_id`, `inventory_source_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, NULL, '', '', 1, 1, 'Webkul\\Customer\\Models\\Customer', 1, 4, 1, 'Default', '2025-02-14 05:04:52', '2025-03-04 16:41:56'),
(2, NULL, 2, 2, NULL, '', '', 1, 1, 'Webkul\\Customer\\Models\\Customer', 3, 12, 1, 'Default', '2025-03-04 16:41:50', '2025-03-04 16:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `shipment_items`
--

CREATE TABLE `shipment_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT 0.0000,
  `base_price` decimal(12,4) DEFAULT 0.0000,
  `total` decimal(12,4) DEFAULT 0.0000,
  `base_total` decimal(12,4) DEFAULT 0.0000,
  `price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price_incl_tax` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shipment_items`
--

INSERT INTO `shipment_items` (`id`, `name`, `description`, `sku`, `qty`, `weight`, `price`, `base_price`, `total`, `base_total`, `price_incl_tax`, `base_price_incl_tax`, `product_id`, `product_type`, `order_item_id`, `shipment_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'Arctic Cozy Knit Unisex Beanie', NULL, 'SP-001', 1, 1, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 14.0000, 1, 'Webkul\\Product\\Models\\Product', 1, 1, '{\"quantity\":1,\"product_id\":1,\"locale\":\"en\"}', '2025-02-14 05:04:52', '2025-02-14 05:04:52'),
(2, 'Arctic Touchscreen Winter Gloves', NULL, 'SP-003', 2, 2, 17.0000, 17.0000, 34.0000, 34.0000, 17.0000, 17.0000, 3, 'Webkul\\Product\\Models\\Product', 3, 2, '{\"product_id\":\"3\",\"quantity\":2,\"locale\":\"en\"}', '2025-03-04 16:41:50', '2025-03-04 16:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `path` varchar(191) NOT NULL,
  `generated_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers_list`
--

CREATE TABLE `subscribers_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscribers_list`
--

INSERT INTO `subscribers_list` (`id`, `email`, `is_subscribed`, `token`, `customer_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'abhishekthapa115@gmail.com', 1, '67aec71fae90c', 1, 1, '2025-02-14 04:31:27', '2025-02-14 04:31:27');

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories`
--

CREATE TABLE `tax_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_categories_tax_rates`
--

CREATE TABLE `tax_categories_tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `is_zip` tinyint(1) NOT NULL DEFAULT 0,
  `zip_code` varchar(191) DEFAULT NULL,
  `zip_from` varchar(191) DEFAULT NULL,
  `zip_to` varchar(191) DEFAULT NULL,
  `state` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `tax_rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `identifier`, `is_zip`, `zip_code`, `zip_from`, `zip_to`, `state`, `country`, `tax_rate`, `created_at`, `updated_at`) VALUES
(1, '12', 0, '', NULL, NULL, '12', 'AF', 12.0000, '2025-03-04 17:13:19', '2025-03-04 17:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `theme_customizations`
--

CREATE TABLE `theme_customizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_code` varchar(191) DEFAULT 'default',
  `type` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `theme_customizations`
--

INSERT INTO `theme_customizations` (`id`, `theme_code`, `type`, `name`, `sort_order`, `status`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'default', 'image_carousel', 'Image Carousel', 1, 1, 1, '2025-02-13 07:01:04', '2025-02-14 05:30:49'),
(2, 'default', 'static_content', 'Offer Information', 2, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(3, 'default', 'category_carousel', 'Categories Collections', 3, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(4, 'default', 'product_carousel', 'New Products', 4, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(5, 'default', 'static_content', 'Top Collections', 5, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(6, 'default', 'static_content', 'Bold Collections', 6, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(7, 'default', 'product_carousel', 'Featured Collections', 7, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(8, 'default', 'static_content', 'Game Container', 8, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(9, 'default', 'product_carousel', 'All Products', 9, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(10, 'default', 'static_content', 'Bold Collections', 10, 1, 1, '2025-02-13 07:01:04', '2025-02-14 04:10:50'),
(11, 'default', 'footer_links', 'Footer Links', 11, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04'),
(12, 'default', 'services_content', 'Services Content', 12, 1, 1, '2025-02-13 07:01:04', '2025-02-13 07:01:04');

-- --------------------------------------------------------

--
-- Table structure for table `theme_customization_translations`
--

CREATE TABLE `theme_customization_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_customization_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `theme_customization_translations`
--

INSERT INTO `theme_customization_translations` (`id`, `theme_customization_id`, `locale`, `options`) VALUES
(1, 1, 'en', '{\"images\":[{\"title\":\"Get Ready For New Collection\",\"link\":\"\",\"image\":\"storage\\/theme\\/1\\/TN9B51vQGyERTGUFlCxqslMzOjeY2C6jmCgypNCD.webp\"},{\"title\":\"Get Ready For New Collection\",\"link\":\"\",\"image\":\"storage\\/theme\\/1\\/bUi0OQDuWTB4seElXrcwwA69vsl551qcLcTSpf1t.webp\"},{\"title\":\"Get Ready For New Collection\",\"link\":\"\",\"image\":\"storage\\/theme\\/1\\/Qz6Pqxyh1UK4ENXNS3XEu3xt5m9A4BVni5NMESLx.webp\"},{\"title\":\"Get Ready For New Collection\",\"link\":\"\",\"image\":\"storage\\/theme\\/1\\/zB6X7R1sDtuqUHRFnLdX36B4OLHTOeKOIajft9K2.webp\"},{\"image\":\"storage\\/theme\\/1\\/JLVosemtDXyQcJmeZRKml2M3or9rYFYhh8QuPMWF.webp\",\"link\":\"\",\"title\":\"Shop for now\"}]}'),
(2, 2, 'en', '{\"html\":\"<div class=\\\"home-offer\\\"><h1>Get UPTO 40% OFF on your 1st order SHOP NOW<\\/h1><\\/div>\",\"css\":\".home-offer h1 {display: block;font-weight: 500;text-align: center;font-size: 22px;font-family: DM Serif Display;background-color: #E8EDFE;padding-top: 20px;padding-bottom: 20px;}@media (max-width:768px){.home-offer h1 {font-size:18px;padding-top: 10px;padding-bottom: 10px;}@media (max-width:525px) {.home-offer h1 {font-size:14px;padding-top: 6px;padding-bottom: 6px;}}\"}'),
(3, 3, 'en', '{\"filters\":{\"parent_id\":1,\"sort\":\"asc\",\"limit\":10}}'),
(4, 4, 'en', '{\"title\":\"New Products\",\"filters\":{\"new\":1,\"sort\":\"name-asc\",\"limit\":12}}'),
(5, 5, 'en', '{\"html\":\"<div class=\\\"top-collection-container\\\"><div class=\\\"top-collection-header\\\"><h2>The game with our new additions!<\\/h2><\\/div><div class=\\\"top-collection-grid container\\\"><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/zGEVVMsl2VppTbwrSdfnXLvVdk5B4douaVMONvJs.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/uDxyDUERzwOOD2LCTQSg7Vcn4rFCCt2OlAiSK6zI.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/o8x1kHwQXTGPl7A52kdI9rr15m5OSzZ9wTMlBuuB.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/VUecKN0VNJ1Ep1S5ueRLryuv8QJ1Vv6ceG9JSe3q.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/F41h41P1Gbzk0BqQJHrm0bPeS7betUJHlPfm2tZm.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections<\\/h3><\\/div><div class=\\\"top-collection-card\\\"><img src=\\\"\\\" data-src=\\\"storage\\/theme\\/5\\/6SMnSxnFM1J2irAjpI9aJXQWdLlc2I8gRftu7bNT.webp\\\" class=\\\"lazy\\\" width=\\\"396\\\" height=\\\"396\\\" alt=\\\"The game with our new additions!\\\"><h3>Our Collections<\\/h3><\\/div><\\/div><\\/div>\",\"css\":\".top-collection-container {overflow: hidden;}.top-collection-header {padding-left: 15px;padding-right: 15px;text-align: center;font-size: 70px;line-height: 90px;color: #060C3B;margin-top: 80px;}.top-collection-header h2 {max-width: 595px;margin-left: auto;margin-right: auto;font-family: DM Serif Display;}.top-collection-grid {display: flex;flex-wrap: wrap;gap: 32px;justify-content: center;margin-top: 60px;width: 100%;margin-right: auto;margin-left: auto;padding-right: 90px;padding-left: 90px;}.top-collection-card {position: relative;background: #f9fafb;overflow:hidden;border-radius:20px;}.top-collection-card img {border-radius: 16px;max-width: 100%;text-indent:-9999px;transition: transform 300ms ease;transform: scale(1);}.top-collection-card:hover img {transform: scale(1.05);transition: all 300ms ease;}.top-collection-card h3 {color: #060C3B;font-size: 30px;font-family: DM Serif Display;transform: translateX(-50%);width: max-content;left: 50%;bottom: 30px;position: absolute;margin: 0;font-weight: inherit;}@media not all and (min-width: 525px) {.top-collection-header {margin-top: 28px;font-size: 20px;line-height: 1.5;}.top-collection-grid {gap: 10px}}@media not all and (min-width: 768px) {.top-collection-header {margin-top: 30px;font-size: 28px;line-height: 3;}.top-collection-header h2 {line-height:2; margin-bottom:20px;} .top-collection-grid {gap: 14px}} @media not all and (min-width: 1024px) {.top-collection-grid {padding-left: 30px;padding-right: 30px;}}@media (max-width: 768px) {.top-collection-grid { row-gap:15px; column-gap:0px;justify-content: space-between;margin-top: 0px;} .top-collection-card{width:48%} .top-collection-card img {width:100%;} .top-collection-card h3 {font-size:24px; bottom: 16px;}}@media (max-width:520px) { .top-collection-grid{padding-left: 15px;padding-right: 15px;} .top-collection-card h3 {font-size:18px; bottom: 10px;}}\"}'),
(6, 6, 'en', '{\"html\":\"<div class=\\\"section-gap bold-collections container\\\"> <div class=\\\"inline-col-wrapper\\\"> <div class=\\\"inline-col-image-wrapper\\\"> <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/6\\/AH4WK0JpnUQpOFLvudnJtPZAo9mmven57aW2lcTM.webp\\\" class=\\\"lazy\\\" width=\\\"632\\\" height=\\\"510\\\" alt=\\\"Get Ready for our new Bold Collections!\\\"> <\\/div> <div class=\\\"inline-col-content-wrapper\\\"> <h2 class=\\\"inline-col-title\\\"> Get Ready for our new Bold Collections! <\\/h2> <p class=\\\"inline-col-description\\\">Introducing Our New Bold Collections! Elevate your style with daring designs and vibrant statements. Explore striking patterns and bold colors that redefine your wardrobe. Get ready to embrace the extraordinary!<\\/p> <button class=\\\"primary-button max-md:rounded-lg max-md:px-4 max-md:py-2.5 max-md:text-sm\\\">View Collections<\\/button> <\\/div> <\\/div> <\\/div>\",\"css\":\".section-gap{margin-top:80px}.direction-ltr{direction:ltr}.direction-rtl{direction:rtl}.inline-col-wrapper{display:grid;grid-template-columns:auto 1fr;grid-gap:60px;align-items:center}.inline-col-wrapper .inline-col-image-wrapper{overflow:hidden}.inline-col-wrapper .inline-col-image-wrapper img{max-width:100%;height:auto;border-radius:16px;text-indent:-9999px}.inline-col-wrapper .inline-col-content-wrapper{display:flex;flex-wrap:wrap;gap:20px;max-width:464px}.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{max-width:442px;font-size:60px;font-weight:400;color:#060c3b;line-height:70px;font-family:DM Serif Display;margin:0}.inline-col-wrapper .inline-col-content-wrapper .inline-col-description{margin:0;font-size:18px;color:#6e6e6e;font-family:Poppins}@media (max-width:991px){.inline-col-wrapper{grid-template-columns:1fr;grid-gap:16px}.inline-col-wrapper .inline-col-content-wrapper{gap:10px}} @media (max-width:768px){.inline-col-wrapper .inline-col-image-wrapper img {width:100%;} .inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:28px !important;line-height:normal !important}} @media (max-width:525px){.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:20px !important;} .inline-col-description{font-size:16px} .inline-col-wrapper{grid-gap:10px}}\"}'),
(7, 7, 'en', '{\"title\":\"Featured Products\",\"filters\":{\"featured\":1,\"sort\":\"name-desc\",\"limit\":12}}'),
(8, 8, 'en', '{\"html\":\"<div class=\\\"section-game\\\"><div class=\\\"section-title\\\"> <h2>The game with our new additions!<\\/h2> <\\/div> <div class=\\\"section-gap container\\\"> <div class=\\\"collection-card-wrapper\\\"> <div class=\\\"single-collection-card\\\"> <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/8\\/h8ZMVDTz6iF4I7Wt6bMWrK8UwPR7qrACZ9CFwUY9.webp\\\" class=\\\"lazy\\\" width=\\\"615\\\" height=\\\"600\\\" alt=\\\"The game with our new additions!\\\"> <h3 class=\\\"overlay-text\\\">Our Collections<\\/h3> <\\/div> <div class=\\\"single-collection-card\\\"> <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/8\\/HSJkXALSFndIdHND9MWRhNDTbWVd3A5FkTSnwGWG.webp\\\" class=\\\"lazy\\\" width=\\\"615\\\" height=\\\"600\\\" alt=\\\"The game with our new additions!\\\"> <h3 class=\\\"overlay-text\\\"> Our Collections <\\/h3> <\\/div> <\\/div> <\\/div> <\\/div>\",\"css\":\".section-game {overflow: hidden;}.section-title,.section-title h2{font-weight:400;font-family:DM Serif Display}.section-title{margin-top:80px;padding-left:15px;padding-right:15px;text-align:center;line-height:90px}.section-title h2{font-size:70px;color:#060c3b;max-width:595px;margin:auto}.collection-card-wrapper{display:flex;flex-wrap:wrap;justify-content:center;gap:30px}.collection-card-wrapper .single-collection-card{position:relative}.collection-card-wrapper .single-collection-card img{border-radius:16px;background-color:#f5f5f5;max-width:100%;height:auto;text-indent:-9999px}.collection-card-wrapper .single-collection-card .overlay-text{font-size:50px;font-weight:400;max-width:234px;font-style:italic;color:#060c3b;font-family:DM Serif Display;position:absolute;bottom:30px;left:30px;margin:0}@media (max-width:1024px){.section-title{padding:0 30px}}@media (max-width:991px){.collection-card-wrapper{flex-wrap:wrap}}@media (max-width:768px) {.collection-card-wrapper .single-collection-card .overlay-text{font-size:32px; bottom:20px}.section-title{margin-top:32px}.section-title h2{font-size:28px;line-height:normal}} @media (max-width:525px){.collection-card-wrapper .single-collection-card .overlay-text{font-size:18px; bottom:10px} .section-title{margin-top:28px}.section-title h2{font-size:20px;} .collection-card-wrapper{gap:10px; 15px; row-gap:15px; column-gap:0px;justify-content: space-between;margin-top: 15px;} .collection-card-wrapper .single-collection-card {width:48%;}}\"}'),
(9, 9, 'en', '{\"title\":\"All Products\",\"filters\":{\"sort\":\"name-desc\",\"limit\":12}}'),
(10, 10, 'en', '{\"html\":\"<div class=\\\"section-gap bold-collections container\\\">\\r\\n    <div class=\\\"inline-col-wrapper direction-rtl\\\">\\r\\n        <div class=\\\"inline-col-image-wrapper\\\">\\r\\n            <img src=\\\"\\\" data-src=\\\"storage\\/theme\\/10\\/KyAoVzcNicTG9h6jXy3pKnsSbTUyO5P1CBZRWmOQ.webp\\\" class=\\\"lazy\\\" width=\\\"632\\\" height=\\\"510\\\" alt=\\\"Get Ready for our new Bold Collections!\\\">\\r\\n        <\\/div>\\r\\n        <div class=\\\"inline-col-content-wrapper direction-ltr\\\">\\r\\n             <h2 class=\\\"inline-col-title\\\"> Get Ready for our new Bold Collections! <\\/h2> \\r\\n            <p class=\\\"inline-col-description\\\">Introducing Our New Bold Collections! Elevate your style with daring designs and vibrant statements. Explore striking patterns and bold colors that redefine your wardrobe. Get ready to embrace the extraordinary!<\\/p>\\r\\n            <button class=\\\"primary-button max-md:rounded-lg max-md:px-4 max-md:py-2.5 max-md:text-sm\\\">View Collections<\\/button>\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n<\\/div>\",\"css\":\".section-gap{margin-top:80px}.direction-ltr{direction:ltr}.direction-rtl{direction:rtl}.inline-col-wrapper{display:grid;grid-template-columns:auto 1fr;grid-gap:60px;align-items:center}.inline-col-wrapper .inline-col-image-wrapper{overflow:hidden}.inline-col-wrapper .inline-col-image-wrapper img{max-width:100%;height:auto;border-radius:16px;text-indent:-9999px}.inline-col-wrapper .inline-col-content-wrapper{display:flex;flex-wrap:wrap;gap:20px;max-width:464px}.inline-col-wrapper .inline-col-content-wrapper .inline-col-title{max-width:442px;font-size:60px;font-weight:400;color:#060c3b;line-height:70px;font-family:DM Serif Display;margin:0}.inline-col-wrapper .inline-col-content-wrapper .inline-col-description{margin:0;font-size:18px;color:#6e6e6e;font-family:Poppins}@media (max-width:991px){.inline-col-wrapper{grid-template-columns:1fr;grid-gap:16px}.inline-col-wrapper .inline-col-content-wrapper{gap:10px}}@media (max-width:768px) {.inline-col-wrapper .inline-col-image-wrapper img {max-width:100%;}.inline-col-wrapper .inline-col-content-wrapper{max-width:100%;justify-content:center; text-align:center} .section-gap{padding:0 30px; gap:20px;margin-top:24px} .bold-collections{margin-top:32px;}} @media (max-width:525px){.inline-col-wrapper .inline-col-content-wrapper{gap:10px} .inline-col-wrapper .inline-col-content-wrapper .inline-col-title{font-size:20px;line-height:normal} .section-gap{padding:0 15px; gap:15px;margin-top:10px} .bold-collections{margin-top:28px;}  .inline-col-description{font-size:16px !important} .inline-col-wrapper{grid-gap:15px}\"}'),
(11, 11, 'en', '{\"column_1\":[{\"url\":\"http:\\/\\/localhost\\/page\\/about-us\",\"title\":\"About Us\",\"sort_order\":1},{\"url\":\"http:\\/\\/localhost\\/contact-us\",\"title\":\"Contact Us\",\"sort_order\":2},{\"url\":\"http:\\/\\/localhost\\/page\\/customer-service\",\"title\":\"Customer Service\",\"sort_order\":3},{\"url\":\"http:\\/\\/localhost\\/page\\/whats-new\",\"title\":\"What\'s New\",\"sort_order\":4},{\"url\":\"http:\\/\\/localhost\\/page\\/terms-of-use\",\"title\":\"Terms of Use\",\"sort_order\":5},{\"url\":\"http:\\/\\/localhost\\/page\\/terms-conditions\",\"title\":\"Terms & Conditions\",\"sort_order\":6}],\"column_2\":[{\"url\":\"http:\\/\\/localhost\\/page\\/privacy-policy\",\"title\":\"Privacy Policy\",\"sort_order\":1},{\"url\":\"http:\\/\\/localhost\\/page\\/payment-policy\",\"title\":\"Payment Policy\",\"sort_order\":2},{\"url\":\"http:\\/\\/localhost\\/page\\/shipping-policy\",\"title\":\"Shipping Policy\",\"sort_order\":3},{\"url\":\"http:\\/\\/localhost\\/page\\/refund-policy\",\"title\":\"Refund Policy\",\"sort_order\":4},{\"url\":\"http:\\/\\/localhost\\/page\\/return-policy\",\"title\":\"Return Policy\",\"sort_order\":5}]}'),
(12, 12, 'en', '{\"services\":[{\"title\":\"Free Shipping\",\"description\":\"Enjoy free shipping on all orders\",\"service_icon\":\"icon-truck\"},{\"title\":\"Product Replace\",\"description\":\"Easy Product Replacement Available!\",\"service_icon\":\"icon-product\"},{\"title\":\"Emi Available\",\"description\":\"No cost EMI available on all major credit cards\",\"service_icon\":\"icon-dollar-sign\"},{\"title\":\"24\\/7 Support\",\"description\":\"Dedicated 24\\/7 support via chat and email\",\"service_icon\":\"icon-support\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `url_rewrites`
--

CREATE TABLE `url_rewrites` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `request_path` varchar(191) NOT NULL,
  `target_path` varchar(191) NOT NULL,
  `redirect_type` varchar(191) DEFAULT NULL,
  `locale` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(191) DEFAULT NULL,
  `request` mediumtext DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `referer` mediumtext DEFAULT NULL,
  `languages` text DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `device` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `browser` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `visitable_type` varchar(191) DEFAULT NULL,
  `visitable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor_type` varchar(191) DEFAULT NULL,
  `visitor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(1, 'GET', '[]', 'http://127.0.0.1:8001', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8001\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"cross-site\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; planit_ai_session=eyJpdiI6Ijg3UlRQVGVoR2pPRmpqK1VHcDZSWnc9PSIsInZhbHVlIjoiQ1QvcmtxN0U5aDZoblFVNFRIbGNrNVE2K3kvbWFTNlFlbnkyZWJlNWR5R1dDeHFhNGNDSzd1SlVRY1BDS2NBQ3Y0TGZ1SXlGL1lBUzVNTWd6aFY1TXIzNkMxUnM3RldJT1FXRGZ3VjFGK0FTRDdTSDUvM050R1lEZ3czelM3SDEiLCJtYWMiOiIyNzFmYTVlMjIzYTc4YjQxMzgzMjI4NTA5YTJjMWUyOTg3NWYwMzk5Y2JmZTVmYTY1MDZjZjA2ZjczMjFjOGYyIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1739276910.10.0.1739276910.0.0.0; company_name_session=eyJpdiI6Ik11QndXNDB3UUpCdDVRY2JxSUZ1UWc9PSIsInZhbHVlIjoiMytmaUVKM001NHhxeVNNNE1BVzZvNUhTQUhYWXFBdFNmSVpDVzdNZ05zV3JGM2sxWWNXZHQ3eGI5V3VTeW94d2tEdWJ3UTE0UGF6dFR3YzdVcUpDOU1LK1hSQ2J5TWhuZU16aGlnZHljOTVXSmh5MmRxVkVSNzNnaFlQOFZhbHoiLCJtYWMiOiIyZGVmNzgwYmIzMzU0Njk0YmZmNjQxN2NjZGY0ZWM2OTliZjFjYzM1ODAwZWVjNzNhMzc0MjY0MGZkZWE0NzExIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6Inppd0ZXM2JpYldPWE53U1ZHaEQ2UlE9PSIsInZhbHVlIjoieVR1T3M1TWwrNUdkZ0VVcVNsc3RCU1hqakhLRld4aWZCNXRybVk0b2FnVkFQYXZRQm4vUlE1OC9saTJnNjA2Q0pmQ2MyMXNCWVVzNzJsTm9zcG1UQyt2VFQ2Nms2TjFXaTZYQXRGZ052REQxTGozbWZQRTRPc0xQdlhNNzRxc0giLCJtYWMiOiIxZDE3NmNhZWFjMDQ5ZWNiOWY1MzVmOWMzNmViYmNkMjlmYWJiYWYzYmI2ZTEwNzI2MmUyZjcwYzc2N2Y3MGY0IiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6InJLNG94MHM4WTlPRGFudVg4YlJSL0E9PSIsInZhbHVlIjoiK2M2QlRRbzVJazBVVVpYUEg2OEMxeUJyTlRoQWFjWlJMU1A5WVpLV1o1dE9NYmRQeFFlblAvLytrN0dKQjlJeTM4MzNiWWY3L3FCUjkzS01GWm05dTVGeHQxM2p2MFNrVm9RTnAzNCtyRVVZeFVIbU1kblUxTUJ5VTA0WkZYMXgiLCJtYWMiOiIwMzg2NjU3ZjliYjkyM2Q0ZThjYTc0MGY0ODFmN2IxMDI2YTk2OGY2Zjg1ZjFkNWJjODgwZmU3ZWEwNjdmMjQwIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-02-13 07:16:52', '2025-02-13 07:16:52'),
(2, 'GET', '[]', 'http://127.0.0.1:8001/men', 'http://127.0.0.1:8001/', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8001\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8001\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; planit_ai_session=eyJpdiI6Ijg3UlRQVGVoR2pPRmpqK1VHcDZSWnc9PSIsInZhbHVlIjoiQ1QvcmtxN0U5aDZoblFVNFRIbGNrNVE2K3kvbWFTNlFlbnkyZWJlNWR5R1dDeHFhNGNDSzd1SlVRY1BDS2NBQ3Y0TGZ1SXlGL1lBUzVNTWd6aFY1TXIzNkMxUnM3RldJT1FXRGZ3VjFGK0FTRDdTSDUvM050R1lEZ3czelM3SDEiLCJtYWMiOiIyNzFmYTVlMjIzYTc4YjQxMzgzMjI4NTA5YTJjMWUyOTg3NWYwMzk5Y2JmZTVmYTY1MDZjZjA2ZjczMjFjOGYyIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1739276910.10.0.1739276910.0.0.0; company_name_session=eyJpdiI6Ik11QndXNDB3UUpCdDVRY2JxSUZ1UWc9PSIsInZhbHVlIjoiMytmaUVKM001NHhxeVNNNE1BVzZvNUhTQUhYWXFBdFNmSVpDVzdNZ05zV3JGM2sxWWNXZHQ3eGI5V3VTeW94d2tEdWJ3UTE0UGF6dFR3YzdVcUpDOU1LK1hSQ2J5TWhuZU16aGlnZHljOTVXSmh5MmRxVkVSNzNnaFlQOFZhbHoiLCJtYWMiOiIyZGVmNzgwYmIzMzU0Njk0YmZmNjQxN2NjZGY0ZWM2OTliZjFjYzM1ODAwZWVjNzNhMzc0MjY0MGZkZWE0NzExIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IjhIc3liTVFwWUlDWG03NXBUUGhRa1E9PSIsInZhbHVlIjoib09ubWp6RFg3V3hVVFlEVWwyVjJrVTIxdHdMZFVrSUJ1b0xiRXVzQ3p6QS9OUkoxUmlQckNuellXci9tNGlNZFFYaVVvcmNEeW5QbGphZGkrUElzb25PYW1wN1VFdXZlT2Zac1FGTlRvY2V6UTY1NW1XOE82ZllzMG16SUk1SVciLCJtYWMiOiI5ODBhYTM2YWM5MGVmNDZhY2YwNmRkMmVhODhmOTg0OWVkMDhkMDBhMGRjMGUxNGVkNmUxZmY2MzBmNWVlMjU2IiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6InNvNWRRSDAySU9ybGp1OWZOOGEydXc9PSIsInZhbHVlIjoiNkVGVlZCRmt6WHNXYlYxRVMwYlY2QTJRZWdDUlAybzA3VkVOdzh6Sm1qL2EvcldMdWs2QmdYTjFaUm5PQlM2M3NHS2pPS0VzRlYwSkh4RFYxYkVXMXRtZEdoUTRtcjFKZW00REFtWU8ydFIrNEFCaHVwKy96NU42RWY3U3BuUzQiLCJtYWMiOiI4ZDU0NGU3MmJjNWU3Y2I1Y2QzMDU2ZjkyN2I4OTQwZTg0YmU0YjJmYzBkNWY1ZDY4NTIxMDhhOWRlMTg3NTFhIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, NULL, NULL, 1, '2025-02-13 07:17:36', '2025-02-13 07:17:36'),
(3, 'GET', '[]', 'http://127.0.0.1:8002', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8002\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; planit_ai_session=eyJpdiI6Ijg3UlRQVGVoR2pPRmpqK1VHcDZSWnc9PSIsInZhbHVlIjoiQ1QvcmtxN0U5aDZoblFVNFRIbGNrNVE2K3kvbWFTNlFlbnkyZWJlNWR5R1dDeHFhNGNDSzd1SlVRY1BDS2NBQ3Y0TGZ1SXlGL1lBUzVNTWd6aFY1TXIzNkMxUnM3RldJT1FXRGZ3VjFGK0FTRDdTSDUvM050R1lEZ3czelM3SDEiLCJtYWMiOiIyNzFmYTVlMjIzYTc4YjQxMzgzMjI4NTA5YTJjMWUyOTg3NWYwMzk5Y2JmZTVmYTY1MDZjZjA2ZjczMjFjOGYyIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1739276910.10.0.1739276910.0.0.0; bagisto_session=eyJpdiI6InlnNk5oeUx4eXMwRm5qdkk3aXg2L1E9PSIsInZhbHVlIjoiLzk2VG5ORnpOeDBGUUk1a21hNmoxdS9BZ0hkY05FNDJpMWI1QnpLTFJGYUJDYUpieHVJOTJ0TkxmS3NFWFlKa2dKUzBUTkNwSmxiZnovRUhTbzdVZjRLRGF1QUdUNGw1cS9GMDJrRWhOaEtpZkZ6ZFRzRURjOWNiQjhVL2VaOFYiLCJtYWMiOiJkODE0MDFkNTc2YmM4MzI1OTI5OGQxYjNhM2Q0YjBlYTQ2YzJkYmE2NTdhZmYyOTRmNzNhNzlmNzYwMGUyNWNmIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-02-14 03:36:42', '2025-02-14 03:36:42'),
(4, 'GET', '[]', 'http://127.0.0.1:8002', 'http://127.0.0.1:8002/customer/login', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8002\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"referer\":[\"http:\\/\\/127.0.0.1:8002\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; planit_ai_session=eyJpdiI6Ijg3UlRQVGVoR2pPRmpqK1VHcDZSWnc9PSIsInZhbHVlIjoiQ1QvcmtxN0U5aDZoblFVNFRIbGNrNVE2K3kvbWFTNlFlbnkyZWJlNWR5R1dDeHFhNGNDSzd1SlVRY1BDS2NBQ3Y0TGZ1SXlGL1lBUzVNTWd6aFY1TXIzNkMxUnM3RldJT1FXRGZ3VjFGK0FTRDdTSDUvM050R1lEZ3czelM3SDEiLCJtYWMiOiIyNzFmYTVlMjIzYTc4YjQxMzgzMjI4NTA5YTJjMWUyOTg3NWYwMzk5Y2JmZTVmYTY1MDZjZjA2ZjczMjFjOGYyIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1739276910.10.0.1739276910.0.0.0; XSRF-TOKEN=eyJpdiI6IjliUERJbXBaRkNBd2tBbURIU213Z3c9PSIsInZhbHVlIjoiWE15VllBMjNUUVk0KzNTUVZtRDR5Q1YxekIyRGZ5aXBDVUtBK2VWOThlUXIrS2Q0Y1QvS3VZSjBLVHFKTlNBd05yNzZDM1RnazVMVGJyWERXaWpYVXQ3MS81UW04WDBOYUhFclRSMDIwTVhwL0h6dlhJWWJlOE4zdWtOYzQ3Q2wiLCJtYWMiOiJhODc1NGJiYTc0MWExYmQxMTk5NjAzYjc1Y2VmODQ5ODQ3ZmMyYzU1NjhjNTQ5YWQ3YmJlNGUxMWIwOGVmNTY1IiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6ImsrQ0dUL1dRMlNFR3lxWmIzbTRoa0E9PSIsInZhbHVlIjoiWUJnNC8rRk12cU42djR3SVBpMkRNSHVKeGo3RVRkM0ppZ3FSVGhmakxPcE9taXFwQW93VjF4QjhPTjhWR0JCVUpXYm5yM055Z3h2ZHNEb0V4WXg5TkdnaXNxR3NScWZjcWR3Snp2Q2U2dnNTQXo1b0ZOeFBOemFDaE1UZ25rUFkiLCJtYWMiOiI3NDIzNDY0ZWMwZjBlMmMyNzQzMzVmMmExNGZhZThiMmZjMDlhYWFhYThhNjYyMTVhNjhkYjZmNjk3NzFhZjVmIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-14 04:32:02', '2025-02-14 04:32:02'),
(5, 'GET', '[]', 'http://127.0.0.1:8002/men', 'http://127.0.0.1:8002/customer/account/orders', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8002\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8002\\/customer\\/account\\/orders\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; planit_ai_session=eyJpdiI6Ijg3UlRQVGVoR2pPRmpqK1VHcDZSWnc9PSIsInZhbHVlIjoiQ1QvcmtxN0U5aDZoblFVNFRIbGNrNVE2K3kvbWFTNlFlbnkyZWJlNWR5R1dDeHFhNGNDSzd1SlVRY1BDS2NBQ3Y0TGZ1SXlGL1lBUzVNTWd6aFY1TXIzNkMxUnM3RldJT1FXRGZ3VjFGK0FTRDdTSDUvM050R1lEZ3czelM3SDEiLCJtYWMiOiIyNzFmYTVlMjIzYTc4YjQxMzgzMjI4NTA5YTJjMWUyOTg3NWYwMzk5Y2JmZTVmYTY1MDZjZjA2ZjczMjFjOGYyIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1739276910.10.0.1739276910.0.0.0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImRNQldmV2UvR1ozMzhxT2FSZGdCNkE9PSIsInZhbHVlIjoiOVJvYmdieE9kdTJ4WEY0bUtUY2xCdTR2K3VGSDFacW5veUw4djE4bDRxNjNIUGxoeWtPNnIwaUVhYldBZ2dpOUkwaFJFVnhWL2EwOHBlckRzR3JxZVV1emdLNk9aZ2RYSjdVNWw2QUpscS93cStYMlVoaHI3SVJ1UG9yZFkxdE4iLCJtYWMiOiI2YzMzZTc1NWJjYzJmYzUwNWRhZTVkNzE5M2FlYTk5ZjczMmRjZWJjOGY4NDAzMmExZjM1OGE1YmM2ODJkNjhhIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IjBET0QwaThpZkxZM2k3M1pRS3l1bVE9PSIsInZhbHVlIjoiQkNLaTRqbHZYTUNYelVKVzRIQWlBdWJnTHdSVlc3UnZBdVFybzNXUnl3K05RcFc5Mm9neVZldW1pcTZJOElXOGcwYWFvTnFCWmRKTFF2Y3VYWEtNWU1FK3Z5UVYxV2E1TXNFUThZckFMNzgwMGtyVnV1N2lIWTlpODdaMEYvVWsiLCJtYWMiOiIyMTNhMTA2MTQ5ODgzMzk1ZTBiOWMyN2UyNGMyNTIwMDA4ZjM1OTA4N2FmZTE1NDI2MmNmMGVlMzRhZWVkN2JhIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-14 06:21:40', '2025-02-14 06:21:40'),
(6, 'GET', '[]', 'http://127.0.0.1:8002/winter-wear', 'http://127.0.0.1:8002/men?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8002\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8002\\/men?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; planit_ai_session=eyJpdiI6Ijg3UlRQVGVoR2pPRmpqK1VHcDZSWnc9PSIsInZhbHVlIjoiQ1QvcmtxN0U5aDZoblFVNFRIbGNrNVE2K3kvbWFTNlFlbnkyZWJlNWR5R1dDeHFhNGNDSzd1SlVRY1BDS2NBQ3Y0TGZ1SXlGL1lBUzVNTWd6aFY1TXIzNkMxUnM3RldJT1FXRGZ3VjFGK0FTRDdTSDUvM050R1lEZ3czelM3SDEiLCJtYWMiOiIyNzFmYTVlMjIzYTc4YjQxMzgzMjI4NTA5YTJjMWUyOTg3NWYwMzk5Y2JmZTVmYTY1MDZjZjA2ZjczMjFjOGYyIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1739276910.10.0.1739276910.0.0.0; dark_mode=0; XSRF-TOKEN=eyJpdiI6ImZxMzk5bEtwNklhbXNjb0VSdmVCM0E9PSIsInZhbHVlIjoiM1RmUDA3WlVDSUkvVmVRM05BMVBOQktVblZwM0Z3YS9SUzNFWkVvVzhjY25YUHdHTWR6WkVSTjJvOVpuTjNMN01FSjZXTzZUS1g3WmtXaGF6M0p5OHhrTmxZRVh3MmtjSm1jdVMwSXl6enhmUnBrMnNwUjFSWXkzSS8zOHZiZ3UiLCJtYWMiOiJhYWEwMGUzYmYyYzdlNzZhZmFiZWU2NTg5MzkzYWIxOTgwZDA5YjUyNWRmODlhYTMxYzc4ZGZjNmVkMjJmNzgzIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6Ii9NaWlpbFducE5QT0hHUjBmeTN6a0E9PSIsInZhbHVlIjoiTzhsZzdML2dnVGppMURUaDlRZy9mMnRmRVJDdVp5VzE3TG4xWFpzVzNlQ2xKSk8zQW1McWdTaHRFcm1mTFFoUzc3aHd4MkZjRHRzbkFnT21DMWtTQTdKUjQyVlY5NkE2cEhhM1lNV1pRbDNwU1lUbUQ5MDhWdzhTb3dIK3VoaEgiLCJtYWMiOiIwNmZkMjZmMjQ5ZTUwYzczNGVlNWU2NDJiZTkwYWEyYjc0YTVkM2VkYTQ3YmEyYmU1NmFmNmMzNTc2YTViNjZhIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-14 06:28:58', '2025-02-14 06:28:58'),
(7, 'GET', '[]', 'http://localhost:8000', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwaS12aWxsYWdlLWRvY3Rvci5zbWFydC5vcmcubnAvYXBpL2xvZ2luIiwiaWF0IjoxNzIzOTcxNjQ3LCJleHAiOjE3MjQwNTgwNDcsIm5iZiI6MTcyMzk3MTY0NywianRpIjoiUXFON2RuRzAwWEx5VzY1VyIsInN1YiI6IjIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.XJcK3sgdZbjH-XcsGwiIzqhCGOq9r6Ayd5XMM3hJOGg; role=admin; username=undefined; user_layout=mobile; WebLang=2\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-02-14 09:27:08', '2025-02-14 09:27:08'),
(8, 'GET', '[]', 'http://localhost:8002', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"localhost:8002\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwaS12aWxsYWdlLWRvY3Rvci5zbWFydC5vcmcubnAvYXBpL2xvZ2luIiwiaWF0IjoxNzIzOTcxNjQ3LCJleHAiOjE3MjQwNTgwNDcsIm5iZiI6MTcyMzk3MTY0NywianRpIjoiUXFON2RuRzAwWEx5VzY1VyIsInN1YiI6IjIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.XJcK3sgdZbjH-XcsGwiIzqhCGOq9r6Ayd5XMM3hJOGg; role=admin; username=undefined; user_layout=mobile; WebLang=2; XSRF-TOKEN=eyJpdiI6InM5akVyN2pPMWxPL3kyQlVZRzJTT1E9PSIsInZhbHVlIjoia0s4K3lnbmxENlpwQ1lxN3A0bUlnaU9rdmJERCtYbXgrWGNqcU1KM25KdGtKSW1HSXZjSkpTWnZUU0VSbEhPVUJHT1E2ZDBpN2J1WVFUOVQwdGhMdDRxZnZKZzFVN2tFRmVpaTh5Z0lxdnJzdHQyRXNrcXVqa3FKUHVFdUEvajMiLCJtYWMiOiIyYWYyOWM5YjU1YTZiODYwZWJmOWE2MWM3NDRkZDIyMTQ1YmJjZDUzZWEzM2M4MjdhYmY0M2VlY2ZlYWY5MWIzIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IkZLYTU1WnlwZnlRbXlvVUtOUkJrOFE9PSIsInZhbHVlIjoiM2IxR2hTU2kwendqOVVwOGlQN09HQU45QXl6SVl4cHpaRmdVd01HWHJvSUhrN20vbjAyVzVxZTRFLzFJcmtYazBNNzBvSDZDN0xjWEhpdHFMSDFOUUtZNlphYmxVVE9GV1JkY2VSN1YzL1FkNFEzYzBITHJqNnE0NVk0SG9pN1MiLCJtYWMiOiI3MzdlY2FmNGQ2MWFiYjFhMDZkMWU5YTg3NDJlOTcyMGI5ZGMzYTljMmJjMTQwMjY4ZDk5MjAxZjFkOTI5NWMxIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-02-14 09:27:16', '2025-02-14 09:27:16'),
(9, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; bagisto_session=eyJpdiI6InhhQzloYWJSS3kvVjljU21wam9LUUE9PSIsInZhbHVlIjoiVlRQMHRKWnFONmJ0bXB1THZDdHpZLzIra0wvV1JkNEM4cnhoUVJmZ0paV0dHU1BING50V0U1NC9PUEJ6aHUxY0g1ZWNpMTZWcm5ZcmxGWkEvb1pici9LRzl4VlN1dXpVVmk4Si9udktzcEhNcTFNeWdMMWx3Ti9sRHpiS2h0VkciLCJtYWMiOiIyOTQ2OWE3Yjk2ODFjNTVmNjhmNGQzOWMyODc2NjZjYWRjNGE1NzdlYjUxYjliOGJjYjgyZmE1MjAwMzU5OTBhIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IlAwY25lcWJLQlpZWjJwVVE3Mm02Wnc9PSIsInZhbHVlIjoiSkc0bk5vL2J6N25YeEtRam41TmpQVFpleDU1QTkxMjdrS3FVUkxaanZxbGpjeXVVdGErNmxiaDVUS00yYUdFaHRTdWZzYy9RMCtOSDdrZHZsSHJMRnM1ejFHaXd0QkdBNEdzeXpoZW96cEdpWW5rUzZJRDZVVUlYdm9zY0ZIMFUiLCJtYWMiOiI4YWM5Mzk5N2UxNDgzYmJkZTM0MTVmYTM1ZDU4ZjA0OTU2ODVkYmRkYzlhNjEzMDdmMWZlZTM2NjA5NDJiZDQyIiwidGFnIjoiIn0%3D; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740558633.13.1.1740563180.0.0.0\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-02-26 09:51:28', '2025-02-26 09:51:28'),
(10, 'GET', '[]', 'http://127.0.0.1:8000/arctic-bliss-stylish-winter-scarf', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740558633.13.1.1740563180.0.0.0; XSRF-TOKEN=eyJpdiI6IjB4Z1pDSTNnL2R5QVV4Y2FEWTl6SWc9PSIsInZhbHVlIjoiQXJXQTBLdCtUN3JZMjNWaEMyZTNBaCtuWEFITUlUc3JIY2hQeWJNWE1uWVg1ZlBuVU03blU0dkZpbzB5cDZBd0JXbUpobHFHM3VOYjVZdHVNZTl5MUFzZ2RzUmVRNElYK05oUU5Tdm9Ea2VwbTJlazl6eFZYcHBvb3BMYVJqRHMiLCJtYWMiOiI4ODVhZmVhZWM0M2E0N2Q1YzY3MTUxNDhiMGMyNjUwNDBkOWE4ZTdlMGU2NjQwOTQzMGZjNDkxZDdhOTQzYTBiIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IjVobFFuMEx4WnpjektiR0NGOThHUFE9PSIsInZhbHVlIjoiWmJzaGxRT2lmbGdHMXJhR3pXclJrcjBQdHRSZnNtczZ2Z2hvZXdOdFordElXZForSHk2aTRIblR0SGt1bmdKRGVZWVdpVGt5b3ZkcXJTaGlBUW9tT3Znell2RmYxRFBDNVFCNHFwODBrM2Zsd1hjSHpQT1JIK094N0tONmRsS1YiLCJtYWMiOiJlOTM0M2ZlYTY2MmViNDU3MGIxNjA4ZjE1NDhmNTZiN2ZkMWFlMTRjMmFlMGVhNjBmYjAyZTQwNTc0NWFmNjYwIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 2, NULL, NULL, 1, '2025-02-26 10:01:50', '2025-02-26 10:01:50'),
(11, 'GET', '[]', 'http://127.0.0.1:8000/arctic-cozy-knit-unisex-beanie', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740558633.13.1.1740563180.0.0.0; XSRF-TOKEN=eyJpdiI6InlraVU5bEp4WGZvY2ZDeXlUMlNoM0E9PSIsInZhbHVlIjoiL2xudnFjTytOQWU2bkYxSmNmYk9sVGdkbFVsbUNvS1VmNTNSN0x6UFN1azRtNXR3TUFjSTM4TXplRlFRR2ZjWVYxbDc1MnBrZVU1WlZORWpDa2k2SWNWYmhsdW1qbVZpTk1DY0UwVVB1TFd5NVduRW82Zmg5NDl6eGpkWXAyQWMiLCJtYWMiOiJkNjc5ZTJlNzk4N2VhZTI2Nzk2Mzg0OWYwOWEyYTQyMjhjMmU3ZjJmYTcxZTY2MGYyNDRhOWU0NDE4YTY2ZWFlIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6Imh4NmlJcC9PTGZ2aVlFdVkrWDlPY1E9PSIsInZhbHVlIjoiRDZHUUt4anBtTXNJdVJmUXZXSFp6emNYV1VESFFha1JycXpnYUxLU1lBMzg0dTdFbXcxNGZqSzkzZlBtdEhmcWMrZ1ZTTHhscDFjR3M0S0ZxTkk0UUNNUFpMOHBiY1VqcHQxZjFsb0haVjlKSno0ZmFmSm05ck5aaXU3WEhKYm4iLCJtYWMiOiJkM2QzOTNkZmE2ZTQ5YWM4NGYzNmRlMTY4YmY2NThmM2U4MGYyMDVmNTk1MDE4MzBkZWVkYWFmNmMyNWE2N2YxIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 1, NULL, NULL, 1, '2025-02-26 10:09:16', '2025-02-26 10:09:16'),
(12, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/customer/login', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740558633.13.1.1740563180.0.0.0; XSRF-TOKEN=eyJpdiI6IjdNZVliaW5vWStqRnlNTjlyVXpoTWc9PSIsInZhbHVlIjoibmJ3eVFCSWhud1V4bEUyaUVnMDF1Y1p5MldsenpnMTZtRmZ0WG5OTm9udDEzSGhmM2NXK1h3akRwUFRHemxGQTM1cllidmJPU1hMUHFHTmR4RXhZeFBwZ1B5aW90S0NFOHQvYnFaTyt1N2ZCLzZlQ1R1cm4xZlBFeWFtejBHUTYiLCJtYWMiOiJlYjYzMWMzNmYwNzYxYzEwOTZlY2VhMWY3YWUzMjkxY2U1N2M1OWRhYTdjZGYxNDEwZjFmNTgxYzVhYmY4YzI5IiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IjEyLzV6cHJOY3UySTh4U3JtTTNIcnc9PSIsInZhbHVlIjoiOVBVL0xqWDZmWlVkSitHNlRtY080bWlGUnJ1c0RvQTJCaXlQK296WlpJb1pXTU90V3RqRjdOWlBzRll3S3NRcUpjcmY5Z3VkdHhtMnBrMWFybE9GejF5MTVaSTNINXJvWm16S3A2RE9DWFdFTlJjSnV2TzVhdHNHb3BEM295VzAiLCJtYWMiOiI3NmUwODgyYTUxNjdiNDIwNmM5YzIxNDZkNTk0YmRiMWZhM2QxMDJjNjgxNzBlYzdkNDBmZTYxOGRlMDI0MTU5IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-26 10:24:09', '2025-02-26 10:24:09'),
(13, 'GET', '[]', 'http://127.0.0.1:8000/themes/default/assets/css/admin.css', 'http://127.0.0.1:8000/admin/login', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"text\\/css,*\\/*;q=0.1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"style\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740558633.13.1.1740563180.0.0.0; XSRF-TOKEN=eyJpdiI6ImFxZFBBUGNGVmlzYjlORFM3d2dkeUE9PSIsInZhbHVlIjoiT3ZsTHYrN295UXdNRlNMR0hVMXNIajAwdkZuMDVVd2phQmVTNk1RM1N5bmdxU2haSDdHVEtjYUdzRnhER21PZS9MaWgyRG9iT3FGaHBwZTZaVjFUOHV4TXJxaEVQTHJremJCSlNuTk0zZ2JwaUVFTURVakN2RlJ5MG9hMWhoK1giLCJtYWMiOiIyMjk2OWMzNjk3YWY3ZWJmMWVmMjNjNTJiYzkzYzQ0YTViZmE5ZmQwNTZmZWM4MmZhOGYyM2Y0MzM3ZThjOTFlIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IkQ0Y005eWNnMjUySWRuSG1kUFhZRkE9PSIsInZhbHVlIjoienBuUlVuTGRnRnNDZUN1UWNKMDNuWnEzZmo0OWJyRCtkMGYxZGtYc3lrSzhsOTBqL3hJcllwb1l5SVlCNU9JWUlxRHZHSWN3Z1hBZHlIRy9CVUFqc0xRRmVvWEhZakZ4Qit2SytSMG5mZ1VJQ1VTM0Vpa1dYWCtUeXFwUlVNTWIiLCJtYWMiOiIyNDM0NmJhMGRkYzBjOTY3NzQ5MDVhZWYyNmJkMGM1ODcxOTkzMWJhODdmY2Q2MjAxMjE0OGYyMmEwZTM1YWYwIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-26 10:28:29', '2025-02-26 10:28:29'),
(14, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6ImtiN3VzaEdLUUtUL21yMlNVdm9ZY3c9PSIsInZhbHVlIjoiUWVvMW12a0NTNi9sd2FDZlAwd1JCRkVDUWdVTTFaK1BCZ2pxMHZhOVc2bTJKUXpnM1RtSzVKVVV3N0RyeHNtQnRaV0RZTXg5bnR1bnd2YThmclFzY3hacFd6OXNMV2dOVUIyRm05ZmZjZDR6REJjTll5dUkrZ2pyNkFlVnpvQzIiLCJtYWMiOiJlNDg4MzllZDRjZmE3Y2MwZDVjMGVhN2M1NDdlNjU4YTU0MjZhODQ1ZmU4NTNlOTMwOGFhZjhkOTA0NjU2ODgyIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-02-27 07:38:57', '2025-02-27 07:38:57'),
(15, 'GET', '[]', 'http://127.0.0.1:8000/themes/default/assets/css/admin.css', 'http://127.0.0.1:8000/admin/login', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"text\\/css,*\\/*;q=0.1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"style\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; XSRF-TOKEN=eyJpdiI6ImlsbjByR0hCZ2xTL0tJY0VROHFlZXc9PSIsInZhbHVlIjoidk9leGQ5YWltOGNRQW5kSGo4aHZMSCtlYmJNM3AzdllQSkJQckd2QTFrcjY4OVp3cHFuTHA1SnlVWEh0c2g4YU5NNEk4amt5QTN6dFg1TWpLVTlSZFJpTWo3a2VicFlTZzVvRUIzNzROWHQ5d0orSEZvc0drbUUvTmdaeW93RHgiLCJtYWMiOiJkNTI5N2E2Y2M3MzE4ZDc4MmM0MjQwNzQ2MWI0NTgyYTIwOTEyNzlmYjI5ZGQ1NjY5NzYxYzU3YWUzNjYyMjU4IiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IjdmWXFHZEhoNnp6dkxtQWk5dG9lVVE9PSIsInZhbHVlIjoicjYwMDQvUjhqdTlTT2kyMXhsZmNZdTVXYnJaclY0aW5JeGVXZEUyZmxKN3BFbWpXR2VXbGs0dUY2a2M3WnlXMVRudTN2ZG1CVUNMaTJncjFKM0E3aUtHWGpQcy8rbE5paGNBM0Y3TE9DN25Wb0hzcWtHTUFZR0dJNTc1UjlsSEciLCJtYWMiOiIwYjIzYjAyZTZjMmM3NTU4OTlmNWNhMWY4MDVlNDU4YmE0MjQ2MTU3NTliMzI2ZmM4NmUyM2RiZjU5OWNjOTA0IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-02-27 07:45:47', '2025-02-27 07:45:47'),
(16, 'GET', '[]', 'http://127.0.0.1:8000', 'http://127.0.0.1:8000/customer/login', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"cache-control\":[\"max-age=0\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/customer\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; XSRF-TOKEN=eyJpdiI6InYxMENkRUxkeUNHWVcxejJJYkYrL3c9PSIsInZhbHVlIjoiM0o3V0xOOFJQa0JQQmJZSlRhblBUdjVlSm16dEQxYmt5dkJBQzNsUXQvYjJoTmdQRXV2MXAvWVM3REFHcTMzYmRnY3dsRkJMME84NC96cWU2bTFoT0t6TlZFdXJQK0thdVVGVGxJUGpoQjhONEk1cWRwUUZDWlM5RlVUU2lTQXUiLCJtYWMiOiIyM2M5MzZiOTk4NDNlNzFmZGRhYTI2MWMyYjlhZjliMDc3YjI5ZDUxYTEwYjI2ZjRkNWVmNjExZGNhNzliNWM0IiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6ImVSY3diOFZOOGFQaXJadHVaNlQrc2c9PSIsInZhbHVlIjoiRCt6M2FiOGQ5TGd6TkF1Z1Nxam5CQ1ZxdTkxZDBzNklieVNGWE45TVFML3I0RjhqRkRNdzNON1lWbm8yNEtrdXU3MS9VeElVT2pEN0NKcDBaUS9FclpONy9IUUtpWFJZalc5MktQZDBrczVkZ2UxMkx2dlpmQ0VPQlBjZ0g4MTAiLCJtYWMiOiI3ZDdlOTE3YWQ1NGZkYWM2NjA3ZmNlNDczOTE2MGI0NWQxYTI1MjVkN2QyMzliNmMzMjg5MTMxYWEzNWU4NzI0IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-27 07:48:09', '2025-02-27 07:48:09'),
(17, 'GET', '[]', 'http://127.0.0.1:8002', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8002\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; bagisto_session=eyJpdiI6IlNBd1d1eUVkQWZZWW94Y081U05uQlE9PSIsInZhbHVlIjoiTWhwYXZSMmE0K0Y0RnJoaTNvY1R3bDh0WDg5cUJTV0gvcnZBN2FEOFkwU1VTNjdCcHNUZnIrU0JsSnJoUlBxVzlxakw4TUs2WlJuejJUSU1aVkhZZnJGSmVGU3BIS2Z3RXp1aTBxRm4wSGxybDNNMXVQaXdKSmkxcytmMGdMQ2IiLCJtYWMiOiJlOTY5ZDQxZDlmZWE5NjZjZGIyNjFkZjMwZTA4Mjc3M2VkOTUzZjU1YjQxMmJjMDAwZDJhYjdjNTE4Yjc0NTBkIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6ImlsNUJiUTc1NmxCbGVVek1BWnV4dHc9PSIsInZhbHVlIjoidmRrYTNLd0k4SnFuajIyS1VzaUN2VDZJVWJrS3YvOE1ZTVJZSFk5UUI4M09ROEM4REc2UGYxUTBhdExQalI3VVd0djUyUTBIRmxMMWpYN1FYL3RNa0FqbENmdG9RY3NiTXdBN2VKaUVtUDlLeHYvN2FMNUlLcDJLcTRrbWUwZXYiLCJtYWMiOiI5OGRhZmU4YzM5MTNjNGJmMDE2NDViZTQ3NzhlYjMzNTRiNTBlNWI1MTg0ZGZhNWU0MDhkMGUyMjRmZGYzNjA3IiwidGFnIjoiIn0%3D; company_name_session=eyJpdiI6InBqcFBLbTh2dUxaZnp5RWxVQlNDNlE9PSIsInZhbHVlIjoibnRMUUFMb3NNWWRLRVl2bHdPWTBoWFBiR210YkhHQTV2WlMwdXFaSW0zbmxaVEMyYk5TbGg4RE9KYlRTN1doVnZTY1oyZGdsSTlGSWdUOWIzY2NVVWZBQmNRalorR083SVIxelBIeGRabDJZeFNocysvTSs3WFozTFRLWnlldnEiLCJtYWMiOiI0NjNjMDFjNjNiMTFjNzcwNDZhYzdiODNjMjYyYzQ3NGExYjEyYmI2ZWE4NWI3Njk2MjQwYjZiNzE3YmIzNzcyIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-27 08:21:15', '2025-02-27 08:21:15');
INSERT INTO `visits` (`id`, `method`, `request`, `url`, `referer`, `languages`, `useragent`, `headers`, `device`, `platform`, `browser`, `ip`, `visitable_type`, `visitable_id`, `visitor_type`, `visitor_id`, `channel_id`, `created_at`, `updated_at`) VALUES
(18, 'GET', '[]', 'http://127.0.0.1:8000/omniheat-mens-solid-hooded-puffer-jacket-blue-yellow-m', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; bagisto_session=eyJpdiI6Ikw4N0ZSQjJESkZLKy96MHRSV0dXOWc9PSIsInZhbHVlIjoiTlVqMDA1cGdaU2dVcWlKNkZiei8ydWxRZjJ6MGRCdzRHcW5QZy9LWGpCQnZMOUlGWGZRSzh6U0xZQzdyVUxJaXptOFIxTnNmeWRCQS9EWVZGYkVVYnV3R2hyL0I3b013L3lTeG9Dd3R3enRzbnFpdTlCaFEwRVVSbU9TSm1zOCsiLCJtYWMiOiIzMjUzNzdlZGE0ZTlmYTg1Nzc4NmI2NjMzYTQwNGMwNDM2YWVhYjdlOGZmZTQ0ZmUwM2ZkYTBjZDAxN2ViNDJmIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IjNFMUxrUU01KzVWekN5TTAzck1CL1E9PSIsInZhbHVlIjoiOThlb3hERlpGbThIRmw5YWpMV01iV0pUUDBieENVclAzaTF6T0V5c05KdC9yLzlkU0t3UWZQaTFiRE5valNuY3F0NFRCT1Zobm5EeklnQW5wRU96MFhncUJoOW5Kbm9LSDFFTzJUd2pWUkRSa0lXdEkxTThQM3A0bXo0aC9UUWoiLCJtYWMiOiI1NDI3ODQwMGUyMmIwMGM0YjFjYjQyMjE5Y2IyMDVlOGU5MmM2Zjk2YmZjMDUzMDljNDkzOTBhMmRjZDAyYjUzIiwidGFnIjoiIn0%3D; company_name_session=eyJpdiI6Ik9YbFd2MWkzRGFaT0YrMUhnalNFeFE9PSIsInZhbHVlIjoiU25vOHdaV00wRmJ0STE0M3FpMVRJL2x2ajJoNUJjeTZ5ajlYSUh6R2duMkJ2T3ovbVYxeDl0UmdTNWZvTUpSMnptd0RzdzJiakZxR3VKYThZcXNTUFE2VTNGbXFsTFVJVU5nMTN2YUFPSFJoNGNNdGhVc3J4eDlhTnBsU2t2R2YiLCJtYWMiOiIzNmM2MGY2ODUxY2ViNmRjODJiOGVhYjBkOWE1MmY1Y2YyMTVhOTRjOGQ4YzE1MzViYzczMTg3NTZhMDZjMTUwIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 8, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-27 08:56:09', '2025-02-27 08:56:09'),
(19, 'GET', '[]', 'http://127.0.0.1:8000/winter-wear', 'http://127.0.0.1:8000/omniheat-mens-solid-hooded-puffer-jacket-blue-yellow-m', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/omniheat-mens-solid-hooded-puffer-jacket-blue-yellow-m\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; company_name_session=eyJpdiI6Ik9YbFd2MWkzRGFaT0YrMUhnalNFeFE9PSIsInZhbHVlIjoiU25vOHdaV00wRmJ0STE0M3FpMVRJL2x2ajJoNUJjeTZ5ajlYSUh6R2duMkJ2T3ovbVYxeDl0UmdTNWZvTUpSMnptd0RzdzJiakZxR3VKYThZcXNTUFE2VTNGbXFsTFVJVU5nMTN2YUFPSFJoNGNNdGhVc3J4eDlhTnBsU2t2R2YiLCJtYWMiOiIzNmM2MGY2ODUxY2ViNmRjODJiOGVhYjBkOWE1MmY1Y2YyMTVhOTRjOGQ4YzE1MzViYzczMTg3NTZhMDZjMTUwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IjQzYWw1N2xWSm5SVWRDbGFGKy9kNlE9PSIsInZhbHVlIjoibW1BUElycmloY1ZoUlNKN21TOXoycCthb0Y4RlMwaXR4eGFDaUV6aUNHV1p2OWlIeitSRmZXaDRnMXhFazFuL21KS0kxTHhjTFBxbjZ5ck41Ynd1SnJoRXBURWpNUHVSVjFDRmZtYnpFSmZBb1RMbWJGU3E3QUx6Y2pmSllQTU0iLCJtYWMiOiJkODcwZWQ0NTFhNDdhNDlmN2Y0NjUzOWI4OGZmYWViNjBjZTZiYTc5YTlhYWIwMzNhNDU3Yzk3ZDNiNzU5YWI5IiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6ImRMZEZSL1dGR3lmdVdCWFV2YlRaS0E9PSIsInZhbHVlIjoiUnhyR3g5WVc5d1BaNU0vY3lXSGdkUktuMTArNTM4OTJoamtLR3FkOUMvUFpudmxpYVcxTXFzRjU4N0NzNjNYSk9PV0lFY3lraFY0RHpqUXRITXdRN1NpalpVbmx2ZEtsdThDL0VKQUNxV3lMMFoyYzRaZ2NLMFpRK3hzV2lKMUUiLCJtYWMiOiJlNTllOTgxZDBjMmU1MTZkYTRiNDQwNzdjZDdlZjQ3MGU4NTljOWUyMDVhMGRkMjBlODcwOThlN2FiZDhiNGQwIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-27 08:56:21', '2025-02-27 08:56:21'),
(20, 'GET', '[]', 'http://127.0.0.1:8000/omniheat-mens-solid-hooded-puffer-jacket', 'http://127.0.0.1:8000/winter-wear?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/winter-wear?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; company_name_session=eyJpdiI6Ik9YbFd2MWkzRGFaT0YrMUhnalNFeFE9PSIsInZhbHVlIjoiU25vOHdaV00wRmJ0STE0M3FpMVRJL2x2ajJoNUJjeTZ5ajlYSUh6R2duMkJ2T3ovbVYxeDl0UmdTNWZvTUpSMnptd0RzdzJiakZxR3VKYThZcXNTUFE2VTNGbXFsTFVJVU5nMTN2YUFPSFJoNGNNdGhVc3J4eDlhTnBsU2t2R2YiLCJtYWMiOiIzNmM2MGY2ODUxY2ViNmRjODJiOGVhYjBkOWE1MmY1Y2YyMTVhOTRjOGQ4YzE1MzViYzczMTg3NTZhMDZjMTUwIiwidGFnIjoiIn0%3D; XSRF-TOKEN=eyJpdiI6IitVb3dOTWtTVjhqTjJibUNpYUtOdkE9PSIsInZhbHVlIjoiWUNZdjRSL1dIczZoeGF4eEVYNVUwbkhmNVAxdzdIZFNpelpSOHFSQ1E1S3VVVHlCVGowN2lXU1BGUGhkTVhTTzJwSWtLMGdiTVRhUHJHVVVwYkFibFRYbVR5Ym5mR3p5SmJyRkcvZmdhU3diYVhjdGdkQ3NYNHhxMnAyRGpJMmciLCJtYWMiOiJkY2QzNTdhZjc1NDY2OWQxM2E2OWU0YmVjOGQ2ZWE0OGY5OGU5M2JhMTYwMTljMWVhZDkzOTNlMThhNGU0MTYxIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IlNYRGE1ekltQUxrN3ZOeWo3dVNMeVE9PSIsInZhbHVlIjoibnExK2dybFM5Zld0QmJCRHNCNGZjMTg0WnZRODlLNE8rOWNWVm5qV0NJWDNjYVlMZUhiaVNvbWFTblNiSFFIOWZ1VFhpclZtOEt2N1loOXZqaGZXTENXaGsydWdTeVIva29yNVhCelc0MHdYSFVWL3h2Vi93MDdJdEQwUzl5VDQiLCJtYWMiOiJkNTEwMWE2MzRiODBkOWE4ZmQyMzIyMmY1MWUyOGI2NjAzMzMxYTYxNDJkNzRmMzk5NjIyYjgzZjI0Yjg4YjljIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Product\\Models\\Product', 7, 'Webkul\\Customer\\Models\\Customer', 1, 1, '2025-02-27 08:56:27', '2025-02-27 08:56:27'),
(21, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; bagisto_session=eyJpdiI6IkRBVEpvdDk3dkNaTUsxZTFjZEQwYnc9PSIsInZhbHVlIjoiQTVsSld0ZXQydHUzYXV2QUJWd00yWEpBYTVIM3YxTktqUmY0bExhTStTVFZucG1wVDdVSEJLN05va3IvSHVBZlIzS1U1TGhjclAvOUJBb2dnaC9NU3V4Z0g1Z2pQdE0ranpjdU1EQnh1K3dEZjBNcE9MaDUvQnJxY1llcGRxaDUiLCJtYWMiOiJjODBhNjg3MDlmYmIwNGZhZjA0NWI4YjhmMDNmNjMzZGQ0NDVjMmUxZGZmNjA1NmViNjQ3ZjU4MjUxZDJlYjMxIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-03-03 03:59:38', '2025-03-03 03:59:38'),
(22, 'GET', '[]', 'http://127.0.0.1:8000/themes/default/assets/css/admin.css', 'http://127.0.0.1:8000/admin/login', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"accept\":[\"text\\/css,*\\/*;q=0.1\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"no-cors\"],\"sec-fetch-dest\":[\"style\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/admin\\/login\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; XSRF-TOKEN=eyJpdiI6IjZXZ0x0bUpQcXJ4WEwvUjZwdTg5dkE9PSIsInZhbHVlIjoiRlNCNHYyYndxcUVkYlZIV0RzSTRsVlBJd0xBY1hlbHZmV1BaSHEwZU9zYmhZeFJMY1NIdlN5bGtxQ1pxbm5OSnIwTWNnd2V3b1lVZXpDM210Zi9JZHNrbVhRYmVBZlVKS0V1TGhxUjNXOGxYSzIvSzJyc1hnWUh4UGtjQURDUVoiLCJtYWMiOiJlNTlhYWI0YTdiNmM0ZjhmNGRjZjRkY2Y3NTk1MWJjYjEyOTYyMTI5ODM5MWEzYzc5NmVlMDY3NWRkZDY2MDJlIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6InFNbzRaV2xlYUQ3OU1sNWwvRUNDd3c9PSIsInZhbHVlIjoiSEUrZXE5cGFMWVZhZEZBV25FbFR5aXFHbG5OcFZFMkx4UGxHUXN2OW9iTUR5OGdiaENTcDByU2VIaFlubmhJZTlIQk9Db2JUOHZUemk1M01GVUhiRHdhL3V1SlJUUUpLS1IvU2VpWFZkaFJTbEg3OEJZYmVPQ1dHMnJZZ1F5QW8iLCJtYWMiOiJkZTIzY2RiYTU3NTM2ODc4OWQ2YWY0YjUzOTk5M2IzZjYzYzYyNWE1M2ZmZmUxMDg5ZTg5MTA4YjdmZDE0NTI0IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-03-04 03:47:25', '2025-03-04 03:47:25'),
(23, 'GET', '[]', 'http://127.0.0.1:8000', NULL, '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"sec-purpose\":[\"prefetch;prerender\"],\"purpose\":[\"prefetch\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"none\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; bagisto_session=eyJpdiI6Im51elBUZWxVWjVmNjRKTFJTc0xkYVE9PSIsInZhbHVlIjoiNzRjNlB6b3R1cFc4eFM2WVVaZ0VlRm4rK1AvSjdMMURjL2g2ajB3Ykkxdk1sOHRoUDdtYmNlSmNYK3d3d3hCSktUREJuOEJxSkw5OVBzbDllZk9IN01Jd3h5Q3VvVExvb3VzTTVjclUzeUcwdXcyT2tYUk14Zy9lVytzbXJHR3AiLCJtYWMiOiIzNTJlMjEyMTNiMWE2NjM1MWJkMjFiZDFhYWNlNDE4ZDI3MDc3M2RkZmI3YzUyMGI2YWNlZjIxNTIwNzI2MTJmIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', NULL, NULL, NULL, NULL, 1, '2025-03-04 16:15:55', '2025-03-04 16:15:55'),
(24, 'GET', '[]', 'http://127.0.0.1:8000/men', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; XSRF-TOKEN=eyJpdiI6IjBURWdtTlZtSXIzcDFhODhJVGhXWXc9PSIsInZhbHVlIjoidjAxNDk3MUdOM2VHbGp4RWd3RmlabU1wVmFGUkpNa0JYMXhlV3NXekU4VkZheVAvdlMwZUVCM0wyMk1DWnBHaCt5ZDBXMytJMU85V2xXRXpSUkRKREFONElzcGhZNUg5N2Y3dWpjaDFzclNheDhmY0prSWVQVzU5RFo4Tk0waTEiLCJtYWMiOiJiNDlhZGE2OTQyM2QwN2Y3Yjk3Yzc2YzJkODI3YTlkMmNlMWI3ZDllZTk3ODZjMTgxYzM1Y2JkNGRjOTViNDM2IiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6Ilc5R1B3MFBDUENqWEY0eXBlM1VuaEE9PSIsInZhbHVlIjoia2IzSThOWjk1dzkvRDFObE5kbVFBdVF6a0J2NDJGWjVkQk1wTXVVRkpyOTB5ZUhQaVNwSG1rZDhpMXRHckJlNE0rVDJkK2ZueFlaWHlEMGZvNjJ3S0liOXZhSk9tOVBERUJGcTBpZm4wNHpZMS9HME1ESE54Y0YxT0VqbHEvTG4iLCJtYWMiOiIxM2MwNWE0NDcxYzkxMjUxZjQ0ZjdhZTA4NTNhYTc3OGVjMmZkNTJiOWM5MTgwZTcwZDFjYjVkMTBmOGQxMmNkIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 2, NULL, NULL, 1, '2025-03-04 16:16:56', '2025-03-04 16:16:56'),
(25, 'GET', '[]', 'http://127.0.0.1:8000/winter-wear', 'http://127.0.0.1:8000/men?sort=price-desc&limit=12&mode=grid', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/men?sort=price-desc&limit=12&mode=grid\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; XSRF-TOKEN=eyJpdiI6IkhLdWEvV3J6a0tBSDdKWWVLS25vOHc9PSIsInZhbHVlIjoiMXd2S2NrV1FYT0V2UEt5aEVoTXZYcENBNDdKSFZ3RUd4blc5SzFxaHQ3UmhJTk96YmdzQ2hzenNET2VYSy9IWFpETGwwTUprck84bnozV2RKaUdJNGNiSk8rbGo2ZU1hSW1aejhuaWtjNXNiQXpQTXBHUDUrc29URkxuelZZa1IiLCJtYWMiOiI2MjU4NTc5MjgwYjRlMDc5OGFhZDc0ZjBhZmI0MWExYTc2YTcyZmI2YjhjNGZjZjZkMDAzZjcxNzcxMmNiMTMyIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IlBLbUFsVUxVT1E4Yi85d0g1RVMzdlE9PSIsInZhbHVlIjoiY0M4NzI0UDhqeCtTdll4NzVCSDA0RGpjN0dlTnU2T1JiYVBWaXhXcEE3d3Y3ZXB2a0xlMDVoYkxYTTJPRk92WmN1eEg3aGNoNGhxaGxXYURDK2NiWDJycGloV3ZlNTErcUZwYmdXL3VrT3JNMWtnbTBVc3l3M1lBNjR1YzlZMDAiLCJtYWMiOiIzNWQzM2QwOTE1MzNmOGI1ODA3OTM4NzBhY2FmOTU3NDdmN2UzODBiNTNjZmE5NWM3NjcxMTgwMzIzZjRiYjZlIiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 3, NULL, NULL, 1, '2025-03-04 16:16:58', '2025-03-04 16:16:58'),
(26, 'GET', '[]', 'http://127.0.0.1:8000/women-wear', 'http://127.0.0.1:8000/', '[]', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '{\"host\":[\"127.0.0.1:8000\"],\"connection\":[\"keep-alive\"],\"sec-ch-ua\":[\"\\\"Not(A:Brand\\\";v=\\\"99\\\", \\\"Google Chrome\\\";v=\\\"133\\\", \\\"Chromium\\\";v=\\\"133\\\"\"],\"sec-ch-ua-mobile\":[\"?0\"],\"sec-ch-ua-platform\":[\"\\\"macOS\\\"\"],\"upgrade-insecure-requests\":[\"1\"],\"user-agent\":[\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/133.0.0.0 Safari\\/537.36\"],\"accept\":[\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\"],\"sec-fetch-site\":[\"same-origin\"],\"sec-fetch-mode\":[\"navigate\"],\"sec-fetch-user\":[\"?1\"],\"sec-fetch-dest\":[\"document\"],\"referer\":[\"http:\\/\\/127.0.0.1:8000\\/\"],\"accept-encoding\":[\"gzip, deflate, br, zstd\"],\"accept-language\":[\"en-US,en-GB;q=0.9,en;q=0.8\"],\"cookie\":[\"_ga=GA1.1.1709289589.1735185976; remember_web_3dc7a913ef5fd4b890ecabe3487085573e16cf82=eyJpdiI6IjdJd0haamtFTUFyanFnZFd5eXM2ZUE9PSIsInZhbHVlIjoiRTFNMXZVcTg4dk9ZM0lQMEp6YlQ3UjhXTmduNHNGTFA2N3RMVGxISFFPUE5JK2NwWHV2Rnd0RHFROWtCdGZiQnJMMXdmTXhyeS9PQUtIckdYNWxyZUxrVkhVaE1qZXZtdmJpY25DMkRLK2JSZG9zV3pIMzNrRWoxOXlQQ0drdk85UjNWL0VoTk41MVJsbFE0Z21HUjFJaFcyRlc3WENLSkdkS3JiWVhjcy9JcXpIZVFXOGZ5Y3VXazQ5aE1iSkJNYTRLZHZBaXhTRWJ6NUk2VXZ3dDVYdFkvNlFiWmc4a0RRS3BZWTM1Y3UwOD0iLCJtYWMiOiIzZDNjNTZmMDRiMWUwZDgxMTcyZWVhODRhMTJhYjhkYjI0MTdiNjkzYWIxMzcwMjFlYzY5ODNjNDU0ZDE3MjBjIiwidGFnIjoiIn0%3D; dark_mode=0; planit_ai_session=eyJpdiI6IkMreFd6ZUQwM2JKVi9XUkNJQTJpdEE9PSIsInZhbHVlIjoiUXZDdHRvS0ZLV29zVjNpbmxmZGJXdUE2Y3dhKzkxWE1uMTZrNkNCa3pJMHJSOFo3UkZUSkFmeXNndEV5L2k3eWZFUWpUQ29rTnFSTVlrN0t6RTlyb1lEWnJPQS9HM2xZb3dmbkpjUlNsRy9odERZbDBpclA5MEQvQ1RtcWxFNjAiLCJtYWMiOiJjYzY3N2Y4NWZiY2EwMTk5OTY2ZDhjZmNhODE4NmFmMGY3ZDAwMzY4NDhkMjA3NGQ5Zjc3YzZlYTUyMTJmMTAzIiwidGFnIjoiIn0%3D; _ga_65M0ZSLF7H=GS1.1.1740573365.14.1.1740573366.0.0.0; XSRF-TOKEN=eyJpdiI6ImhZZXZTZzlOYTlSaGg3K01yNnU0dmc9PSIsInZhbHVlIjoiVCtKdU45dWJBTU1yUEE5a1IwSWY3RTcrRm1uV3NWV0d6SWRMTEFicWFodTVGYnk1OUxWNWNnTGJ2ck41L0YzTnVQMDAxeHRNbDc2RklDeTZidmRnbkRaNnBlTDJQSUROVTJKTVF1RGpHS29RaC9Hd3NWdzRYTGE0UGpFa1VjT3QiLCJtYWMiOiIyMWJlZjhiYWQ0YTFmMTEzZTcyNjlhNjgyYmZkMWIzNDMyNWI2MDM5MTQzOWNkYmRkZjYxYjNlMzJiYzgzNGIxIiwidGFnIjoiIn0%3D; bagisto_session=eyJpdiI6IlhQcTBGbnpCc0RMMzRydXlkR0ZYdWc9PSIsInZhbHVlIjoiWG5HWlE5Y0dzQWM1VW9rWXVTa1d2K3RtU0FuN285VlErTlAyZ3pnVEhKVzdtTFkrYjR5RDV0YnIxZ0RPYzBkS1FBNTQ1cGJwcG8vdE5INUZtbGZlbWpHSjhBNFFnckMzK1o5QU9yQkxucVRkU0o3R1BQSEYrZWsvSDMrYXpDRmYiLCJtYWMiOiI3MjFiYjE4ZjMyOGExMzMxMzczYWYwNzgwNDQxM2FhNjI5MjgzM2M3YTllMWJjN2ZjMTI2ZjI4OWEwZThjOTg4IiwidGFnIjoiIn0%3D\"]}', 'Macintosh', 'OS X', 'Chrome', '127.0.0.1', 'Webkul\\Category\\Models\\Category', 4, NULL, NULL, 1, '2025-03-04 16:17:32', '2025-03-04 16:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `item_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_options`)),
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `time_of_moving` date DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_items`
--

CREATE TABLE `wishlist_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional`)),
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `addresses_cart_id_foreign` (`cart_id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`),
  ADD KEY `addresses_parent_address_id_foreign` (`parent_address_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_unique` (`code`);

--
-- Indexes for table `attribute_families`
--
ALTER TABLE `attribute_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_groups_attribute_family_id_name_unique` (`attribute_family_id`,`name`);

--
-- Indexes for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD PRIMARY KEY (`attribute_id`,`attribute_group_id`),
  ADD KEY `attribute_group_mappings_attribute_group_id_foreign` (`attribute_group_id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_option_translations_attribute_option_id_locale_unique` (`attribute_option_id`,`locale`);

--
-- Indexes for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_customer_id_foreign` (`customer_id`),
  ADD KEY `cart_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_parent_id_foreign` (`parent_id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indexes for table `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_payment_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `cart_rules`
--
ALTER TABLE `cart_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD PRIMARY KEY (`cart_rule_id`,`channel_id`),
  ADD KEY `cart_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupons_cart_rule_id_foreign` (`cart_rule_id`);

--
-- Indexes for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` (`cart_rule_coupon_id`),
  ADD KEY `cart_rule_coupon_usage_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_customers_cart_rule_id_foreign` (`cart_rule_id`),
  ADD KEY `cart_rule_customers_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD PRIMARY KEY (`cart_rule_id`,`customer_group_id`),
  ADD KEY `cart_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_rule_translations_cart_rule_id_locale_unique` (`cart_rule_id`,`locale`);

--
-- Indexes for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_shipping_rates_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `catalog_rules`
--
ALTER TABLE `catalog_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD PRIMARY KEY (`catalog_rule_id`,`channel_id`),
  ADD KEY `catalog_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD PRIMARY KEY (`catalog_rule_id`,`customer_group_id`),
  ADD KEY `catalog_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_products_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_products_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_products_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_products_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_product_prices_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_product_prices_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_product_prices_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_product_prices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD KEY `category_filterable_attributes_category_id_foreign` (`category_id`),
  ADD KEY `category_filterable_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_slug_locale_unique` (`category_id`,`slug`,`locale`),
  ADD KEY `category_translations_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channels_root_category_id_foreign` (`root_category_id`),
  ADD KEY `channels_default_locale_id_foreign` (`default_locale_id`),
  ADD KEY `channels_base_currency_id_foreign` (`base_currency_id`);

--
-- Indexes for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD PRIMARY KEY (`channel_id`,`currency_id`),
  ADD KEY `channel_currencies_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD UNIQUE KEY `channel_inventory_sources_channel_id_inventory_source_id_unique` (`channel_id`,`inventory_source_id`),
  ADD KEY `channel_inventory_sources_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD PRIMARY KEY (`channel_id`,`locale_id`),
  ADD KEY `channel_locales_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_translations_channel_id_locale_unique` (`channel_id`,`locale`),
  ADD KEY `channel_translations_locale_index` (`locale`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD UNIQUE KEY `cms_page_channels_cms_page_id_channel_id_unique` (`cms_page_id`,`channel_id`),
  ADD KEY `cms_page_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_translations_cms_page_id_url_key_locale_unique` (`cms_page_id`,`url_key`,`locale`);

--
-- Indexes for table `compare_items`
--
ALTER TABLE `compare_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compare_items_product_id_foreign` (`product_id`),
  ADD KEY `compare_items_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `core_config`
--
ALTER TABLE `core_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_states_country_id_foreign` (`country_id`);

--
-- Indexes for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_state_translations_country_state_id_foreign` (`country_state_id`);

--
-- Indexes for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_translations_country_id_foreign` (`country_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_exchange_rates_target_currency_unique` (`target_currency`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`),
  ADD KEY `customers_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `customers_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_groups_code_unique` (`code`);

--
-- Indexes for table `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_notes_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customer_password_resets`
--
ALTER TABLE `customer_password_resets`
  ADD KEY `customer_password_resets_email_index` (`email`);

--
-- Indexes for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_social_accounts_provider_id_unique` (`provider_id`),
  ADD KEY `customer_social_accounts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customization_details`
--
ALTER TABLE `customization_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customization_pages`
--
ALTER TABLE `customization_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customization_pages_slug_unique` (`slug`);

--
-- Indexes for table `customization_sections`
--
ALTER TABLE `customization_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customization_settings`
--
ALTER TABLE `customization_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datagrid_saved_filters_user_id_name_src_unique` (`user_id`,`name`,`src`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloadable_link_purchased_customer_id_foreign` (`customer_id`),
  ADD KEY `downloadable_link_purchased_order_id_foreign` (`order_id`),
  ADD KEY `downloadable_link_purchased_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gift_cards_giftcard_number_index` (`giftcard_number`);

--
-- Indexes for table `gift_card_balances`
--
ALTER TABLE `gift_card_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_payments`
--
ALTER TABLE `gift_card_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gift_card_payments_giftcard_number_index` (`giftcard_number`),
  ADD KEY `gift_card_payments_order_id_index` (`order_id`),
  ADD KEY `gift_card_payments_payment_id_index` (`payment_id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_batches`
--
ALTER TABLE `import_batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_batches_import_id_foreign` (`import_id`);

--
-- Indexes for table `inventory_sources`
--
ALTER TABLE `inventory_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_sources_code_unique` (`code`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locales_code_unique` (`code`);

--
-- Indexes for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketing_campaigns_channel_id_foreign` (`channel_id`),
  ADD KEY `marketing_campaigns_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `marketing_campaigns_marketing_template_id_foreign` (`marketing_template_id`),
  ADD KEY `marketing_campaigns_marketing_event_id_foreign` (`marketing_event_id`);

--
-- Indexes for table `marketing_events`
--
ALTER TABLE `marketing_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_templates`
--
ALTER TABLE `marketing_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_order_id_foreign` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_increment_id_unique` (`increment_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `order_comments`
--
ALTER TABLE `order_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_comments_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_parent_id_foreign` (`parent_id`),
  ADD KEY `order_items_tax_category_id_foreign` (`tax_category_id`);

--
-- Indexes for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payment_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  ADD UNIQUE KEY `product_attribute_values_unique_id_unique` (`unique_id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bundle_options_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundle_option_products_product_id_bundle_option_id_unique` (`product_id`,`product_bundle_option_id`),
  ADD KEY `product_bundle_option_products_product_bundle_option_id_foreign` (`product_bundle_option_id`);

--
-- Indexes for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_bundle_option_translations_option_id_locale_unique` (`product_bundle_option_id`,`locale`),
  ADD UNIQUE KEY `bundle_option_translations_locale_label_bundle_option_id_unique` (`locale`,`label`,`product_bundle_option_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD UNIQUE KEY `product_categories_product_id_category_id_unique` (`product_id`,`category_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_channels`
--
ALTER TABLE `product_channels`
  ADD UNIQUE KEY `product_channels_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD UNIQUE KEY `product_cross_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_cross_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_customer_group_prices_unique_id_unique` (`unique_id`),
  ADD KEY `product_customer_group_prices_product_id_foreign` (`product_id`),
  ADD KEY `product_customer_group_prices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_links_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_translations_link_id_foreign` (`product_downloadable_link_id`);

--
-- Indexes for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_samples_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sample_translations_sample_id_foreign` (`product_downloadable_sample_id`);

--
-- Indexes for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  ADD KEY `product_flat_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `product_flat_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_grouped_products_product_id_associated_product_id_unique` (`product_id`,`associated_product_id`),
  ADD KEY `product_grouped_products_associated_product_id_foreign` (`associated_product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_source_vendor_index_unique` (`product_id`,`inventory_source_id`,`vendor_id`),
  ADD KEY `product_inventories_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_inventory_indices_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_inventory_indices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_ordered_inventories_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_ordered_inventories_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price_indices_product_id_customer_group_id_channel_id_unique` (`product_id`,`customer_group_id`,`channel_id`),
  ADD KEY `product_price_indices_channel_id_foreign` (`channel_id`),
  ADD KEY `product_price_indices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD UNIQUE KEY `product_relations_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_relations_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_review_images_review_id_foreign` (`review_id`);

--
-- Indexes for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD UNIQUE KEY `product_super_attributes_product_id_attribute_id_unique` (`product_id`,`attribute_id`),
  ADD KEY `product_super_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD UNIQUE KEY `product_up_sells_parent_id_child_id_unique` (`parent_id`,`child_id`),
  ADD KEY `product_up_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_videos_product_id_foreign` (`product_id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_order_id_foreign` (`order_id`);

--
-- Indexes for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_items_parent_id_foreign` (`parent_id`),
  ADD KEY `refund_items_order_item_id_foreign` (`order_item_id`),
  ADD KEY `refund_items_refund_id_foreign` (`refund_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `search_terms_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_items_shipment_id_foreign` (`shipment_id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribers_list_customer_id_foreign` (`customer_id`),
  ADD KEY `subscribers_list_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `tax_categories`
--
ALTER TABLE `tax_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_categories_code_unique` (`code`);

--
-- Indexes for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_map_index_unique` (`tax_category_id`,`tax_rate_id`),
  ADD KEY `tax_categories_tax_rates_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rates_identifier_unique` (`identifier`);

--
-- Indexes for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customizations_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_customization_translations_theme_customization_id_foreign` (`theme_customization_id`);

--
-- Indexes for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_visitable_type_visitable_id_index` (`visitable_type`,`visitable_id`),
  ADD KEY `visits_visitor_type_visitor_id_index` (`visitor_type`,`visitor_id`),
  ADD KEY `visits_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_items_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_items_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_items_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `attribute_families`
--
ALTER TABLE `attribute_families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart_item_inventories`
--
ALTER TABLE `cart_item_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_payment`
--
ALTER TABLE `cart_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart_rules`
--
ALTER TABLE `cart_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `catalog_rules`
--
ALTER TABLE `catalog_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `channel_translations`
--
ALTER TABLE `channel_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `compare_items`
--
ALTER TABLE `compare_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_config`
--
ALTER TABLE `core_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_translations`
--
ALTER TABLE `country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_notes`
--
ALTER TABLE `customer_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customization_details`
--
ALTER TABLE `customization_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customization_pages`
--
ALTER TABLE `customization_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customization_sections`
--
ALTER TABLE `customization_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customization_settings`
--
ALTER TABLE `customization_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datagrid_saved_filters`
--
ALTER TABLE `datagrid_saved_filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_balances`
--
ALTER TABLE `gift_card_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift_card_payments`
--
ALTER TABLE `gift_card_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_batches`
--
ALTER TABLE `import_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_sources`
--
ALTER TABLE `inventory_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locales`
--
ALTER TABLE `locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_events`
--
ALTER TABLE `marketing_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marketing_templates`
--
ALTER TABLE `marketing_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_comments`
--
ALTER TABLE `order_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2727;

--
-- AUTO_INCREMENT for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_flat`
--
ALTER TABLE `product_flat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_videos`
--
ALTER TABLE `product_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refund_items`
--
ALTER TABLE `refund_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `search_synonyms`
--
ALTER TABLE `search_synonyms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `search_terms`
--
ALTER TABLE `search_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipment_items`
--
ALTER TABLE `shipment_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_categories`
--
ALTER TABLE `tax_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `url_rewrites`
--
ALTER TABLE `url_rewrites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_parent_address_id_foreign` FOREIGN KEY (`parent_address_id`) REFERENCES `addresses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attribute_groups`
--
ALTER TABLE `attribute_groups`
  ADD CONSTRAINT `attribute_groups_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_group_mappings`
--
ALTER TABLE `attribute_group_mappings`
  ADD CONSTRAINT `attribute_group_mappings_attribute_group_id_foreign` FOREIGN KEY (`attribute_group_id`) REFERENCES `attribute_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_group_mappings_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_option_translations`
--
ALTER TABLE `attribute_option_translations`
  ADD CONSTRAINT `attribute_option_translations_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `attribute_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `cart_payment`
--
ALTER TABLE `cart_payment`
  ADD CONSTRAINT `cart_payment_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_channels`
--
ALTER TABLE `cart_rule_channels`
  ADD CONSTRAINT `cart_rule_channels_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupons`
--
ALTER TABLE `cart_rule_coupons`
  ADD CONSTRAINT `cart_rule_coupons_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_coupon_usage`
--
ALTER TABLE `cart_rule_coupon_usage`
  ADD CONSTRAINT `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` FOREIGN KEY (`cart_rule_coupon_id`) REFERENCES `cart_rule_coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_coupon_usage_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customers`
--
ALTER TABLE `cart_rule_customers`
  ADD CONSTRAINT `cart_rule_customers_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_customer_groups`
--
ALTER TABLE `cart_rule_customer_groups`
  ADD CONSTRAINT `cart_rule_customer_groups_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_rule_translations`
--
ALTER TABLE `cart_rule_translations`
  ADD CONSTRAINT `cart_rule_translations_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `cart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart_shipping_rates`
--
ALTER TABLE `cart_shipping_rates`
  ADD CONSTRAINT `cart_shipping_rates_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_channels`
--
ALTER TABLE `catalog_rule_channels`
  ADD CONSTRAINT `catalog_rule_channels_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_customer_groups`
--
ALTER TABLE `catalog_rule_customer_groups`
  ADD CONSTRAINT `catalog_rule_customer_groups_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_products`
--
ALTER TABLE `catalog_rule_products`
  ADD CONSTRAINT `catalog_rule_products_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_rule_product_prices`
--
ALTER TABLE `catalog_rule_product_prices`
  ADD CONSTRAINT `catalog_rule_product_prices_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `catalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_filterable_attributes`
--
ALTER TABLE `category_filterable_attributes`
  ADD CONSTRAINT `category_filterable_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_filterable_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translations_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channels`
--
ALTER TABLE `channels`
  ADD CONSTRAINT `channels_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `channels_default_locale_id_foreign` FOREIGN KEY (`default_locale_id`) REFERENCES `locales` (`id`),
  ADD CONSTRAINT `channels_root_category_id_foreign` FOREIGN KEY (`root_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `channel_currencies`
--
ALTER TABLE `channel_currencies`
  ADD CONSTRAINT `channel_currencies_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_currencies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_inventory_sources`
--
ALTER TABLE `channel_inventory_sources`
  ADD CONSTRAINT `channel_inventory_sources_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_inventory_sources_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_locales`
--
ALTER TABLE `channel_locales`
  ADD CONSTRAINT `channel_locales_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_locales_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `locales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `channel_translations`
--
ALTER TABLE `channel_translations`
  ADD CONSTRAINT `channel_translations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_channels`
--
ALTER TABLE `cms_page_channels`
  ADD CONSTRAINT `cms_page_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_page_channels_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_translations`
--
ALTER TABLE `cms_page_translations`
  ADD CONSTRAINT `cms_page_translations_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `compare_items`
--
ALTER TABLE `compare_items`
  ADD CONSTRAINT `compare_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compare_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `country_states`
--
ALTER TABLE `country_states`
  ADD CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_state_translations`
--
ALTER TABLE `country_state_translations`
  ADD CONSTRAINT `country_state_translations_country_state_id_foreign` FOREIGN KEY (`country_state_id`) REFERENCES `country_states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `country_translations`
--
ALTER TABLE `country_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currency_exchange_rates`
--
ALTER TABLE `currency_exchange_rates`
  ADD CONSTRAINT `currency_exchange_rates_target_currency_foreign` FOREIGN KEY (`target_currency`) REFERENCES `currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customers_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_notes`
--
ALTER TABLE `customer_notes`
  ADD CONSTRAINT `customer_notes_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_social_accounts`
--
ALTER TABLE `customer_social_accounts`
  ADD CONSTRAINT `customer_social_accounts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `downloadable_link_purchased_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gift_card_payments`
--
ALTER TABLE `gift_card_payments`
  ADD CONSTRAINT `gift_card_payments_giftcard_number_foreign` FOREIGN KEY (`giftcard_number`) REFERENCES `gift_cards` (`giftcard_number`) ON DELETE CASCADE;

--
-- Constraints for table `import_batches`
--
ALTER TABLE `import_batches`
  ADD CONSTRAINT `import_batches_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `invoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marketing_campaigns`
--
ALTER TABLE `marketing_campaigns`
  ADD CONSTRAINT `marketing_campaigns_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_event_id_foreign` FOREIGN KEY (`marketing_event_id`) REFERENCES `marketing_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marketing_campaigns_marketing_template_id_foreign` FOREIGN KEY (`marketing_template_id`) REFERENCES `marketing_templates` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_comments`
--
ALTER TABLE `order_comments`
  ADD CONSTRAINT `order_comments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`);

--
-- Constraints for table `order_payment`
--
ALTER TABLE `order_payment`
  ADD CONSTRAINT `order_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD CONSTRAINT `order_transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_options`
--
ALTER TABLE `product_bundle_options`
  ADD CONSTRAINT `product_bundle_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_option_products`
--
ALTER TABLE `product_bundle_option_products`
  ADD CONSTRAINT `product_bundle_option_products_product_bundle_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_bundle_option_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_bundle_option_translations`
--
ALTER TABLE `product_bundle_option_translations`
  ADD CONSTRAINT `product_bundle_option_translations_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `product_bundle_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_channels`
--
ALTER TABLE `product_channels`
  ADD CONSTRAINT `product_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_channels_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_cross_sells`
--
ALTER TABLE `product_cross_sells`
  ADD CONSTRAINT `product_cross_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_cross_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_customer_group_prices`
--
ALTER TABLE `product_customer_group_prices`
  ADD CONSTRAINT `product_customer_group_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_customer_group_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_links`
--
ALTER TABLE `product_downloadable_links`
  ADD CONSTRAINT `product_downloadable_links_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_link_translations`
--
ALTER TABLE `product_downloadable_link_translations`
  ADD CONSTRAINT `link_translations_link_id_foreign` FOREIGN KEY (`product_downloadable_link_id`) REFERENCES `product_downloadable_links` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_samples`
--
ALTER TABLE `product_downloadable_samples`
  ADD CONSTRAINT `product_downloadable_samples_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_downloadable_sample_translations`
--
ALTER TABLE `product_downloadable_sample_translations`
  ADD CONSTRAINT `sample_translations_sample_id_foreign` FOREIGN KEY (`product_downloadable_sample_id`) REFERENCES `product_downloadable_samples` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_flat`
--
ALTER TABLE `product_flat`
  ADD CONSTRAINT `product_flat_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `attribute_families` (`id`),
  ADD CONSTRAINT `product_flat_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_flat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_flat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_grouped_products`
--
ALTER TABLE `product_grouped_products`
  ADD CONSTRAINT `product_grouped_products_associated_product_id_foreign` FOREIGN KEY (`associated_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_grouped_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_inventory_indices`
--
ALTER TABLE `product_inventory_indices`
  ADD CONSTRAINT `product_inventory_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventory_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_ordered_inventories`
--
ALTER TABLE `product_ordered_inventories`
  ADD CONSTRAINT `product_ordered_inventories_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ordered_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_price_indices`
--
ALTER TABLE `product_price_indices`
  ADD CONSTRAINT `product_price_indices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_price_indices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_relations`
--
ALTER TABLE `product_relations`
  ADD CONSTRAINT `product_relations_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_relations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_review_attachments`
--
ALTER TABLE `product_review_attachments`
  ADD CONSTRAINT `product_review_images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `product_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_super_attributes`
--
ALTER TABLE `product_super_attributes`
  ADD CONSTRAINT `product_super_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_super_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_up_sells`
--
ALTER TABLE `product_up_sells`
  ADD CONSTRAINT `product_up_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_up_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_videos`
--
ALTER TABLE `product_videos`
  ADD CONSTRAINT `product_videos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `refund_items`
--
ALTER TABLE `refund_items`
  ADD CONSTRAINT `refund_items_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `refund_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_refund_id_foreign` FOREIGN KEY (`refund_id`) REFERENCES `refunds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `search_terms`
--
ALTER TABLE `search_terms`
  ADD CONSTRAINT `search_terms_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `inventory_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipment_items`
--
ALTER TABLE `shipment_items`
  ADD CONSTRAINT `shipment_items_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribers_list`
--
ALTER TABLE `subscribers_list`
  ADD CONSTRAINT `subscribers_list_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribers_list_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tax_categories_tax_rates`
--
ALTER TABLE `tax_categories_tax_rates`
  ADD CONSTRAINT `tax_categories_tax_rates_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `tax_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_categories_tax_rates_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_customizations`
--
ALTER TABLE `theme_customizations`
  ADD CONSTRAINT `theme_customizations_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `theme_customization_translations`
--
ALTER TABLE `theme_customization_translations`
  ADD CONSTRAINT `theme_customization_translations_theme_customization_id_foreign` FOREIGN KEY (`theme_customization_id`) REFERENCES `theme_customizations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist_items`
--
ALTER TABLE `wishlist_items`
  ADD CONSTRAINT `wishlist_items_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
