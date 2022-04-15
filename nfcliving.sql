-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 14, 2022 at 04:57 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nfcliving`
--

-- --------------------------------------------------------

--
-- Table structure for table `About`
--

CREATE TABLE `About` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `category` varchar(100) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `About`
--

INSERT INTO `About` (`id`, `name`, `designation`, `contact`, `description`, `category`, `facebook`, `instagram`, `linkedin`, `twitter`, `image`) VALUES
(1, 'About Name', 'Designation', '0191 272 2631- 0191 649 4146', '<p>Designation Designation Designation Designation<br></p>', 'Full', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.linkedin.com', 'https://twitter.com', 'about/dining.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `AddressBook`
--

CREATE TABLE `AddressBook` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` longtext NOT NULL,
  `effective_delivery` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `country` varchar(2) NOT NULL,
  `email` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `order_notes` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AddressBook`
--

INSERT INTO `AddressBook` (`id`, `full_name`, `phone`, `city`, `address`, `effective_delivery`, `user_id`, `company_name`, `country`, `email`, `state`, `zip`, `order_notes`) VALUES
(4, 'masood azhar', '23432432423', '344354', 'sss', 'Office', 1, '', 'AF', 'admin@testing.com', 'weqw', '232', 'order Note'),
(3, 'masood azhar dd', '23432432423', '344354', 'ssss', 'Office', 1, 'sdfsf', 'AZ', 'masoodazhar60@gmail.com', 'sss', '33333', 'order Note');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add profile', 7, 'add_profile'),
(26, 'Can change profile', 7, 'change_profile'),
(27, 'Can delete profile', 7, 'delete_profile'),
(28, 'Can view profile', 7, 'view_profile'),
(29, 'Can add address book', 8, 'add_addressbook'),
(30, 'Can change address book', 8, 'change_addressbook'),
(31, 'Can delete address book', 8, 'delete_addressbook'),
(32, 'Can view address book', 8, 'view_addressbook'),
(33, 'Can add checkout address', 9, 'add_checkoutaddress'),
(34, 'Can change checkout address', 9, 'change_checkoutaddress'),
(35, 'Can delete checkout address', 9, 'delete_checkoutaddress'),
(36, 'Can view checkout address', 9, 'view_checkoutaddress'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add order item', 11, 'add_orderitem'),
(42, 'Can change order item', 11, 'change_orderitem'),
(43, 'Can delete order item', 11, 'delete_orderitem'),
(44, 'Can view order item', 11, 'view_orderitem'),
(45, 'Can add order', 12, 'add_order'),
(46, 'Can change order', 12, 'change_order'),
(47, 'Can delete order', 12, 'delete_order'),
(48, 'Can view order', 12, 'view_order'),
(49, 'Can add order status', 13, 'add_orderstatus'),
(50, 'Can change order status', 13, 'change_orderstatus'),
(51, 'Can delete order status', 13, 'delete_orderstatus'),
(52, 'Can view order status', 13, 'view_orderstatus'),
(53, 'Can add wish list', 14, 'add_wishlist'),
(54, 'Can change wish list', 14, 'change_wishlist'),
(55, 'Can delete wish list', 14, 'delete_wishlist'),
(56, 'Can view wish list', 14, 'view_wishlist'),
(57, 'Can add navigation menu', 15, 'add_navigationmenu'),
(58, 'Can change navigation menu', 15, 'change_navigationmenu'),
(59, 'Can delete navigation menu', 15, 'delete_navigationmenu'),
(60, 'Can view navigation menu', 15, 'view_navigationmenu'),
(61, 'Can add navigation sub menu', 16, 'add_navigationsubmenu'),
(62, 'Can change navigation sub menu', 16, 'change_navigationsubmenu'),
(63, 'Can delete navigation sub menu', 16, 'delete_navigationsubmenu'),
(64, 'Can view navigation sub menu', 16, 'view_navigationsubmenu'),
(65, 'Can add sliders', 17, 'add_sliders'),
(66, 'Can change sliders', 17, 'change_sliders'),
(67, 'Can delete sliders', 17, 'delete_sliders'),
(68, 'Can view sliders', 17, 'view_sliders'),
(69, 'Can add products', 18, 'add_products'),
(70, 'Can change products', 18, 'change_products'),
(71, 'Can delete products', 18, 'delete_products'),
(72, 'Can view products', 18, 'view_products'),
(73, 'Can add product images', 19, 'add_productimages'),
(74, 'Can change product images', 19, 'change_productimages'),
(75, 'Can delete product images', 19, 'delete_productimages'),
(76, 'Can view product images', 19, 'view_productimages'),
(77, 'Can add about', 20, 'add_about'),
(78, 'Can change about', 20, 'change_about'),
(79, 'Can delete about', 20, 'delete_about'),
(80, 'Can view about', 20, 'view_about'),
(81, 'Can add blog', 21, 'add_blog'),
(82, 'Can change blog', 21, 'change_blog'),
(83, 'Can delete blog', 21, 'delete_blog'),
(84, 'Can view blog', 21, 'view_blog'),
(85, 'Can add home main feature', 22, 'add_homemainfeature'),
(86, 'Can change home main feature', 22, 'change_homemainfeature'),
(87, 'Can delete home main feature', 22, 'delete_homemainfeature'),
(88, 'Can view home main feature', 22, 'view_homemainfeature'),
(89, 'Can add discount alert', 23, 'add_discountalert'),
(90, 'Can change discount alert', 23, 'change_discountalert'),
(91, 'Can delete discount alert', 23, 'delete_discountalert'),
(92, 'Can view discount alert', 23, 'view_discountalert'),
(93, 'Can add most needed products', 24, 'add_mostneededproducts'),
(94, 'Can change most needed products', 24, 'change_mostneededproducts'),
(95, 'Can delete most needed products', 24, 'delete_mostneededproducts'),
(96, 'Can view most needed products', 24, 'view_mostneededproducts'),
(97, 'Can add site setting', 25, 'add_sitesetting'),
(98, 'Can change site setting', 25, 'change_sitesetting'),
(99, 'Can delete site setting', 25, 'delete_sitesetting'),
(100, 'Can view site setting', 25, 'view_sitesetting'),
(101, 'Can add seasion sale', 26, 'add_seasionsale'),
(102, 'Can change seasion sale', 26, 'change_seasionsale'),
(103, 'Can delete seasion sale', 26, 'delete_seasionsale'),
(104, 'Can view seasion sale', 26, 'view_seasionsale'),
(105, 'Can add product option', 27, 'add_productoption'),
(106, 'Can change product option', 27, 'change_productoption'),
(107, 'Can delete product option', 27, 'delete_productoption'),
(108, 'Can view product option', 27, 'view_productoption');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$lHoH4evyQGH7SaGmq3oQb4$VRpAq7oNsm0LAOpnX6hsCoclToH2o6yyJ8Rvdp9OlzE=', '2022-04-06 21:12:53.984848', 1, 'admin', '', '', 'masoodadmin@mail.como', 1, 1, '2022-02-22 21:30:59.298757'),
(2, 'pbkdf2_sha256$260000$SLjalfRt5hG9qvC81XC5WR$LXMb3dU5YsKlSuyPyHxFq+bnzar+USOk77obBvrhEMM=', NULL, 0, 'masood', '', '', 'masoodazhar60@gmail.com', 0, 1, '2022-02-24 21:45:21.617659'),
(3, 'pbkdf2_sha256$260000$DdVq3u9aZ7IEZs8txUcEBY$6v85K2fBcLuqOq2YDGTM3gzGCZLJ4OktX2gzHIJcSp4=', '2022-02-24 21:47:43.207815', 0, 'azhar', '', '', 'masoodazhar60@gmail.com', 0, 1, '2022-02-24 21:47:32.127514');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE `Blog` (
  `id` int(11) NOT NULL,
  `heading` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `description` longtext NOT NULL,
  `display_on` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `by_id` int(11) NOT NULL,
  `product_category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`id`, `heading`, `date`, `description`, `display_on`, `image`, `by_id`, `product_category_id`) VALUES
(3, 'Good Dining Set', '2022-02-26', '<p>This is a good Dining Set</p>', 'Top', 'blogs/clearance.jpeg', 2, 3),
(2, 'Good Sofa Set', '2022-01-01', '<p>This is a good sofa set.</p>', 'Top', 'blogs/AMY-32-BLACK-AMY320201_WEznk2z.jpg', 1, 1),
(4, 'Good Bedsheet Sets', '2022-02-26', '<p>This is a good bedsheet set</p>', 'Top', 'blogs/bedsheet.jpeg', 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_in_products`
--

CREATE TABLE `Blog_in_products` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Blog_in_products`
--

INSERT INTO `Blog_in_products` (`id`, `blog_id`, `products_id`) VALUES
(1, 2, 1),
(3, 3, 66),
(4, 3, 68),
(5, 4, 88),
(6, 4, 111);

-- --------------------------------------------------------

--
-- Table structure for table `DiscountAlert`
--

CREATE TABLE `DiscountAlert` (
  `id` int(11) NOT NULL,
  `has_discount_to_all_category_products` tinyint(1) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `discount_percent` double NOT NULL,
  `discount_duration` date NOT NULL,
  `status` int(11) NOT NULL,
  `category_of_products_id` int(11) NOT NULL,
  `product_discounted_id` int(11) NOT NULL,
  `color_style` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'frontend', 'profile'),
(8, 'frontend', 'addressbook'),
(9, 'frontend', 'checkoutaddress'),
(10, 'frontend', 'payment'),
(11, 'frontend', 'orderitem'),
(12, 'frontend', 'order'),
(13, 'frontend', 'orderstatus'),
(14, 'frontend', 'wishlist'),
(15, 'backend', 'navigationmenu'),
(16, 'backend', 'navigationsubmenu'),
(17, 'backend', 'sliders'),
(18, 'backend', 'products'),
(19, 'backend', 'productimages'),
(20, 'backend', 'about'),
(21, 'backend', 'blog'),
(22, 'backend', 'homemainfeature'),
(23, 'backend', 'discountalert'),
(24, 'backend', 'mostneededproducts'),
(25, 'backend', 'sitesetting'),
(26, 'backend', 'seasionsale'),
(27, 'backend', 'productoption');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-22 21:24:25.681190'),
(2, 'auth', '0001_initial', '2022-02-22 21:24:25.940898'),
(3, 'admin', '0001_initial', '2022-02-22 21:24:26.539951'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-22 21:24:26.696719'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-22 21:24:26.708283'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-22 21:24:26.799689'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-22 21:24:26.844564'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-22 21:24:26.886452'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-22 21:24:26.900417'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-22 21:24:26.936608'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-22 21:24:26.939569'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-22 21:24:26.949545'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-22 21:24:26.986133'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-22 21:24:27.033929'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-22 21:24:27.091466'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-22 21:24:27.104427'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-22 21:24:27.144963'),
(18, 'backend', '0001_initial', '2022-02-22 21:24:27.321087'),
(19, 'backend', '0002_products_display_in_navbar', '2022-02-22 21:24:27.670387'),
(20, 'backend', '0003_navigationmenu_has_products', '2022-02-22 21:24:27.739966'),
(21, 'backend', '0004_auto_20210804_0855', '2022-02-22 21:24:27.821345'),
(22, 'backend', '0005_products_active_feature', '2022-02-22 21:24:27.932620'),
(23, 'backend', '0006_products_product_image', '2022-02-22 21:24:27.998492'),
(24, 'backend', '0007_auto_20210805_1509', '2022-02-22 21:24:28.155931'),
(25, 'backend', '0008_remove_navigationsubmenu_slug', '2022-02-22 21:24:28.207161'),
(26, 'backend', '0009_rename_active_feature_products_active_feature', '2022-02-22 21:24:28.232641'),
(27, 'backend', '0010_alter_navigationsubmenu_status', '2022-02-22 21:24:28.279281'),
(28, 'backend', '0011_auto_20210806_1134', '2022-02-22 21:24:28.346308'),
(29, 'backend', '0012_auto_20210806_1156', '2022-02-22 21:24:28.516447'),
(30, 'backend', '0013_navigationmenu_has_products', '2022-02-22 21:24:28.586664'),
(31, 'backend', '0014_alter_navigationmenu_has_products', '2022-02-22 21:24:28.593718'),
(32, 'backend', '0015_about', '2022-02-22 21:24:28.631247'),
(33, 'backend', '0016_auto_20210811_0906', '2022-02-22 21:24:28.899525'),
(34, 'backend', '0017_about_imgae', '2022-02-22 21:24:28.975585'),
(35, 'backend', '0018_rename_imgae_about_image', '2022-02-22 21:24:29.004963'),
(36, 'backend', '0019_sliders_explore_to', '2022-02-22 21:24:29.096745'),
(37, 'backend', '0020_sliders_status', '2022-02-22 21:24:29.200910'),
(38, 'backend', '0021_auto_20210825_1330', '2022-02-22 21:24:29.309627'),
(39, 'backend', '0022_auto_20210825_1443', '2022-02-22 21:24:29.642222'),
(40, 'backend', '0023_auto_20210825_1452', '2022-02-22 21:24:29.742544'),
(41, 'backend', '0024_navigationmenu_short_detail', '2022-02-22 21:24:29.976683'),
(42, 'backend', '0025_auto_20210915_1858', '2022-02-22 21:24:30.119713'),
(43, 'backend', '0026_discountalert', '2022-02-22 21:24:30.239439'),
(44, 'backend', '0027_auto_20210916_1553', '2022-02-22 21:24:30.510632'),
(45, 'backend', '0028_mostneededproducts', '2022-02-22 21:24:30.551954'),
(46, 'backend', '0029_alter_mostneededproducts_product', '2022-02-22 21:24:30.649246'),
(47, 'backend', '0030_alter_productimages_image', '2022-02-22 21:24:30.661217'),
(48, 'backend', '0031_blog_product_category', '2022-02-22 21:24:30.759200'),
(49, 'backend', '0032_sitesetting', '2022-02-22 21:24:30.845677'),
(50, 'backend', '0033_seasionsale', '2022-02-22 21:24:30.906697'),
(51, 'backend', '0034_productoption_alter_products_description', '2022-02-22 21:24:31.030978'),
(52, 'backend', '0035_alter_productoption_options', '2022-02-22 21:24:31.085396'),
(53, 'backend', '0036_productoption_sub_category', '2022-02-22 21:24:31.146095'),
(54, 'backend', '0037_remove_productoption_sub_category_and_more', '2022-02-22 21:24:31.293015'),
(55, 'backend', '0038_products_other_options_alter_productoption_type', '2022-02-22 21:24:31.558559'),
(56, 'backend', '0039_alter_productoption_type', '2022-02-22 21:24:31.577480'),
(57, 'backend', '0040_productimages_display_place_sitesetting_logo', '2022-02-22 21:24:31.716909'),
(58, 'backend', '0041_auto_20220223_0223', '2022-02-22 21:24:33.534210'),
(59, 'frontend', '0001_initial', '2022-02-22 21:24:33.645924'),
(60, 'frontend', '0002_auto_20210911_2051', '2022-02-22 21:24:33.842623'),
(61, 'frontend', '0003_checkoutaddress_item_order_orderitem_payment', '2022-02-22 21:24:34.231563'),
(62, 'frontend', '0004_alter_orderitem_item', '2022-02-22 21:24:35.079115'),
(63, 'frontend', '0005_alter_order_checkout_address', '2022-02-22 21:24:35.116224'),
(64, 'frontend', '0006_auto_20210919_0719', '2022-02-22 21:24:35.607157'),
(65, 'frontend', '0007_auto_20210919_0744', '2022-02-22 21:24:35.835694'),
(66, 'frontend', '0008_auto_20210920_2038', '2022-02-22 21:24:35.993142'),
(67, 'frontend', '0009_alter_orderstatus_orderid', '2022-02-22 21:24:36.189682'),
(68, 'frontend', '0010_wishlist', '2022-02-22 21:24:36.281347'),
(69, 'frontend', '0011_order_tracking_id', '2022-02-22 21:24:36.481923'),
(70, 'frontend', '0012_alter_order_tracking_id', '2022-02-22 21:24:36.603322'),
(71, 'frontend', '0013_order_option_options', '2022-02-22 21:24:36.707360'),
(72, 'frontend', '0014_delete_item', '2022-02-22 21:24:36.718947'),
(73, 'frontend', '0015_auto_20220223_0223', '2022-02-22 21:24:37.739325'),
(74, 'sessions', '0001_initial', '2022-02-22 21:24:37.781652'),
(75, 'backend', '0042_sitesetting_terms_and_condion', '2022-02-24 18:23:36.711647'),
(76, 'backend', '0043_auto_20220225_0150', '2022-02-24 20:51:07.925729');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('tiwwx7d2cwc0juqmyw3adc28gs6g2aw4', '.eJxVjMEOwiAQRP-FsyEFtnXx6N1vIAssUjWQlPZk_HdL0oNmLpN5L_MWjrY1u63x4uYoLkKJ0-_mKTy5dBAfVO5VhlrWZfayK_KgTd5q5Nf1cP8OMrXcb6O2ajLEBJiSVZY0ekqk4jgGz0angfaAZYAJ0QZzBgWeB8TB7F18vupGN2s:1nMckX:-i1_8cfxFuE4AXkHMUEIsIxaQW6qLKZN7skx54CI0w4', '2022-03-08 21:31:09.495082'),
('mxwjit72oesvovnfyawllzcq7jw5p80d', '.eJxVjMsOwiAURP-FtSEXKlJcuu83kPugUjWQlHZl_HfbpAvdzGLOmXmriOuS49rSHCdRV9Wp029HyM9UdiAPLPequZZlnkjvij5o00OV9Lod7t9Bxpa3NTtIlqzjSwCbzAjM0Dsh3NJThw7DyGiMmIABvYWOTA9OxPuzD4zq8wXoXzfp:1nNLxf:4wNqcuR2bXUQVhtJjFzkxV9acelUbNiLJXIAcJmzQ9w', '2022-03-10 21:47:43.210620'),
('b92a6a2zao3oa7lurm7py2uwbg42632m', '.eJxVjMEOwiAQRP-FsyG7hQL16L3fQGBZpGpoUtqT8d9tkx40c5v3Zt7Ch20tfmu8-CmJq0Bx-e1ioCfXA6RHqPdZ0lzXZYryUORJmxznxK_b6f4dlNDKvjaGTciQ2EZQSAiDsbpzHPo9FBltjBqoA9KQHSuLPaGihAa4y4MTny_pYTfn:1nNvSE:CsUfI97o_2RVrfsjgWYLJwKgkbpekkgHvNcmD81-dGg', '2022-03-12 11:41:38.494612'),
('hmp0yg22lzlsei1cc15adttn0hagdssa', '.eJxVjMEOwiAQRP-FsyG7hQL16L3fQGBZpGpoUtqT8d9tkx40c5v3Zt7Ch20tfmu8-CmJq0Bx-e1ioCfXA6RHqPdZ0lzXZYryUORJmxznxK_b6f4dlNDKvjaGTciQ2EZQSAiDsbpzHPo9FBltjBqoA9KQHSuLPaGihAa4y4MTny_pYTfn:1nOcfK:4_A4X_TmBPcADueBOUd8qien28Yh8gZyrAMiR7O23eg', '2022-03-14 09:50:02.275090'),
('w0376uibs555xo1q4x64zn8ocjr7ru3n', '.eJxVjMEOwiAQRP-FsyG7hQL16L3fQGBZpGpoUtqT8d9tkx40c5v3Zt7Ch20tfmu8-CmJq0Bx-e1ioCfXA6RHqPdZ0lzXZYryUORJmxznxK_b6f4dlNDKvjaGTciQ2EZQSAiDsbpzHPo9FBltjBqoA9KQHSuLPaGihAa4y4MTny_pYTfn:1nSvzG:IyjIUWwgu-ZRIQx8WFC20GSwRfRfAVMIEJi9f_gV_fA', '2022-03-26 07:16:26.705788'),
('3pr95kntgqel04i9g45kfbfo33yx3t9r', '.eJxVjMEOwiAQRP-FsyG7hQL16L3fQGBZpGpoUtqT8d9tkx40c5v3Zt7Ch20tfmu8-CmJq0Bx-e1ioCfXA6RHqPdZ0lzXZYryUORJmxznxK_b6f4dlNDKvjaGTciQ2EZQSAiDsbpzHPo9FBltjBqoA9KQHSuLPaGihAa4y4MTny_pYTfn:1nTkS8:zyJc7s-4FyxSDmZzhs7CIJMX-wcsF11LM9h1Kw1jb-k', '2022-03-28 13:09:36.163654'),
('f76k725rhfztcrwhcog0crqo72vtbsi8', '.eJxVjMEOwiAQRP-FsyG7hQL16L3fQGBZpGpoUtqT8d9tkx40c5v3Zt7Ch20tfmu8-CmJq0Bx-e1ioCfXA6RHqPdZ0lzXZYryUORJmxznxK_b6f4dlNDKvjaGTciQ2EZQSAiDsbpzHPo9FBltjBqoA9KQHSuLPaGihAa4y4MTny_pYTfn:1nTl5j:Tqdqc4HLJAAp8oC2-Ku8QEm9KSrD12QH2MvEOWlY65g', '2022-03-28 13:50:31.319924'),
('88sc3iqwmuplp2udgi8m2mxjd58t6z5q', '.eJxVjMEOwiAQRP-FsyG7hQL16L3fQGBZpGpoUtqT8d9tkx40c5v3Zt7Ch20tfmu8-CmJq0Bx-e1ioCfXA6RHqPdZ0lzXZYryUORJmxznxK_b6f4dlNDKvjaGTciQ2EZQSAiDsbpzHPo9FBltjBqoA9KQHSuLPaGihAa4y4MTny_pYTfn:1nUwkK:Kqc_RJSIgWeOXc7k8-R0luF032ebMjGirn8JLxNc6aM', '2022-03-31 20:29:20.730870'),
('zi6y3tezen483esra8pkc6787t7vf0mv', '.eJxVjMEOwiAQRP-FsyG7hQL16L3fQGBZpGpoUtqT8d9tkx40c5v3Zt7Ch20tfmu8-CmJq0Bx-e1ioCfXA6RHqPdZ0lzXZYryUORJmxznxK_b6f4dlNDKvjaGTciQ2EZQSAiDsbpzHPo9FBltjBqoA9KQHSuLPaGihAa4y4MTny_pYTfn:1ncCxR:gvu1OEKKlGw05YBszsAbY0ZCXV920_GQEedza0WLgyQ', '2022-04-20 21:12:53.986161');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_checkoutaddress`
--

CREATE TABLE `frontend_checkoutaddress` (
  `id` int(11) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `apartment_address` varchar(100) NOT NULL,
  `country` varchar(2) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `frontend_order`
--

CREATE TABLE `frontend_order` (
  `id` int(11) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `ordered_date` datetime(6) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `checkout_address_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_id` varchar(100) NOT NULL,
  `option_options` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frontend_order`
--

INSERT INTO `frontend_order` (`id`, `start_date`, `ordered_date`, `ordered`, `checkout_address_id`, `payment_id`, `user_id`, `tracking_id`, `option_options`) VALUES
(5, '2022-02-24 18:15:17.890044', '2022-02-24 18:15:17.889046', 1, 4, 4, 1, '1683f02a-fb9d-4101-95db-dfc2ea73dffa', '[]'),
(4, '2022-02-24 17:55:45.365794', '2022-02-24 17:55:45.364797', 1, 3, 3, 1, 'fbc77062-8fe7-4300-b960-038ad60124de', '[]'),
(6, '2022-02-24 21:56:56.942503', '2022-02-24 21:56:56.941961', 0, NULL, NULL, 3, '5b49ae52-bb60-48fa-9fc8-93571da93fae', '[]'),
(8, '2022-03-04 09:38:47.060875', '2022-03-04 09:38:47.060519', 0, NULL, NULL, 1, 'f4c69911-d2a7-485c-a883-c5494199d184', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_orderitem`
--

CREATE TABLE `frontend_orderitem` (
  `id` int(11) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frontend_orderitem`
--

INSERT INTO `frontend_orderitem` (`id`, `ordered`, `quantity`, `item_id`, `user_id`) VALUES
(2, 0, 1, 3, 1),
(3, 0, 1, 39, 1),
(4, 0, 1, 65, 1),
(5, 0, 1, 75, 1),
(9, 0, 1, 1, 3),
(11, 0, 1, 116, 1);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_order_items`
--

CREATE TABLE `frontend_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `orderitem_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frontend_order_items`
--

INSERT INTO `frontend_order_items` (`id`, `order_id`, `orderitem_id`) VALUES
(6, 5, 4),
(5, 4, 3),
(4, 4, 2),
(7, 5, 5),
(11, 6, 9),
(13, 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `frontend_payment`
--

CREATE TABLE `frontend_payment` (
  `id` int(11) NOT NULL,
  `stripe_id` varchar(50) NOT NULL,
  `amount` double NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frontend_payment`
--

INSERT INTO `frontend_payment` (`id`, `stripe_id`, `amount`, `timestamp`, `user_id`) VALUES
(4, 'pi_3KWmDtGyFGHjeIuJ1RUAXTfA', 738, '2022-02-24 18:41:07.741570', 1),
(3, 'pi_3KWlknGyFGHjeIuJ0obicxho', 1468, '2022-02-24 18:11:04.433145', 1);

-- --------------------------------------------------------

--
-- Table structure for table `HomeMainFeature`
--

CREATE TABLE `HomeMainFeature` (
  `id` int(11) NOT NULL,
  `main_feature_image` varchar(100) NOT NULL,
  `category_of_products_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `HomeMainFeature`
--

INSERT INTO `HomeMainFeature` (`id`, `main_feature_image`, `category_of_products_id`) VALUES
(1, 'uimages/AMY-32-BLACK-AMY320201.jpg', 8),
(2, 'uimages/dining.jpeg', 9),
(3, 'uimages/ward.jpeg', 10),
(4, 'uimages/clearance.jpeg', 12),
(5, 'uimages/bedsheet_SEkrJsO.jpeg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `MostNeededProducts`
--

CREATE TABLE `MostNeededProducts` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MostNeededProducts`
--

INSERT INTO `MostNeededProducts` (`id`, `product_id`) VALUES
(1, 1),
(3, 3),
(4, 16),
(5, 20),
(6, 55);

-- --------------------------------------------------------

--
-- Table structure for table `NavigationMenu`
--

CREATE TABLE `NavigationMenu` (
  `id` int(11) NOT NULL,
  `parent_menu` varchar(100) NOT NULL,
  `location` varchar(30) NOT NULL,
  `has_products` tinyint(1) NOT NULL,
  `short_detail` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NavigationMenu`
--

INSERT INTO `NavigationMenu` (`id`, `parent_menu`, `location`, `has_products`, `short_detail`) VALUES
(8, 'Sofas', 'Menu', 0, 'all Sofa sets, Furnitures, Frams may available here.'),
(9, 'Dining Furniture', 'Menu', 0, 'all Dining Furniture set may available here.'),
(10, 'Bedroom Furniture', 'Menu', 0, 'all Bedroom furniture set may available here.'),
(11, 'Bed Frames', 'Menu', 0, 'all Bed Frames set may available here.'),
(12, 'Clearance', 'Menu', 0, 'Clearance Sale Items'),
(13, 'Occasional', 'Menu', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `NavigationSubMenu`
--

CREATE TABLE `NavigationSubMenu` (
  `id` int(11) NOT NULL,
  `sub_menu` varchar(100) NOT NULL,
  `status` varchar(2) NOT NULL,
  `parent_menu_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NavigationSubMenu`
--

INSERT INTO `NavigationSubMenu` (`id`, `sub_menu`, `status`, `parent_menu_id`) VALUES
(1, 'Sofas', '0', 8),
(2, 'Recliner Sofas', '1', 8),
(3, 'Dining tables', '1', 9),
(4, 'Dining Chairs', '1', 9),
(5, 'Dining Sets', '1', 9),
(6, 'wardrobes', '1', 10),
(7, 'chest of draws', '1', 10),
(8, 'Bedside Cabinets', '1', 10),
(9, 'Bedsteads', '0', 11),
(10, 'Ottoman beds', '1', 11),
(11, 'Clearance', '1', 12),
(12, 'Coffee tables', '1', 13),
(13, 'Lamp table', '1', 13),
(14, 'Console table', '1', 13),
(15, 'Lamps & Clocks', '1', 13),
(16, 'Headboards', '1', 11),
(17, 'Mattress', '1', 11);

-- --------------------------------------------------------

--
-- Table structure for table `OrderStatus`
--

CREATE TABLE `OrderStatus` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `deliverd_date` datetime(6) NOT NULL,
  `orderid_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ProductOption`
--

CREATE TABLE `ProductOption` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `options` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ProductOption_sub_category`
--

CREATE TABLE `ProductOption_sub_category` (
  `id` int(11) NOT NULL,
  `productoption_id` int(11) NOT NULL,
  `navigationsubmenu_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` double NOT NULL,
  `size` varchar(50) NOT NULL,
  `sku` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `display_in_navbar` tinyint(1) NOT NULL,
  `active_feature` varchar(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `discoun_price` double NOT NULL,
  `has_discount` tinyint(1) NOT NULL,
  `display_in_home` tinyint(1) NOT NULL,
  `other_options` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `size`, `sku`, `description`, `category_id`, `sub_category_id`, `display_in_navbar`, `active_feature`, `product_image`, `discoun_price`, `has_discount`, `display_in_home`, `other_options`) VALUES
(1, 'Chicago Collection', 1299, '252 x 200 x 95', 'Chi-Cor-Pew', '<p>The Chicago Combines simple curved lines with a compact scroll arm design and comes in scatter or high back to maximize comfort. The extensive combination allows this design to fit into most interior styles.&nbsp;</p><p>UK Manufactured</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><div><br></div>', 8, 1, 0, 'New', 'uploads/Chicago-Corner.jpg', 0, 0, 1, '{}'),
(3, 'Royal Due Collection', 1099, '277 x 90 x 94', 'Roy - Due - 4', '<div class=\"pr_short_des\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\"><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">If you are wanting to transform your living space into somewhere extra unique then the Royal due collection is the sofa to do that.&nbsp;&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">UK Manufactured&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><b style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frame</b>&nbsp;- Constructed from solid birch wood</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><b style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Seat Cushions</b>&nbsp;- All Seat cushions are constructed from foam with 300g high-loft fibre wrap for maximum comfort and support&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><b style=\"font-weight: bold; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care instructions</b>&nbsp;- Dry clean only&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></p></div><div class=\"btn-atc atc-slide btn_des_1 btn_txt_3\" style=\"margin: 0px 0px 20px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\"><div id=\"callBackVariant_ppr\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><div class=\"nt_cart_form variations_form variations_form_ppr\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><div class=\"variations_button in_flex column w__100 buy_qv_false\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; width: auto; display: inline-flex; -webkit-box-orient: vertical; flex-direction: column; min-width: 160px; max-width: 100%;\"><div class=\"flex wrap\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row nowrap;\"></div></div></div></div></div>', 8, 1, 0, 'New', 'uploads/Royal-Due-4-Seater-1920w.jpg', 0, 0, 1, '{}'),
(4, 'Darwin Collection', 949, '265 x 94 x 94', 'Dar - 4 - Gre', '<p>This Darwin collection is modern with a twist. The tartan and stag scatter gives it a rustic look while still keeping it modern with a combination of fabrics.&nbsp;</p><p>UK Manufactured</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">Care Instructions -</span>&nbsp;Dry Clean Only.<br></p><div><br></div>', 8, 1, 0, 'New', 'uploads/DarwinGrey-4743013b-1920w.jpg', 0, 0, 1, '{}'),
(5, 'Chelsea Collection', 1299, '200 x 233 x 94', '1', '<p>This stunning Chelsea range will make a statement in any room with it\'s vibrant plush colour collection. This sofa has a quilted arm design keeping it simple but with attention to detail.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p>', 8, 1, 0, 'New', 'uploads/Chelsea-Chaise---Plush-1920w.jpg', 0, 0, 1, '{}'),
(6, 'Monaco Antique Pine', 269, '4ft6', '0', 'No Description', 11, 9, 0, 'New', 'uploads/MONACO-46-HIGH-END-BED-ANTIQUE-PINE-2020-09-200-203-028-876x580.jpg', 0, 0, 1, '{}'),
(7, 'Monaco Antique Pine', 219, '3ft', '0', 'No Description', 11, 9, 0, 'New', 'uploads/MONACO-3-HIGH-END-BED-ANTIQUE-PINE-2020-200-201-017-01-400x302.jpg', 0, 0, 1, '{}'),
(8, 'Monaco White', 219, '3ft', '0', 'No Description', 11, 9, 0, 'New', 'uploads/MONACO-3-HIGH-END-BED-WHITE-2020-200-201-019-01-400x292.jpg', 0, 0, 1, '{}'),
(9, 'Buckingham Collection', 1799, '215 x 284 x 95', '0', '<p>This Buckingham collection comes in a range of soft suede colours with a choice of standard or scatter back to create a modern finish. Complete with a twist of classic with castors.&nbsp;</p><p>UK Manufactured&nbsp;&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><br style=\"color: rgb(135, 135, 135); font-family: Poppins, sans-serif; font-size: 14px;\"></div>', 8, 1, 0, 'New', 'uploads/Buckingham-2c1-SB-1920w.png', 0, 0, 1, '{}'),
(10, 'Verona Collection', 1299, '244 x 230 x 94', '0', '<p>The Verona combines simple lines for detail with a spacious design to maximize comfort.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><br style=\"color: rgb(135, 135, 135); font-family: Poppins, sans-serif; font-size: 14px;\"></div>', 8, 1, 0, 'New', 'uploads/verona_room-1200w.jpg', 0, 0, 1, '{}'),
(11, 'Arnage Collection', 1049, '265 x 94 x 94', '0', '<p>The Arnage is practical , modern and stylish , with splayed arms and deep seats maximizing comfort to relax and lounge.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/9_1_1.jpg', 0, 0, 1, '{}'),
(12, 'Vista 3 + 2 Black', 1699, '156cm x 99cm x 235', '0', 'This Vista is a modern shape with three plush pillow backs , padded arms and headrest. Combined with a neat trimming to finish the perfect look.&nbsp;', 8, 2, 0, 'New', 'uploads/black_vista_2_3_seat_reclined-1600.jpg', 0, 0, 1, '{}'),
(13, 'Ashford Collection', 1599, '90x170x94 - 90x207x94', '0', '<p>The Ashford range comes with style to suit all interior designs with the studded arms and base giving it simple but bold features.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/ashford.jpg', 0, 0, 1, '{}'),
(14, 'Boston Collection', 1449, '97x288x213', '0', '<p>This Boston sofa has a chunky design with a combination of fabrics making it unique in style to finish any interior design with its choice of colours and standard or scatter back finish.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/boston_2_corner_1.jpg', 0, 0, 1, '{}'),
(115, 'test', 500, 'Small', 'as888', 'No Description', 9, 3, 1, 'New', 'uploads/main-qimg-38f8b1bfbde961abea72a489b67ac20a-lq.jpeg', 0, 0, 1, '[]'),
(116, 'test 2', 200, 'small', '7yy', 'No Description', 9, 3, 1, 'New', 'uploads/nathan-fertig-FBXuXp57eM0-unsplash_rKWRKLZ.jpg', 0, 0, 1, '[]'),
(16, 'Cambridge Collection', 1995, '94x290x290', '0', '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">This Cambridge collection comes in a range of colours with a choice of scatter colours. Stylish and modern to match with any decor with small detail pattern on the arms creating a very modern look.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/IMG_3129.jpg', 0, 0, 1, '{}'),
(17, 'Zinc Collection', 699, '100x190x92', '0', '<p>This Zinc Collection would make a bold statement in any home with a choice of plush colours.&nbsp;</p><p>UK Manufactured&nbsp;</p><p><b>Frame</b> - Constructed from solid birch wood</p><p><b>Seat Cushions</b> - All Seat cushions are constructed from foam with 300g high-loft fibre wrap for maximum comfort and support&nbsp;</p><p><b>Care instructions</b> - Dry clean only&nbsp;</p>', 8, 1, 0, 'New', 'uploads/Zinc-Malia-Green-1920w.jpg', 0, 0, 1, '{}'),
(18, 'Mayfair Collection', 1049, '94x265x94', '0', '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">This collection is practical ,modern and stylish. With Spacious seats creating comfort to lounge.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/IMG_3139.jpg', 0, 0, 1, '{}'),
(19, 'Albany Collection', 599, '94x203x94', '0', '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">This Albany collection is a simple design that will suit most interior designs. Incorporating arm piping and low wide feet the overall sofa appears more compact.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/albany.jpg', 0, 0, 1, '{}'),
(20, 'Sophie Collection', 699, '91x210x95', '0', '<p>A classic style sofa with a durable woven fabric. The Sophie combines its style with alternative scatter cushions to give the classic style a modern twist.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/Sophie-2s-Hopsack-Pewter-room-1920w_5dO4257.png', 0, 0, 1, '{}'),
(21, 'Roma Collection', 699, '90x166x90', '0', '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">This Roma is a very modern compact design with extra side cushions for more comfort and support. The arm piping gives it a unique look to finish off the design. This will suit most interior designs with its range of colours.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/RomaRoomSet-min-1920w_hwqA22R.jpg', 0, 0, 1, '{}'),
(22, 'Morano', 549, '120cmx70cmx75cm', 'mor-blk', '<p>Metal Frame dining table with tempered glass top &amp; 4 chairs&nbsp;</p><p><b>Colour Option</b>&nbsp;- Black , White &amp; Grey&nbsp;</p>', 9, 5, 0, 'New', 'uploads/Morano-Black-600x450.jpg', 0, 0, 1, '{}'),
(23, 'Milan Coffee table', 369, '120x60x45cm', '0', 'No Description', 13, 12, 0, 'New', 'uploads/milan_coffee_table.jpg', 0, 0, 1, '{}'),
(24, 'Tenerife', 219, '55x55x55cm', '0', 'No Description', 13, 13, 0, 'New', 'uploads/tenerife_lamp_table.jpg', 0, 0, 1, '{}'),
(25, 'Hilton Collection', 599, '98x210x93cm', '0', '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">This Hilton collection is a slim design with the options of patterned scatter cushions in a range of colours to add a pop of colour and style.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/hilton_3str.jpg', 0, 0, 1, '{}'),
(26, 'Newton Collection', 499, '85x182x90', '0', '<p>The Newton is a simplistically designed sofa that will suit almost any decor. Incorporating arm piping and low wide feet the sofa overall is more compact than that of traditional styles.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/newton_alternative_copy-1200w.jpg', 0, 0, 1, '{}'),
(27, 'Tenerife', 369, '110x60x45', '0', 'No Description', 13, 12, 0, 'New', 'uploads/tenerife_coffee_table.jpg', 0, 0, 1, '{}'),
(28, 'Tenerife', 269, '110x40x76', '0', 'No Description', 13, 14, 0, 'New', 'uploads/tenerife_console.jpg', 0, 0, 1, '{}'),
(29, 'Lucy', 249, '120x60x50', '0', '<p>2+1 Coffee table with X2 side tables&nbsp;</p><p>Side table - 42.5 x 42 x 42 cm&nbsp;</p>', 13, 13, 0, 'New', 'uploads/LUCY2_1GREY_2_159x202.jpg', 0, 0, 1, '{}'),
(30, 'Lucy Collection', 599, '94x182x94', '0', '<p>The Lucy is a compact design giving comfort and support. This range is a classic design with cleans lines with featured quilted arms for a simple look.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p><div style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><br style=\"color: rgb(135, 135, 135); font-family: Poppins, sans-serif; font-size: 14px;\"></div>', 8, 1, 0, 'New', 'uploads/image0_3.jpeg', 0, 0, 1, '{}');
INSERT INTO `products` (`id`, `name`, `price`, `size`, `sku`, `description`, `category_id`, `sub_category_id`, `display_in_navbar`, `active_feature`, `product_image`, `discoun_price`, `has_discount`, `display_in_home`, `other_options`) VALUES
(31, 'Linzi Collection', 539, '94x182x94', '0', '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">The Linzi is a compact design giving comfort and support. This range is a classic design with cleans lines with featured quilted arms for a simple look. Comes in a range of suede fabrics to give it a unique look.&nbsp;<br></p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/image0_4.jpeg', 0, 0, 1, '{}'),
(32, 'Kai Collection', 799, '69x226x90', '0', '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">This Kai collection is a classic shape in a range of colours to give it a modern twist. This range would make a statement in any living room with is compact design.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/kai_3_seater_-_tortona_cream-1200w.png', 0, 0, 1, '{}'),
(33, 'Regis Collection', 949, '90x246x94', '0', '<p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">This Regis collection comes in a range of high quality fabrics , and has a modern twist with the studded arms.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Poppins, sans-serif; vertical-align: baseline; color: rgb(135, 135, 135);\">UK Manufactured</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Frames -</span>&nbsp;Constructed from solid birch wood. Selected MDF boards used for footstool construction. All joints glued and stapled for extra strength.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">Seat Cushions -</span>&nbsp;All seat cushions are constructed from foam with a 300g high-loft fibre wrap for maximum comfort and support. Seat cushions are reversible.</p><p style=\"margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: montserrat, sans-serif; vertical-align: baseline; color: rgb(109, 109, 109);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Care Instructions -</span>&nbsp;Dry Clean Only.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></p>', 8, 1, 0, 'New', 'uploads/image0_5.jpeg', 0, 0, 1, '{}'),
(34, 'Rumy', 169, '60x42x52', '0', '<p>Rectangular nest of 3 tables , with sturdy metal legs perfect universal set for lamp , side table or telephone table use.&nbsp;</p><p>Large table - 60x40x52cm</p><p>Medium Table - 47x36x43cm</p><p>Small Table - 34x34x34cm&nbsp;</p>', 13, 13, 0, 'New', 'uploads/RUMYGREYNT_1024x1024.jpg', 0, 0, 1, '{}'),
(35, 'Newton Sofa Bed', 899, '94x166x97', '0', 'No Description', 12, 11, 0, 'Clearance', 'uploads/IMG_3165.jpg', 549, 1, 1, '{}'),
(36, 'Lisbon 2 door wardrobe', 279, '815 x 535 x 1870mm', '100-101-054', '<p>Available in Light oak veneer &amp; Black wood grain&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 6, 0, 'New', 'uploads/LISBON-2-DOOR-WARDROBE-LIGHT-OAK-EFFECT-VENEER-2020-100-101-054-01-187x400.jpg', 0, 0, 1, '{}'),
(37, 'Lisbon 2 drawer 1 shelf bedside', 69, '400 x 400 x 610mm', '100-103-033', '<p>Light oak effect veneer&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 8, 0, 'New', 'uploads/LISBON-2-DRAWER-BEDSIDE-LIGHT-OAK-EFFECT-VENEER-2020-100-103-033-01-305x400.jpg', 0, 0, 1, '{}'),
(38, 'Lisbon 2 piece dressing table', 169, '410 x 300 x 425', '100-107-012', '<p>Light oak veneer/faux leather stool&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 7, 0, 'New', 'uploads/LISBON-2PC-DRESSING-TABLE-SET-LIGHT-OAK-EFFECTBLACK-PU-2020-100-107-012-01-400x359.jpg', 0, 0, 1, '{}'),
(39, 'Lisbon 3 door wardrobe', 369, '1200 x 535 x 1870mm', '100-101-055', '<p>Available in Light Oak veneer &amp; Black wood grain&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 6, 0, 'New', 'uploads/LISBON-3-DOOR-WARDROBE-LIGHT-OAK-EFFECT-VENEER-2020-100-101-055-01-261x400.jpg', 0, 0, 1, '{}'),
(40, 'Vegas', 749, '120x80x76 (cm)', '0', 'No Description', 9, 5, 0, 'New', 'uploads/vegas_dining_set.jpg', 0, 0, 1, '{}'),
(41, 'Vegas coffee table', 275, '110x60x45', '0', 'No Description', 13, 12, 0, 'New', 'uploads/vegas_coffee_table.jpg', 0, 0, 1, '{}'),
(42, 'Double O lamp', 169, '33cmx31cm', '0', 'No Description', 13, 15, 0, 'New', 'uploads/DOUBLE_O.jpg', 0, 0, 1, '{}'),
(43, 'Moon Lamp', 189, '26x35', '0', 'No Description', 13, 16, 0, 'New', 'uploads/moon_lamp.webp', 0, 0, 1, '{}'),
(44, 'Chesterfield 3+2', 1599, '156 x 99 x 94 / 206 x 99 x 94', '0', '<p><span style=\"font-family: Arial;\">The Chesterfield sofa is made to a traditional design and with firm back and removable seat cushions. This range is complete with a high quality finish , the neat buttoned arms complete this stylish sofa.&nbsp;</span></p><p><font face=\"Arial\">This sofa is manufactured&nbsp;using Technology fabric.&nbsp;</font><br><br></p>', 8, 1, 0, 'New', 'uploads/CHESTERFIELDBROWN23SEAT-1600.jpg', 0, 0, 1, '{}'),
(45, 'Verona Collection', 1995, '175 x 98 x 100 / 210 x 98 x 100', '0', '<p>This Verona Sofa features soft comfy padded backs and arms. This reclining sofa features a black trim and patterned padded cushion backs.&nbsp;</p><p>This sofa has been manufactured using leatherair.&nbsp;</p><p> &nbsp;</p>', 8, 2, 0, 'New', 'uploads/VERONA23SEAT-.jpg', 0, 0, 1, '{}'),
(46, 'Tuscany Collection', 1649, '147 x 104 x 97 / 200 x 104  x 97', '0', '<p>This Tuscany sofa has a modern shape with its plush pillow backs , padded arms and headrests. The combined contrast stitching creates a subtle designer look.&nbsp;</p><p>This sofa has been manufactured using technology fabric.&nbsp;&nbsp;</p>', 8, 2, 0, 'New', 'uploads/tuscany23seat.jpg', 0, 0, 1, '{}'),
(47, 'Jennifer Collection', 1899, '3 seater/ 2 seater /chair', '0', '<p><font face=\"Arial\">The Jennifer collection is a luxurious suede effect leather with contrasting piping and stitching. Perfect addition for comfort and style to any living room.&nbsp;&nbsp;</font><br></p>', 8, 2, 0, 'New', 'uploads/JENNIFERlesspix_1024x1024.jpg', 0, 0, 1, '{}'),
(48, 'Edward', 499, 'Single 3ft', '0', '£120 extra for ottoman storage.&nbsp;', 11, 9, 0, 'New', 'uploads/AE8DD145-293D-4DB0-8B55-94C0C9499F44.jpeg', 0, 0, 1, '{}'),
(49, 'Hamilton', 399, 'Single 3ft', '0', 'No Description', 11, 9, 0, 'New', 'uploads/BE5D7CE6-4705-40F1-9C60-1C1333EB8F0F.jpeg', 0, 0, 1, '{}'),
(50, 'Royal Mirror', 749, '4ft/4ft6', '0', 'This Royal mirror bed is available in a selection of colours. It gives a very modern and stylish finish to any bedroom with its buttoned headboard and foot board , it also has a crushed diamond border to complete the look.&nbsp;', 11, 9, 0, 'New', 'uploads/2FD87B20-B816-4921-8CA1-7808B2327D66.jpeg', 0, 0, 1, '{}'),
(51, 'Leon', 399, 'Single 3ft', '0', 'No Description', 11, 9, 0, 'New', 'uploads/191E2E19-6F09-4B57-A562-63BDA553EB11.jpeg', 0, 0, 1, '{}'),
(52, 'Victoria', 699, '4ft/4ft6', '0', 'No Description', 11, 9, 0, 'New', 'uploads/1E44757F-6A28-40FE-B819-4B68CA86EE36.jpeg', 0, 0, 1, '{}'),
(53, 'Olympia', 799, '4ft/4ft6', '0', 'No Description', 11, 9, 0, 'New', 'uploads/C0CA2786-A4CD-41FE-BCB3-5B63FB16C274.jpeg', 0, 0, 1, '{}'),
(54, 'Wilson', 160, 'Single 3ft', '0', 'No Description', 11, 9, 0, 'New', 'uploads/A46BEBA0-A010-4822-88E8-CED3863F1B02.jpeg', 0, 0, 1, '{}'),
(55, 'Paris', 499, 'Single 3ft', '0', 'No Description', 11, 9, 0, 'New', 'uploads/725740E6-F158-4F61-A36C-BD3AC4235E7A.jpeg', 0, 0, 1, '{}'),
(56, 'Jubilee', 499, 'Single 3ft', '0', 'No Description', 11, 9, 0, 'New', 'uploads/60B5AF71-7692-4EC0-9662-F8366A966152.jpeg', 0, 0, 1, '{}'),
(57, 'Art Deco', 369, 'Single 3ft', '0', 'No Description', 11, 10, 0, 'New', 'uploads/760444E8-85E4-489B-9794-35A905D5BF8C.jpeg', 0, 0, 1, '{}'),
(58, 'Xx', 0, 'Single 3ft', '0', 'No Description', 11, 17, 0, 'New', 'uploads/E2BDA469-5BC9-4A20-A0EB-10EE3B4D6C93.jpeg', 0, 0, 1, '{}'),
(59, 'Xx', 0, 'Single 3ft', '0', 'No Description', 11, 17, 0, 'New', 'uploads/E5F23A0B-369D-4D10-AF1D-1E3B0707B713.jpeg', 0, 0, 1, '{}'),
(60, 'Xx', 0, 'Single 3ft', '0', 'No Description', 11, 17, 0, 'New', 'uploads/EBD87834-6418-483B-9D32-2CABC5FA9BF5.jpeg', 0, 0, 1, '{}'),
(61, 'Xx', 0, 'Single 3ft', '0', 'No Description', 11, 17, 0, 'New', 'uploads/F98EDB86-C0A2-443B-94D5-78DB81B366B1.jpeg', 0, 0, 1, '{}'),
(62, 'Xx', 0, 'Single 3ft', '0', 'No Description', 11, 17, 0, 'New', 'uploads/E634EE31-32DB-43F2-B2BE-5FA468C978AF.jpeg', 0, 0, 1, '{}'),
(63, 'Urban', 1799, '160x90', '0', 'This Urban corner comes in a soft suede fabric in a choice of 3 colours. Perfect for any room , shape &amp; size. This modular sofa can be built to any size you need.&nbsp;', 8, 2, 0, 'New', 'uploads/D7A55BCD-2291-40C3-B669-11A01DAC4920.jpeg', 0, 0, 1, '{}'),
(64, 'Dinning set', 1149, '180x100x76', '0', 'Oval wood dining table &amp; 6 black leather chairs&nbsp;', 12, 11, 0, 'New', 'uploads/3151927A-44E3-4187-B8E8-873431C3920B.jpeg', 649, 1, 1, '{}'),
(65, 'Lewis', 599, '130cm', '0', '<p>This stunning Lewis dinning table is made from marble. Perfect size for small areas while still looking stylish and modern.</p><p>CHAIRS SOLD SEPARATELY&nbsp;</p>', 9, 3, 0, 'New', 'uploads/2EC62D09-4425-46BD-A647-3FD31F03E1CF.jpeg', 0, 0, 1, '{}'),
(66, 'Milan Dining Chair', 95, '43 x 59 x 98.5', '0', 'No Description', 9, 4, 0, 'New', 'uploads/Milan_dining_chair_grey.jpg', 0, 0, 1, '{}'),
(67, 'New York Dining Chair', 95, '44 x 54.5 x 99', '0', 'No Description', 9, 4, 0, 'New', 'uploads/nyc_grey.jpg', 0, 0, 1, '{}'),
(68, 'Milan Dining Set', 995, '140/180 x 80 x 76', '0', 'No Description', 9, 5, 0, 'New', 'uploads/milan_dining_table_grey.jpg', 0, 0, 1, '{}'),
(69, 'Majestic', 229, '130x39x52', '0', 'This Majestic dining bench comes in a range of plush fabrics. This bench is very stylish with the chrome legs , quilted and button details.', 9, 4, 0, 'New', 'uploads/B910-5-scaled-2-600x450.jpg', 0, 0, 1, '{}'),
(70, 'Hilton 3+2', 1299, '1', '0', 'This Hilton 3&amp;2 comes in range of high quality and durable fabrics. The seats are well filled with foam cushions wrapped with fibre to give comfort and support and prolong the life of the cushions and shape.&nbsp;', 8, 1, 0, 'New', 'uploads/hilton_32_asphalt_plush.jpg', 0, 0, 1, '{}'),
(71, 'Rimini', 239, 'Single 3ft', '0', '<ul><li>Luxury high loft micro-quilted stretch cover with moisture management.&nbsp;</li><li>Eco-friendly cover made from raw materials and designed for irritation free against sensitive skin&nbsp;</li><li>Bonnell fully sprung mattress is side reinforced to prevent edge breakdown &amp; widen your total sleeping area , included upholstery layers of premium foam for added comfort and performance.</li><li>Sleep both sides to extend mattress life - Please turn regularly&nbsp;</li></ul>', 11, 18, 0, 'New', 'uploads/rimini.jpg', 0, 0, 1, '{}'),
(72, 'Verona', 119, 'Single 3ft', '0', '<ul><li>Deep quilted damask cover&nbsp;</li><li>Upholstery layers combine with bonnell fully sprung mattress to ensure a soft surface comfort &amp; underlying support&nbsp;</li><li>Spring unit reinforced to prevent side breakdown and widen sleep area.&nbsp;</li><li>Sleep both sides to extend mattress life - please turn regularly&nbsp;</li></ul>', 11, 18, 0, 'New', 'uploads/verona-ortho.jpg', 0, 0, 1, '{}'),
(73, 'Vienna', 399, 'Single 3ft', '0', '<ul><li>Micro-quilted mattress with tencel knitted stretch cover providing breathability and healthy sleep&nbsp;</li><li>Non-turn mattress - Rotate 180 degrees&nbsp;</li><li>Memory foam with moulds to the sleepers body to improve pressure relief and reduce aces and pains for a perfect nights sleep&nbsp;&nbsp;</li></ul>', 11, 18, 0, 'New', 'uploads/vienna-memory.jpg', 0, 0, 1, '{}'),
(74, 'Vista 3 + 2 Brown', 1699, '99x156x206', '0', '<span style=\"color: rgb(135, 135, 135); font-family: Poppins, sans-serif; font-size: 14px;\">This Vista is a modern shape with three plush pillow backs , padded arms and headrest. Combined with a neat trimming to finish the perfect look.&nbsp;</span>', 8, 2, 0, 'New', 'uploads/brown_vista_2_3_reclined-1600_ibOuvJM.jpg', 0, 0, 1, '{}'),
(75, 'Lisbon 3 drawer chest', 139, '805x400x720', '100-102-064', '<p>Available in Light Oak Veneer &amp; Black wood grain&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 7, 0, 'New', 'uploads/LISBON-3-DRAWER-CHEST-LIGHT-OAK-EFFECT-VENEER-2020-100-102-064-01-400x370.jpg', 0, 0, 1, '{}'),
(76, 'Madrid', 299, '780x520x1825', '100-101-079', '2 door 1 draw wardrobe&nbsp;', 10, 6, 0, 'New', 'uploads/NEVADA-2-DOOR-1-DRAWER-WARDROBE-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-10_vHc9CT1.jpg', 0, 0, 1, '{}'),
(77, 'Madrid', 79, '400x400x610', '100-103-062', '<p>3 Draw bedside&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 8, 0, 'New', 'uploads/NEVADA-3-DRAWER-BEDSIDE-3D-EFFECT-GREY-2021-100-103-080-3-309x400.jpg', 0, 0, 1, '{}'),
(78, 'Madrid', 129, '810x400x705', '100-102-091', '<p>3 Drawer chest&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 7, 0, 'New', 'uploads/NEVADA-3-DRAWER-CHEST-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102-091-400x351.jpg', 0, 0, 1, '{}'),
(79, 'Madrid', 159, '810x460x1155', '100-102-149', '<p>3+2 Drawer Chest&nbsp;</p><p>Flat pack - Self assembly required</p>', 10, 7, 0, 'New', 'uploads/NEVADA-32-DRAWER-CHEST-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102-089-298x400.jpg', 0, 0, 1, '{}'),
(80, 'Madrid', 179, '400x350x420', '100-105-015', '<p>4 Drawer dressing set&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 7, 0, 'New', 'uploads/NEVADA-DRESSING-TABLE-SET-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-105-016-347x400.jpg', 0, 0, 1, '{}'),
(81, 'Madrid', 119, '500x400x930', '100x102x148', '<p>5 Drawer narrow chest&nbsp;</p><p>Flat pack - Self assembly required&nbsp;</p>', 10, 7, 0, 'New', 'uploads/NEVADA-5-DRAWER-NARROW-CHEST-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102-0_9Hi50rn.jpg', 0, 0, 1, '{}'),
(82, 'Amy 3+2 set', 899, '210x95x95', '0', '<p><span style=\"color: rgb(21, 23, 30); font-family: Arial; font-size: 14px; letter-spacing: 1px;\">Traditional furniture set with comfortable seating. Exceptional quality and elegant armrests.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: Arial; vertical-align: baseline;\">3 seater:&nbsp;</span><span style=\"font-family: Arial;\">width: 210cm, height: 95cm, depth: 95cm</span></p><p class=\"western\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: Arial; vertical-align: baseline;\">2 seater:&nbsp;</span><span style=\"font-family: Arial;\">width: 170cm, height: 95cm, depth: 95cm</span></p>', 8, 1, 0, 'New', 'uploads/amy-32-blackgrey.jpg', 0, 0, 1, '{}'),
(83, 'Amy 3+2 Faux Leather', 899, '210x95x95', '0', '<p><span style=\"color: rgb(67, 67, 67); font-family: Arial;\">Traditional furniture set with comfortable seating. Exceptional quality and elegant armrests. subtle, classic style. Made of the highest quality materials.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">3 seater:&nbsp;</span>width: 210cm, height: 95cm, depth: 95cm</p><p class=\"western\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">2 seater:&nbsp;</span>width: 170cm, height: 95cm, depth: 95cm</p>', 8, 1, 0, 'New', 'uploads/AMY-32-BLACK-AMY320201.jpg', 0, 0, 1, '{}'),
(84, 'Amy corner 2C2', 899, 'L249xW249xH90xD94', '0', '<span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">Classic corner sofa made of the best materials, very comfortable.Subtle and classy</span>', 8, 1, 0, 'New', 'uploads/amy_corner_sofa_brown_3-600x450.jpg', 0, 0, 1, '{}'),
(85, 'Amy Faux Leather corner 2C2', 899, 'L249xW249xH90xD94', '0', '<span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">Traditional corner sofa with providing comfort. Great quality and well-design armrests. Subtle, fashionable design. Made of the best materials.</span>', 8, 1, 0, 'New', 'uploads/amy_2cr2_brown_pu_cov.jpg', 0, 0, 1, '{}'),
(86, 'Alan 3+2 set', 749, '175x78x92', '0', '<span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">The Alan range offers an unbeatable combination of style and value,&nbsp;covered with a combination of soft luxury jumbo cord fabric.&nbsp;</span>', 8, 1, 0, 'New', 'uploads/ALAN-32-BROWNBROWN-ALA322525.jpg', 0, 0, 1, '{}');
INSERT INTO `products` (`id`, `name`, `price`, `size`, `sku`, `description`, `category_id`, `sub_category_id`, `display_in_navbar`, `active_feature`, `product_image`, `discoun_price`, `has_discount`, `display_in_home`, `other_options`) VALUES
(87, 'Astor 3+2 set', 1149, '224x72x90', '3+2', '<div class=\"woocommerce-product-details__short-description\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Astor Chesterfield sofa range features vintage looking, nail-head trim, buttoned front arms and back seat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Faux Suede&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">3 seater:&nbsp;</span>width: 224cm, height: 72cm, depth: 90cm</p><p class=\"western\" style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">2 seater:&nbsp;</span>width: 194cm, height: 72cm, depth: 90cm</p></div><form class=\"variations_form cart\" action=\"https://pffurniture.co.uk/product/astor-32-sofa-set/\" method=\"post\" enctype=\"multipart/form-data\" data-product_id=\"2833\" data-product_variations=\"[{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;2-seater&quot;,&quot;attribute_pa_color&quot;:&quot;brown&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:519,&quot;display_regular_price&quot;:519,&quot;image&quot;:{&quot;title&quot;:&quot;Astor2&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2.jpg&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-600x400.jpg&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-600x400.jpg 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-300x200.jpg 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-768x512.jpg 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-1200x800.jpg 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-219x146.jpg 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-50x33.jpg 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-113x75.jpg 113w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2.jpg 1600w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2.jpg&quot;,&quot;full_src_w&quot;:1600,&quot;full_src_h&quot;:1066,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-100x100.jpg&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor2-300x188.jpg&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2844&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>519.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2834,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;},{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;2-seater&quot;,&quot;attribute_pa_color&quot;:&quot;grey&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:519,&quot;display_regular_price&quot;:519,&quot;image&quot;:{&quot;title&quot;:&quot;2&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2.png&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-600x400.png&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-600x400.png 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-300x200.png 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-768x512.png 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-1200x800.png 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-219x146.png 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-50x33.png 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-113x75.png 113w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2.png&quot;,&quot;full_src_w&quot;:2400,&quot;full_src_h&quot;:1600,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-100x100.png&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/2-300x188.png&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2846&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>519.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2835,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;},{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;3-seater&quot;,&quot;attribute_pa_color&quot;:&quot;brown&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:539,&quot;display_regular_price&quot;:539,&quot;image&quot;:{&quot;title&quot;:&quot;Astor3&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3.jpg&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-600x400.jpg&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-600x400.jpg 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-300x200.jpg 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-768x512.jpg 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-1200x800.jpg 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-219x146.jpg 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-50x33.jpg 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-113x75.jpg 113w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3.jpg 1600w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3.jpg&quot;,&quot;full_src_w&quot;:1600,&quot;full_src_h&quot;:1066,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-100x100.jpg&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor3-300x188.jpg&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2847&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>539.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2836,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;},{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;3-seater&quot;,&quot;attribute_pa_color&quot;:&quot;grey&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:539,&quot;display_regular_price&quot;:539,&quot;image&quot;:{&quot;title&quot;:&quot;3&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3.png&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-600x400.png&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-600x400.png 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-300x200.png 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-768x512.png 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-1200x800.png 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-219x146.png 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-50x33.png 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-113x75.png 113w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3.png&quot;,&quot;full_src_w&quot;:2400,&quot;full_src_h&quot;:1600,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-100x100.png&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/3-300x188.png&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2848&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>539.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2837,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;},{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;32-set&quot;,&quot;attribute_pa_color&quot;:&quot;brown&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:919,&quot;display_regular_price&quot;:919,&quot;image&quot;:{&quot;title&quot;:&quot;Astor-3+2&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32.jpg&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-600x400.jpg&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-600x400.jpg 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-300x200.jpg 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-768x512.jpg 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-1200x800.jpg 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-219x146.jpg 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-50x33.jpg 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-113x75.jpg 113w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32.jpg 1600w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32.jpg&quot;,&quot;full_src_w&quot;:1600,&quot;full_src_h&quot;:1066,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-100x100.jpg&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-32-300x188.jpg&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2849&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>919.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2838,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;},{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;32-set&quot;,&quot;attribute_pa_color&quot;:&quot;grey&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:919,&quot;display_regular_price&quot;:919,&quot;image&quot;:{&quot;title&quot;:&quot;3+2&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32.png&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-600x400.png&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-600x400.png 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-300x200.png 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-768x512.png 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-1200x800.png 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-219x146.png 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-50x33.png 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-113x75.png 113w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32.png&quot;,&quot;full_src_w&quot;:2400,&quot;full_src_h&quot;:1600,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-100x100.png&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/32-300x188.png&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2850&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>919.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2839,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;},{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;armchair&quot;,&quot;attribute_pa_color&quot;:&quot;brown&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:369,&quot;display_regular_price&quot;:369,&quot;image&quot;:{&quot;title&quot;:&quot;Astor-1&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2.jpg&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-600x400.jpg&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-600x400.jpg 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-300x200.jpg 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-768x512.jpg 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-1200x800.jpg 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-219x146.jpg 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-50x33.jpg 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-113x75.jpg 113w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2.jpg 1600w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2.jpg&quot;,&quot;full_src_w&quot;:1600,&quot;full_src_h&quot;:1066,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-100x100.jpg&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-1-2-300x188.jpg&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2851&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>369.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2840,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;},{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;armchair&quot;,&quot;attribute_pa_color&quot;:&quot;grey&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:369,&quot;display_regular_price&quot;:369,&quot;image&quot;:{&quot;title&quot;:&quot;armchair&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1.png&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-600x400.png&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-600x400.png 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-300x200.png 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-768x512.png 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-1200x800.png 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-219x146.png 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-50x33.png 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-113x75.png 113w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1.png&quot;,&quot;full_src_w&quot;:2400,&quot;full_src_h&quot;:1600,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-100x100.png&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/armchair-1-300x188.png&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2852&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>369.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2841,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;},{&quot;attributes&quot;:{&quot;attribute_pa_size&quot;:&quot;swivel-chair&quot;,&quot;attribute_pa_color&quot;:&quot;brown&quot;},&quot;availability_html&quot;:&quot;&quot;,&quot;backorders_allowed&quot;:false,&quot;dimensions&quot;:{&quot;length&quot;:&quot;&quot;,&quot;width&quot;:&quot;&quot;,&quot;height&quot;:&quot;&quot;},&quot;dimensions_html&quot;:&quot;N\\/A&quot;,&quot;display_price&quot;:369,&quot;display_regular_price&quot;:369,&quot;image&quot;:{&quot;title&quot;:&quot;Astor swivel chair&quot;,&quot;caption&quot;:&quot;&quot;,&quot;url&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair.jpg&quot;,&quot;alt&quot;:&quot;&quot;,&quot;src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-600x400.jpg&quot;,&quot;srcset&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-600x400.jpg 600w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-300x200.jpg 300w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-768x512.jpg 768w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-1200x800.jpg 1200w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-219x146.jpg 219w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-50x33.jpg 50w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-113x75.jpg 113w, https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair.jpg 1600w&quot;,&quot;sizes&quot;:&quot;(max-width: 600px) 100vw, 600px&quot;,&quot;full_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair.jpg&quot;,&quot;full_src_w&quot;:1600,&quot;full_src_h&quot;:1066,&quot;gallery_thumbnail_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-100x100.jpg&quot;,&quot;gallery_thumbnail_src_w&quot;:100,&quot;gallery_thumbnail_src_h&quot;:100,&quot;thumb_src&quot;:&quot;https:\\/\\/pffurniture.co.uk\\/wp-content\\/uploads\\/2021\\/04\\/Astor-swivel-chair-300x188.jpg&quot;,&quot;thumb_src_w&quot;:300,&quot;thumb_src_h&quot;:188,&quot;src_w&quot;:600,&quot;src_h&quot;:400},&quot;image_id&quot;:&quot;2853&quot;,&quot;is_downloadable&quot;:false,&quot;is_in_stock&quot;:true,&quot;is_purchasable&quot;:true,&quot;is_sold_individually&quot;:&quot;no&quot;,&quot;is_virtual&quot;:false,&quot;max_qty&quot;:&quot;&quot;,&quot;min_qty&quot;:1,&quot;price_html&quot;:&quot;<span class=\\&quot;price\\&quot;><span class=\\&quot;woocommerce-Price-amount amount\\&quot;><span class=\\&quot;woocommerce-Price-currencySymbol\\&quot;>&amp;pound;<\\/span>369.00<\\/span><\\/span>&quot;,&quot;sku&quot;:&quot;&quot;,&quot;variation_description&quot;:&quot;&quot;,&quot;variation_id&quot;:2842,&quot;variation_is_active&quot;:true,&quot;variation_is_visible&quot;:true,&quot;weight&quot;:&quot;&quot;,&quot;weight_html&quot;:&quot;N\\/A&quot;}]\" current-image=\"2849\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 15px !important; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><br class=\"Apple-interchange-newline\"><table class=\"variations\" cellspacing=\"0\" style=\"margin: 0px 0px 1em; padding: 10px; border: 0px; font: inherit; vertical-align: baseline; border-spacing: 0px; width: 573.875px; border-radius: 5px; visibility: visible; background: rgba(0, 0, 0, 0.01);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"label\" style=\"margin: 0px; padding-top: 10px; padding-right: 1em; padding-bottom: 10px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: 2em; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: top; text-align: center; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(21, 23, 30); letter-spacing: 1px; padding-left: 10px !important;\"><label for=\"pa_size\" style=\"margin: 0px 0px 5px; padding: 8px 0px 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; display: block;\"><br></label></td></tr></tbody></table></form>', 8, 1, 0, 'New', 'uploads/astor_brown.jpg', 0, 0, 1, '{}'),
(88, 'Astor sofa bed', 699, '194x72x90', 'Astor sofa bed', '<p style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-family: Lato, Arial, Tahoma, sans-serif; font-stretch: inherit; line-height: inherit; vertical-align: baseline; caret-color: rgb(21, 23, 30); color: rgb(21, 23, 30); letter-spacing: 1px; -webkit-text-size-adjust: 100%;\">The Astor Chesterfield sofa range features vintage looking, buttoned front, arms and back.</p><p style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-family: Lato, Arial, Tahoma, sans-serif; font-stretch: inherit; line-height: inherit; vertical-align: baseline; caret-color: rgb(21, 23, 30); color: rgb(21, 23, 30); letter-spacing: 1px; -webkit-text-size-adjust: 100%;\">Sofa with bed function.</p><p style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-family: Lato, Arial, Tahoma, sans-serif; font-stretch: inherit; line-height: inherit; vertical-align: baseline; caret-color: rgb(21, 23, 30); color: rgb(21, 23, 30); letter-spacing: 1px; -webkit-text-size-adjust: 100%;\">Material: Faux suede</p><p style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-family: Lato, Arial, Tahoma, sans-serif; font-stretch: inherit; line-height: inherit; vertical-align: baseline; caret-color: rgb(21, 23, 30); color: rgb(21, 23, 30); letter-spacing: 1px; -webkit-text-size-adjust: 100%;\"><span style=\"font-family: inherit; font-size: inherit; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant-caps: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">3 seater:&nbsp;</span>width: 224cm, height: 72cm, depth: 90cm<br></p><p style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-family: Lato, Arial, Tahoma, sans-serif; font-stretch: inherit; line-height: inherit; vertical-align: baseline; caret-color: rgb(21, 23, 30); color: rgb(21, 23, 30); letter-spacing: 1px; -webkit-text-size-adjust: 100%;\">sleeping area: 136 x 185 cm</p><p class=\"western\" style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-family: Lato, Arial, Tahoma, sans-serif; font-stretch: inherit; line-height: inherit; vertical-align: baseline; caret-color: rgb(21, 23, 30); color: rgb(21, 23, 30); letter-spacing: 1px; -webkit-text-size-adjust: 100%;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant-caps: inherit; font-weight: 700; font-stretch: inherit; line-height: inherit; vertical-align: baseline;\">2 seater:&nbsp;</span>width: 194cm, height: 72cm, depth: 90cm</p><p style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-family: Lato, Arial, Tahoma, sans-serif; font-stretch: inherit; line-height: inherit; vertical-align: baseline; caret-color: rgb(21, 23, 30); color: rgb(21, 23, 30); letter-spacing: 1px; -webkit-text-size-adjust: 100%;\">sleeping area: 114 cm x 185 cm</p><br class=\"Apple-interchange-newline\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto;\">', 8, 1, 0, 'New', 'uploads/F37FECD2-3B51-43AA-94A5-3514C7A397AB.jpeg', 0, 0, 1, '{}'),
(89, 'Besso 3+2 set', 1199, '229x79x92', 'Besso 3&2', '<p><span style=\"caret-color: rgb(67, 67, 67); color: rgb(67, 67, 67); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\">Besso is our new edition offering contemporary sofa model with chesterfield touch. It has fixed buttoned back seat, buttoned flared arms, two seating cushions and nail trim on front arms and base. Produced in soft and tactile plush velvet material, available in navy blue and light grey.</span></p><p><span style=\"caret-color: rgb(67, 67, 67); color: rgb(67, 67, 67); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\"><br></span><span style=\"caret-color: rgb(109, 109, 109); color: rgb(109, 109, 109); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\">3 seater – Width: 229cm, Depth: 79cm, Height: 92cm</span><br style=\"caret-color: rgb(109, 109, 109); color: rgb(109, 109, 109); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\"><span style=\"caret-color: rgb(109, 109, 109); color: rgb(109, 109, 109); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\">2 seater – Width: 209cm, Depth: 79cm, Height: 92cm</span><br></p>', 8, 1, 0, 'New', 'uploads/48FB4D3C-5A90-4361-BDD9-AA29766691EF.jpeg', 0, 0, 1, '{}'),
(90, 'Candy 3+2 set', 749, '145x91x90', 'Candy 3+2', '<p><span style=\"caret-color: rgb(67, 67, 67); color: rgb(67, 67, 67); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\">Elegant, comfortable furniture with extremely well-designed seats. Ideal for leisure after a long work day. Best materials were used to create this project.</span></p><p style=\"caret-color: rgb(109, 109, 109); color: rgb(109, 109, 109); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\"><br></p><p style=\"caret-color: rgb(109, 109, 109); color: rgb(109, 109, 109); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\">2-seater:&nbsp;<span style=\"-webkit-tap-highlight-color: transparent;\">Width: 145 cm Height: 91 cm Depth: 90 cm.</span></p><p style=\"caret-color: rgb(109, 109, 109); color: rgb(109, 109, 109); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\">3-seater:&nbsp;<span style=\"-webkit-tap-highlight-color: transparent;\">Width: 192 cm Height: 91 cm Depth: 90 cm.</span></p><p><br><div><span style=\"caret-color: rgb(67, 67, 67); color: rgb(67, 67, 67); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\"><br></span></div><div><span style=\"caret-color: rgb(67, 67, 67); color: rgb(67, 67, 67); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\"><br></span></div></p>', 8, 1, 0, 'New', 'uploads/AA4B295B-5C29-4CA4-B9B8-DD2FC13A125D.jpeg', 0, 0, 1, '{}'),
(91, 'Candy Corner', 749, 'L225xW225xH90xD90', 'Candy corner', '<span style=\"caret-color: rgb(67, 67, 67); color: rgb(67, 67, 67); font-family: montserrat, sans-serif; -webkit-text-size-adjust: 100%;\">Elegant corner sofa designed with comfort in mind.</span><br>', 8, 1, 0, 'New', 'uploads/53D31F53-B2E3-4F78-B25C-4FB945261286.jpeg', 0, 0, 1, '{}'),
(92, 'Candy 3+2 Faux Leather', 749, '145x91x90', 'candy 3&2', '<p><span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">Elegance and comfort in one package. Great leisure furniture set.</span></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; outline: none; color: rgb(21, 23, 30); letter-spacing: 1px;\">2-seat:Width: 145 cm Height: 91 cm Depth: 90 cm.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\">3-seat:Width: 192 cm Height: 91 cm Depth: 90 cm.</p>', 8, 1, 0, 'New', 'uploads/Candy-32-black_1.jpg', 0, 0, 1, '{}'),
(93, 'Candy Faux Leather Corner', 749, '225x90x90', 'Candy Faux Crn', '<p><span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">Elegance and comfort in one package. Great leisure furniture.</span><span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\"><br></span></p><p><span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">Length: 225 cm Width: 225 cm Height: 90 cm Depth: 90 cm.</span></p><p><span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\"><br></span></p>', 8, 1, 0, 'New', 'uploads/CANDY-CORNER-BLACK.jpg', 0, 0, 1, '{}'),
(94, 'Dino 3+2 set', 899, '170x90x90', 'Dino 3+2', '<p>Chunky cord sofa giving unique vibes. Comfortable good quality fabric.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; outline: none; color: rgb(21, 23, 30); letter-spacing: 1px;\">2-seat:Width: 170 cm Height: 90 cm Depth: 90 cm.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\">3-seat:Width: 205 cm Height: 90 cm Depth: 90 cm<span style=\"color: rgb(115, 135, 156); font-family: &quot;Helvetica Neue&quot;, Roboto, Arial, &quot;Droid Sans&quot;, sans-serif; font-size: 13px;\">&nbsp;</span></p>', 8, 1, 0, 'New', 'uploads/DINO32_xl-600x398_blk.jpg', 0, 0, 1, '{}'),
(95, 'Dino Corner', 729, '240x220x90x90', 'Dino crn', '<p>Large comfortable corner perfect for lounging after a long day. Chunky cord giving it a unique finishing look.&nbsp;</p><p>Available left or right hand.&nbsp;</p>', 8, 1, 0, 'New', 'uploads/Dino-Metropolis-Grey-018-Edit-1-600x400.jpg', 0, 0, 1, '{}'),
(96, 'Enzo corner sofa bed', 949, '248x197x88x92', 'Enzo crn sofa bed', '<p>Corner sofa design with contemporary material with soft arm rests. Easily transformed into a bed but serves its purpose during the day as a large corner sofa for lounging.&nbsp;&nbsp;</p><p><span style=\"font-weight: 700; color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Sleeping space:</span><span style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">&nbsp;143 x 200 cm</span><br></p><p><span style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><br></span></p>', 8, 1, 0, 'New', 'uploads/19_1_1.jpg', 0, 0, 1, '{}'),
(97, 'Giani II corner sofa bed', 799, '247x162x88x84', 'Giani crn sofa bed', '<p>Corner Sofa bed with storage in the chase perfect for storing the bedding. This Corner splits into 2 sections so easy to get into a property.&nbsp;</p><p>Faux Leather&nbsp;</p><p>Sleeping Area: 130x205cm&nbsp;</p><p><br></p>', 8, 1, 0, 'New', 'uploads/20_1_1.jpg', 0, 0, 1, '{}'),
(98, 'Giani Corner sofa bed', 799, '247x162x88x84', 'Giani crn sofa bed', '<p>Multi Functional sofa which turns into a sofa bed when needed , chaise with storage perfect storing for bedding &amp; cushions . Removable back cushions and fixed seat cushions.&nbsp;</p><p>Sleeping Area: 130x205cm&nbsp;</p>', 8, 1, 0, 'New', 'uploads/gianni_left_sofa_bed_bl-grey_fab_cobr-metro_1_.jpg', 0, 0, 1, '{}'),
(99, 'Capri 3+2', 799, '195x85x93', 'Capri 3+2 set', '<p>This set will liven up any room with its unique style. This clean contemporary look is faux leather easy to clean and resistant to stains and fluids.&nbsp;</p><div style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; outline: none; color: rgb(21, 23, 30); letter-spacing: 1px;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; outline: none;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: inherit; vertical-align: baseline; outline: none;\">3 Seater</span><span style=\"font-family: inherit; font-size: medium; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">:195x85x93cm</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial; vertical-align: baseline;\">2 Seater:</span><span style=\"font-family: inherit; font-size: medium; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">154x</span><span style=\"font-family: inherit; font-size: medium; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">85x93cm</span></p></div>', 8, 1, 0, 'New', 'uploads/CAPRI-32.png', 0, 0, 1, '{}'),
(100, 'Imperial 3str Sofa Bed Faux leather', 799, '224x72x90', '3str faux sofa bed', '<p>This Imperial has a very modern chesterfield look while it has the sofa bed function sleek design no one will tell. Easy to fold out mechanism.&nbsp;</p><p><br></p>', 8, 1, 0, 'New', 'uploads/24_1_1.jpg', 0, 0, 1, '{}'),
(101, 'Imperial Corner sofa bed', 1149, '270x158x72', 'Imperial Crn sofa bed', '<p><span style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Imperial fabric corner sofa suite&nbsp; produced in high quality and durable fabric. Those sofas are made with a quality hardwood frame that has been kiln dried, glued and reinforced. The seats have well filled foam cushions.</span></p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span class=\"text_exposed_show\">Width: 270 cm ×&nbsp;Depth: 158 cm ×&nbsp;Height: 72 cm</span></p><p style=\"margin-bottom: 0px; color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Sleeping Area: 114 cm x 185 cm</p>', 8, 1, 0, 'New', 'uploads/37.png', 0, 0, 1, '{}'),
(102, 'Imperial Corner', 1049, '270x158x72', 'Imperial Crn', '<p><span style=\"color: rgb(67, 67, 67); font-family: montserrat, sans-serif;\">This Imperial sofa is made with a quality hardwood frame that has been kiln-dried, glued and reinforced. The seats have well-filled foam cushions. This Sofa will make a statement in any modern living area.&nbsp;</span></p><p><span style=\"color: rgb(67, 67, 67); font-family: montserrat, sans-serif;\"><br></span></p>', 8, 1, 0, 'New', 'uploads/40_2.jpg', 0, 0, 1, '{}'),
(103, 'Imperial 3+2 set', 1199, '194x72x90', 'imperial 3+2 set', '<p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Wonderful looking sofa Imperial 3+2 seater produced in high quality and durable fabric.&nbsp;The seats have well filled foam cushions wrapped with fibre.</p><p class=\"western\" style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">2 seater:&nbsp;</span>length: 194cm, height: 72cm, depth: 90cm</p><p class=\"western\" style=\"margin-bottom: 0px; color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">3 seater:&nbsp;</span>length: 224cm, height: 72cm, depth: 90cm</p>', 8, 1, 0, 'New', 'uploads/27_4.jpg', 0, 0, 1, '{}'),
(104, 'Imperial 3 Seater Sofa Bed', 799, '224x72x90', 'Imperial Sofa Bed', '<p>W<span style=\"color: rgb(67, 67, 67); font-family: montserrat, sans-serif;\">onderful looking sofa Imperial produced in high quality and durable fabric.</span></p><p><span style=\"font-weight: 700; color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Sleeping space:</span><span style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">&nbsp;140 cm x 190 cm</span><span style=\"color: rgb(67, 67, 67); font-family: montserrat, sans-serif;\"><br></span></p>', 8, 1, 0, 'New', 'uploads/imperial-3-seater-ocean-graceland1.jpg', 0, 0, 1, '{}'),
(105, 'Matrix 3+2 Set', 949, '154x98x95', 'Matrix 3+2 set', '<p>This New Modern but classic style sofa comes in a plush velvet fabric.&nbsp;</p><p class=\"western\" style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">2 seater:&nbsp;</span>width: 154 cm, height: 98 cm, depth: 95 cm</p><p class=\"western\" style=\"margin-bottom: 0px; color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"font-weight: 700;\">3 seater:&nbsp;</span>length: 184 cm, height: 98 cm, depth: 95 cm</p>', 8, 1, 0, 'New', 'uploads/matrix.png', 0, 0, 1, '{}'),
(106, 'Melody 3+2 Set', 949, '195x90x92', 'Melody 3+2 set', '<p><span style=\"color: rgb(67, 67, 67); font-family: montserrat, sans-serif;\">Ultra stylish and modern Melody Sofa Set in fabric is a sturdy set for a living-room. It adds contemporary feel to your surrounding. These sofas contain back cushions and two small scatter cushions.</span></p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">3-Seater: Width: 195 cm; Depth: 92 cm; Height: 90 cm</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">2-Seater: Width: 165 cm; Depth: 92 cm; Height: 90 cm</p>', 8, 1, 0, 'New', 'uploads/60_2.jpg', 0, 0, 1, '{}'),
(107, 'Melody Corner', 949, '264x19590x90', 'Melody Corner', '<span style=\"color: rgb(67, 67, 67); font-family: montserrat, sans-serif;\">Ultra stylish corner sofa Melody in fabric is a strong, sturdy set of living room furniture that adds a modern, contemporary feel to your surroundings.</span>', 8, 1, 0, 'New', 'uploads/melody-left-navy-blue-graceland-corner-sofa-600x400.jpg', 0, 0, 1, '{}'),
(108, 'Molly 3+2 Set', 799, '205x86x97', 'Molly 3+2 Set', '<p>This Molly Scatter back sofa comes with modern chrome legs to finish the look.&nbsp;</p><p><span style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">3 Seater: Width 205cm, Depth: 86cm, Height: 97cm</span><br style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><span style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">2 Seater: Width 155cm, Depth: 86cm, Height: 97cm</span><br></p>', 8, 1, 0, 'New', 'uploads/Molly-32-graphite.jpg', 0, 0, 1, '{}'),
(109, 'Paris 3 Seater Sofa Bed With Foam Mattress', 949, '200x100x90', 'Paris 3Str sofa bed', '<div style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\"><p>Wonderful looking sofa Paris produced in high quality and durable fabric. The seats have well filled foam cushions wrapped with fibre. Super easy to transform sofa into a comfortable bed in seconds.</p><p>As Sofa: W200cm x D100cm x H90cm</p><p>As Bed: W200cm x D216cm x H56cm (to top of mattress)</p><p>Mattress dimensions: 145cm x 182cm x 11cm</p></div>', 8, 1, 0, 'New', 'uploads/85_1_1.jpg', 0, 0, 1, '{}');
INSERT INTO `products` (`id`, `name`, `price`, `size`, `sku`, `description`, `category_id`, `sub_category_id`, `display_in_navbar`, `active_feature`, `product_image`, `discoun_price`, `has_discount`, `display_in_home`, `other_options`) VALUES
(110, 'Paris Corner Sofa Bed', 1249, '274x166x92', 'Paris Crn Sofa Bed', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\">Wonderful looking corner sofa Paris produced in high quality and durable fabric. The seats have well filled foam cushions wrapped with fibre. Super easy to transform sofa into a comfortable bed in seconds. Corner sofa with storage under chaise section.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\">Dimensions:</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\">Width: 274 cm; Length: 166 cm; Heigh: 92 cm</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\">Length with open bed section: 215 cm</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 14px; line-height: inherit; font-family: Lato, Arial, Tahoma, sans-serif; vertical-align: baseline; color: rgb(21, 23, 30); letter-spacing: 1px;\">Mattress dimensions: 145cm x 182cm x 11cm</p>', 8, 1, 0, 'New', 'uploads/77_3.jpg', 0, 0, 1, '{}'),
(111, 'Rey Sofa Bed', 599, '154x98x83', 'Rey Sofa Bed', '<p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Simple box type sofa with sofa bed function and storage space located under seating. This sofa bed is the perfect option for smaller spaces.&nbsp;</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Width 154 x Depth 98 x Height 83cm&nbsp;<br>Sleeping size: 196 cm x 132 cm</p><p style=\"margin-bottom: 0px; color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Sitting depth: 68 cm<br>Sitting height: 36 cm</p>', 8, 1, 0, 'New', 'uploads/86_1_2.jpg', 0, 0, 1, '{}'),
(112, 'San Diego Corner', 1149, '262x212x110', 'San Diego Crn', '<p><span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">This versatile sofa can be easily converted into a bed by pulling extension of the sleeping surface from underneath. In separate part of sofa under seat there is storage space</span></p><p><span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">Bed space: 200 cm ×&nbsp;118 cm</span><span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\"><br></span></p>', 8, 1, 0, 'New', 'uploads/sandiego-crn-grey-Right.jpg', 0, 0, 1, '{}'),
(113, 'Shannon 3+2 Set', 899, '190x92x87', 'Shannon 3+2 set', '<p><span style=\"color: rgb(67, 67, 67); font-family: montserrat, sans-serif;\">Furniture set with refined looks. Sleek elements and comfortable seats. Elegant armrests.</span></p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">2-seat:Width: 190 cm Height: 92 cm Depth: 87 cm.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">3-seat: Width: 217 cm Height: 92 cm Depth: 87 cm.</p><p style=\"color: rgb(109, 109, 109); font-family: montserrat, sans-serif;\">Chair:&nbsp;<span style=\"color: rgb(21, 23, 30); font-family: Lato, Arial, Tahoma, sans-serif; font-size: 14px; letter-spacing: 1px;\">Width: 124cm, Height: 92cm, Depth: 87cm</span></p>', 8, 1, 0, 'New', 'uploads/SHANNON-32-BLACKGREY-600x379.jpg', 0, 0, 1, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `productsimages`
--

CREATE TABLE `productsimages` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `display_place` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productsimages`
--

INSERT INTO `productsimages` (`id`, `image`, `color`, `product_id`, `display_place`) VALUES
(1, 'uploads/verona_room-1200w_TDOsqmU.jpg', '', 25, '0'),
(2, 'uploads/verona_sizes.jpg', '', 25, '0'),
(3, 'uploads/harrogate_ReZkK9r.jpg', '', 33, '0'),
(4, 'uploads/img_0872_f6JIvOF.jpg', '', 33, '0'),
(5, 'uploads/orleans.jpg', '', 16, '0'),
(6, 'uploads/orleans_sizes.jpg', '', 16, '0'),
(7, 'uploads/ashford_lJz3S8J.jpg', '', 29, '0'),
(8, 'uploads/ashford_sizes.jpg', '', 29, '0'),
(9, 'uploads/darwin.jpg', '', 18, '0'),
(10, 'uploads/darwin_sizes.jpg', '', 18, '0'),
(11, 'uploads/boston.jpg', '', 30, '0'),
(12, 'uploads/boston_sizes.jpg', '', 30, '0'),
(13, 'uploads/chelsea.jpg', '', 20, '0'),
(14, 'uploads/IMG_3127.jpg', '', 20, '0'),
(15, 'uploads/Buckingham-2c1-SB-1920w_118XvZn.png', '', 24, '0'),
(16, 'uploads/IMG_3128.jpg', '', 24, '0'),
(17, 'uploads/IMG_3129_nNkdin0.jpg', '', 34, '0'),
(18, 'uploads/IMG_3130.jpg', '', 34, '0'),
(21, 'uploads/Royal-Due-4-Seater-1920w_bZSbsFH.jpg', '', 17, '0'),
(22, 'uploads/IMG_3135.jpg', '', 17, '0'),
(23, 'uploads/9_1_1_72ZCPW6.jpg', '', 26, '0'),
(24, 'uploads/arnage_spec_c.jpg', '', 26, '0'),
(25, 'uploads/Zinc-Malia-Green-1920w_eJmTmub.jpg', '', 35, '0'),
(26, 'uploads/IMG_3138.jpg', '', 35, '0'),
(27, 'uploads/IMG_3139_VU9l1H8.jpg', '', 36, '0'),
(28, 'uploads/image0_1.jpeg', '', 36, '0'),
(29, 'uploads/IMG_3142.jpg', '', 35, '0'),
(30, 'uploads/IMG_3143.jpg', '', 17, '0'),
(31, 'uploads/IMG_3144.jpg', '', 16, '0'),
(32, 'uploads/IMG_3145.jpg', '', 36, '0'),
(34, 'uploads/IMG_3147.jpg', '', 20, '0'),
(35, 'uploads/IMG_3148.jpg', '', 34, '0'),
(36, 'uploads/IMG_3149.jpg', '', 24, '0'),
(37, 'uploads/IMG_3149_yR0h5ci.jpg', '', 18, '0'),
(38, 'uploads/verona_swatch.jpg', '', 25, '0'),
(39, 'uploads/arnage_swatch.jpg', '', 26, '0'),
(40, 'uploads/ashford_swatch.jpg', '', 29, '0'),
(41, 'uploads/boston_swatch.jpg', '', 30, '0'),
(42, 'uploads/harrogate_swatch.jpg', '', 33, '0'),
(43, 'uploads/albany_Kvc9rDq.jpg', '', 39, '0'),
(44, 'uploads/IMG_3150.jpg', '', 39, '0'),
(45, 'uploads/image0_2.jpeg', '', 39, '0'),
(46, 'uploads/Sophie-2s-Hopsack-Pewter-room-1920w_DVesdPI.png', '', 40, '0'),
(47, 'uploads/sophie_spec_e8VnibY.jpg', '', 40, '0'),
(48, 'uploads/sophie_swatch_ooobnva.jpg', '', 40, '0'),
(49, 'uploads/RomaRoomSet-min-1920w_OJvjPAF.jpg', '', 41, '0'),
(50, 'uploads/roma_spec_qilkwhr.jpg', '', 41, '0'),
(51, 'uploads/roma_swatch_fyLmifm.jpg', '', 41, '0'),
(52, 'uploads/morano_dining_set.jpg', '', 42, '0'),
(53, 'uploads/black_vista_2_3_seat_reclined-1600_8sS6ck3.jpg', '', 27, '0'),
(54, 'uploads/milan_coffee_table_kNAyG9R.jpg', '', 45, '0'),
(55, 'uploads/tenerife_lamp_table_EUKVUIM.jpg', '', 46, '0'),
(56, 'uploads/hilton_3str_ueMisXb.jpg', '', 47, '0'),
(57, 'uploads/hilton_sizes.jpg', '', 47, '0'),
(58, 'uploads/hilton_swatch.jpg', '', 47, '0'),
(59, 'uploads/newton_alternative_copy-1200w_wfRVjui.jpg', '', 48, '0'),
(60, 'uploads/newton_spec.jpg', '', 48, '1'),
(61, 'uploads/newton_swatch.jpg', '', 48, '0'),
(62, 'uploads/tenerife_coffee_table_3tdiSpj.jpg', '', 50, '0'),
(63, 'uploads/tenerife_console_hQdSP1v.jpg', '', 51, '0'),
(64, 'uploads/LUCY2_1GREY_2_159x202_9QhPi0J.jpg', '', 52, '0'),
(65, 'uploads/NEVADA-2-DOOR-1-DRAWER-WARDROBE-BEDROOM-SET-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-20_ckh6PIJ.jpg', '', 52, '0'),
(66, 'uploads/image0_3_Bi90LRH.jpeg', '', 53, '0'),
(67, 'uploads/image1.jpeg', '', 53, '0'),
(68, 'uploads/image2.jpeg', '', 53, '0'),
(69, 'uploads/image0_4_NM1TerF.jpeg', '', 54, '0'),
(70, 'uploads/image1_1.jpeg', '', 54, '0'),
(71, 'uploads/image2_1.jpeg', '', 54, '0'),
(72, 'uploads/kai_3_seater_-_tortona_cream-1200w_prrcO73.png', '', 55, '0'),
(73, 'uploads/kai_swatch.jpg', '', 55, '0'),
(74, 'uploads/kai_swatch_2.jpg', '', 55, '0'),
(75, 'uploads/image0_5_w2loNfj.jpeg', '', 56, '0'),
(76, 'uploads/image1_2.jpeg', '', 56, '0'),
(77, 'uploads/image2_2.jpeg', '', 56, '0'),
(78, 'uploads/RUMYGREYNT_1024x1024_5r0X72f.jpg', '', 58, '0'),
(79, 'uploads/IMG_3165_DFPFRyI.jpg', '', 59, '0'),
(80, 'uploads/LISBON-2-DOOR-WARDROBE-LIGHT-OAK-EFFECT-VENEER-2020-100-101-054-01-187x400_NQVTIyz.jpg', '', 60, '0'),
(81, 'uploads/LISBON-2-DOOR-WARDROBE-LIGHT-OAK-EFFECT-VENEER-2020-100-101-054-03-179x400.jpg', '', 60, '0'),
(82, 'uploads/LISBON-2-DRAWER-BEDSIDE-LIGHT-OAK-EFFECT-VENEER-2020-100-103-033-01-305x400_c9479OX.jpg', '', 61, '0'),
(83, 'uploads/LISBON-2PC-DRESSING-TABLE-SET-LIGHT-OAK-EFFECTBLACK-PU-2020-100-107-012-01-400x3_pJRLb0g.jpg', '', 62, '0'),
(84, 'uploads/LISBON-3-DOOR-WARDROBE-LIGHT-OAK-EFFECT-VENEER-2020-100-101-055-01-261x400_BFo4GxE.jpg', '', 63, '0'),
(85, 'uploads/vegas_dining_set_zU1rjCU.jpg', '', 64, '0'),
(86, 'uploads/vegas_coffee_table_bDLlySd.jpg', '', 65, '0'),
(87, 'uploads/DOUBLE_O_KtMQzD3.jpg', '', 66, '0'),
(88, 'uploads/moon_lamp_Cs3HZBO.webp', '', 67, '0'),
(89, 'uploads/CHESTERFIELDBROWN23SEAT-1600_sLzYVAI.jpg', '', 68, '0'),
(90, 'uploads/CHESTERFIELDGREY23SEAT-1600.jpg', '', 68, '0'),
(91, 'uploads/CHESTERFIELDGREY3SEAT-1600.jpg', '', 68, '0'),
(92, 'uploads/CHESTERFIELDBROWN2SEAT2-1600.jpg', '', 68, '0'),
(93, 'uploads/VERONA23SEAT-_VUyZxRb.jpg', '', 69, '0'),
(94, 'uploads/VERONABROWN.jpg', '', 69, '0'),
(95, 'uploads/VERONA3SEATRECL-1600.jpg', '', 69, '0'),
(96, 'uploads/VERONAGREY2SEAT-1600.jpg', '', 69, '0'),
(97, 'uploads/tuscany23seat_tnilPMI.jpg', '', 70, '0'),
(98, 'uploads/TUSCANYGREY23SEAT.jpg', '', 70, '0'),
(99, 'uploads/JENNIFERlesspix_1024x1024_XY29KwJ.jpg', '', 71, '0'),
(100, 'uploads/178copy_1024x1024.jpg', '', 71, '0'),
(101, 'uploads/jennifer_recliner_2.jpg', '', 71, '0'),
(102, 'uploads/LISBON-3-DOOR-WARDROBE-BLACK-WOOD-GRAIN-2020-100-101-058-01-261x400.jpg', '', 63, '0'),
(103, 'uploads/LISBON-2-DOOR-WARDROBE-BLACK-WOOD-GRAIN-2020-100-101-057-01-191x400.jpg', '', 60, '0'),
(104, 'uploads/LISBON-3-DOOR-WARDROBE-LIGHT-OAK-EFFECT-VENEER-2020-100-101-055-03-263x400.jpg', '', 63, '0'),
(105, 'uploads/6E4D61AC-B473-4A84-84AA-0E9826444AB1.jpeg', '', 73, '0'),
(106, 'uploads/399640AF-70C7-4743-9995-8EA9B7F6156A.jpeg', '', 74, '0'),
(107, 'uploads/50B0D33B-61FA-4CBD-A4BC-F3E6B3DD9965.jpeg', '', 75, '0'),
(108, 'uploads/73CFB2E5-C173-400C-8C1D-50ED42E8B68D.jpeg', '', 76, '0'),
(109, 'uploads/93D76DAF-1028-4124-86B9-BF1175046FBC.jpeg', '', 77, '0'),
(110, 'uploads/6AE83732-7471-4339-BFCB-612DF495ADB4.jpeg', '', 78, '0'),
(111, 'uploads/806CF468-0800-49DC-8C0D-0F42D1B2E246.jpeg', '', 79, '0'),
(112, 'uploads/52C618AE-B066-4DA8-8132-3783082B91CB.jpeg', '', 80, '0'),
(113, 'uploads/4BB07B77-220C-4AA5-93F5-BC37101497C8.jpeg', '', 81, '0'),
(114, 'uploads/0F07F487-DD13-47CB-B217-776AC9317125.jpeg', '', 82, '0'),
(115, 'uploads/D14189AD-5209-48FD-8B32-6255ABE7C39E.jpeg', '', 85, '0'),
(116, 'uploads/FB73F9A5-6790-46B1-92AC-8E71CC4202D6.jpeg', '', 86, '0'),
(117, 'uploads/1C185117-EB5B-4D0A-9914-3F90BC91DC71.jpeg', '', 87, '0'),
(118, 'uploads/33EE9CB9-4DD3-4206-AEED-9C02EAED6C7B.jpeg', '', 88, '0'),
(119, 'uploads/1C22B542-7D46-45C6-83A8-DC8DD68576BC.jpeg', '', 89, '0'),
(120, 'uploads/2A7D93FF-227D-43A6-82F2-2D732ECCD5EC.jpeg', '', 92, '0'),
(121, 'uploads/7ACD2F14-2E5C-4318-AAC2-250FB91474AB.jpeg', '', 92, '0'),
(122, 'uploads/C2560A09-5F50-427B-A0F7-8B7F38E92570.jpeg', '', 92, '0'),
(123, 'uploads/3D80963E-B9C7-4394-A2C0-D29B6AB2EFEB.jpeg', '', 92, '0'),
(124, 'uploads/5598EFEF-26C3-498F-987F-12ECADE80B72.jpeg', '', 93, '0'),
(125, 'uploads/73DA5C24-5432-4CA6-A5EA-1C0C743A4449.jpeg', '', 94, '0'),
(126, 'uploads/Milan_dining_chair_grey_VjJkKww.jpg', '', 95, '0'),
(127, 'uploads/milan_dining_chair_grey_back.jpg', '', 95, '0'),
(128, 'uploads/Milan-Cappuccino-Dining-Chair--600x703.jpg', '', 95, '0'),
(129, 'uploads/Milan-Cappuccino-Dining-Chair_back.jpg', '', 95, '0'),
(130, 'uploads/milan_dining_chair_white.jpg', '', 95, '0'),
(131, 'uploads/milan_dining_chair_white_back.jpg', '', 95, '0'),
(132, 'uploads/nyc_grey_3rg4eGI.jpg', '', 96, '0'),
(133, 'uploads/nyc_grey_back.jpg', '', 96, '0'),
(134, 'uploads/nyc_black.jpg', '', 96, '0'),
(135, 'uploads/nyc_black_back.jpg', '', 96, '0'),
(136, 'uploads/nyc_b-w.jpg', '', 96, '0'),
(137, 'uploads/nyc_b-w_back.jpg', '', 96, '0'),
(138, 'uploads/nyc_white.jpg', '', 96, '0'),
(139, 'uploads/nyc_white_back.jpg', '', 96, '0'),
(140, 'uploads/B910-5-scaled-2-600x450_1.jpg', '', 98, '0'),
(141, 'uploads/hilton_32_asphalt_plush_vAUTHoq.jpg', '', 99, '0'),
(142, 'uploads/hilton_32_dimensions.jpg', '', 99, '0'),
(143, 'uploads/rimini_Qw8gbah.jpg', '', 100, '0'),
(144, 'uploads/verona-ortho_gkINY6h.jpg', '', 101, '0'),
(145, 'uploads/vienna-memory_2Nuawmt.jpg', '', 102, '0'),
(146, 'uploads/brown_vista_2_3_reclined-1600_1eDvnn9.jpg', '', 103, '0'),
(147, 'uploads/LISBON-2PC-DRESSING-TABLE-SET-BLACK-WOOD-GRAINBLACK-PU-2020-100-107-011-01-400x360.jpg', '', 62, '0'),
(148, 'uploads/LISBON-3-DRAWER-CHEST-LIGHT-OAK-EFFECT-VENEER-2020-100-102-064-01-400x370_TD1f5hM.jpg', '', 104, '0'),
(149, 'uploads/LISBON-3-DRAWER-CHEST-BLACK-WOOD-GRAIN-2020-100-102-068-01-400x369.jpg', '', 104, '0'),
(150, 'uploads/NEVADA-2-DOOR-1-DRAWER-WARDROBE-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-10_MsFUkdq.jpg', '', 105, '0'),
(151, 'uploads/NEVADA-2-DOOR-1-DRAWER-WARDROBE-BLACK-WOOD-GRAIN-2021-100-101-128-1-190x400.jpg', '', 105, '0'),
(152, 'uploads/NEVADA-2-DOOR-1-DRAWER-WARDROBE-OYSTER-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-_6xEsyXd.jpg', '', 105, '0'),
(153, 'uploads/NEVADA-2-DOOR-1-DRAWER-WARDROBE-RUSTIC-OAK-EFFECT-2021-100-101-115-F-1-190x400.jpg', '', 105, '0'),
(154, 'uploads/NEVADA-2-DOOR-1-DRAWER-WARDROBE-SONOMA-OAK-EFFECT-2020-01-100-101-100-187x400.jpg', '', 105, '0'),
(155, 'uploads/NEVADA-2-DOOR-1-DRAWER-WARDROBE-SONOMA-OAK-EFFECT-2020-03-100-101-100-189x400_open.jpg', '', 105, '0'),
(156, 'uploads/NEVADA-3-DRAWER-BEDSIDE-3D-EFFECT-GREY-2021-100-103-080-3-309x400_b0ecmlI.jpg', '', 106, '0'),
(157, 'uploads/NEVADA-3-DRAWER-BEDSIDE-BLACK-WOOD-GRAIN-2021-100-103-077-1-309x400.jpg', '', 106, '0'),
(158, 'uploads/NEVADA-3-DRAWER-BEDSIDE-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-103-051-289x400.jpg', '', 106, '0'),
(159, 'uploads/NEVADA-3-DRAWER-BEDSIDE-RUSTIC-OAK-EFFECT-2021-100-103-065-F-1-309x400.jpg', '', 106, '0'),
(160, 'uploads/NEVADA-3-DRAWER-BEDSIDE-SONOMA-OAK-EFFECT-2020-01-100-103-062-290x400.jpg', '', 106, '0'),
(161, 'uploads/NEVADA-3-DRAWER-CHEST-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102-091-400x_gdY6DsL.jpg', '', 107, '0'),
(162, 'uploads/NEVADA-3-DRAWER-CHEST-3D-EFFECT-GREY-2021-100-102-151-3-400x342.jpg', '', 107, '0'),
(163, 'uploads/NEVADA-3-DRAWER-CHEST-BLACK-WOOD-GRAIN-2021-100-102-147-1-400x341.jpg', '', 107, '0'),
(164, 'uploads/NEVADA-3-DRAWER-CHEST-OYSTER-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102-092-400x350.jpg', '', 107, '0'),
(165, 'uploads/NEVADA-3-DRAWER-CHEST-RUSTIC-OAK-EFFECT-2021-100-102-121-F-1-400x339.jpg', '', 107, '0'),
(166, 'uploads/NEVADA-3-DRAWER-CHEST-SONOMA-OAK-EFFECT-2020-100-102-116-01-400x356.jpg', '', 107, '0'),
(167, 'uploads/NEVADA-32-DRAWER-CHEST-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102-089-298_wsqkxd5.jpg', '', 108, '0'),
(168, 'uploads/NEVADA-32-DRAWER-CHEST-3D-EFFECT-GREY-2021-100-102-149-3-305x400.jpg', '', 108, '0'),
(169, 'uploads/NEVADA-32-DRAWER-CHEST-BLACK-WOOD-GRAIN-2021-100-102-145-1-304x400.jpg', '', 108, '0'),
(170, 'uploads/NEVADA-32-DRAWER-CHEST-OYSTER-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102-090-294x400.jpg', '', 108, '0'),
(171, 'uploads/NEVADA-32-DRAWER-CHEST-SONOMA-OAK-EFFECT-2020-01-100-102-114-294x400.jpg', '', 108, '0'),
(172, 'uploads/NEVADA-DRESSING-TABLE-SET-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-105-016-_Dw9icKs.jpg', '', 109, '0'),
(173, 'uploads/NEVADA-DRESSING-TABLE-SET-3D-EFFECT-GREY-2021-100-105-021-F-1-332x400.jpg', '', 109, '0'),
(174, 'uploads/NEVADA-DRESSING-TABLE-SET-BLACK-WOOD-GRAIN-2021-100-105-020-F-1-334x400.jpg', '', 109, '0'),
(175, 'uploads/NEVADA-DRESSING-TABLE-SET-OYSTER-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-105-01_QMWbUSB.jpg', '', 109, '0'),
(176, 'uploads/NEVADA-DRESSING-TABLE-SET-RUSTIC-OAK-EFFECT-2021-100-105-019-F-1-334x400_1.jpg', '', 109, '0'),
(177, 'uploads/NEVADA-DRESSING-TABLE-SET-SONOMA-OAK-EFFECT-2020-01-100-105-018-344x400_1.jpg', '', 109, '0'),
(178, 'uploads/NEVADA-5-DRAWER-NARROW-CHEST-GREY-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102-0_pr3qt9J.jpg', '', 110, '0'),
(179, 'uploads/NEVADA-5-DRAWER-NARROW-CHEST-3D-EFFECT-GREY-2021-100-102-152-3-247x400.jpg', '', 110, '0'),
(180, 'uploads/NEVADA-5-DRAWER-NARROW-CHEST-BLACK-WOOD-GRAIN-2021-100-102-148-1-247x400.jpg', '', 110, '0'),
(181, 'uploads/NEVADA-5-DRAWER-NARROW-CHEST-OYSTER-GLOSSLIGHT-OAK-EFFECT-VENEER-2019-01-100-102_GZsJPqb.jpg', '', 110, '0'),
(182, 'uploads/NEVADA-5-DRAWER-NARROW-CHEST-RUSTIC-OAK-EFFECT-2021-100-102-122-F-1-247x400.jpg', '', 110, '0'),
(183, 'uploads/NEVADA-5-DRAWER-NARROW-CHEST-SONOMA-OAK-EFFECT-2020-100-102-117-01-248x400.jpg', '', 110, '0'),
(184, 'uploads/amy-32-blackgrey_WdS0YO8.jpg', '', 111, '0'),
(185, 'uploads/AMY-32-BLACK-AMY320201_lCVw4YP.jpg', '', 112, '0'),
(186, 'uploads/Amy-32-brown.jpg', '', 112, '0'),
(187, 'uploads/amy_corner_sofa_brown_3-600x450_8eBzm0u.jpg', '', 113, '0'),
(188, 'uploads/Amy-corner-blackgrey.jpg', '', 113, '0'),
(191, 'uploads/ALAN-32-BROWNBROWN-ALA322525_4EW8mOE.jpg', '', 115, '0'),
(192, 'uploads/ALAN-32-BLACKGREY-ALA322524-600x399.jpg', '', 115, '0'),
(193, 'uploads/astor_brown_ChlqClQ.jpg', '', 116, '0'),
(194, 'uploads/astor_grey.png', '', 116, '0'),
(195, 'uploads/C698907A-7291-4857-9705-FDBFA9EAA68D.jpeg', '', 117, '0'),
(196, 'uploads/60185A98-2452-4854-B073-CB1978F37E05.jpeg', '', 117, '0'),
(197, 'uploads/06834DA4-1C0B-4E1B-8F4B-14D72F254B42.jpeg', '', 118, '0'),
(198, 'uploads/28242209-3C90-4377-BCDF-4A51430B26A0.jpeg', '', 118, '0'),
(199, 'uploads/58B2007F-4724-4060-87F0-906E753A9123.jpeg', '', 119, '0'),
(200, 'uploads/65B053AA-6591-4C4F-9072-6A77E4B330B0.jpeg', '', 120, '0'),
(201, 'uploads/468CB6DC-41C2-46C1-AFB8-C534D005297B.jpeg', '', 120, '0'),
(202, 'uploads/Candy-32-black_1_LmeUzzH.jpg', '', 121, '0'),
(203, 'uploads/CANDY-CORNER-BLACK_yzxaHEo.jpg', '', 122, '0'),
(204, 'uploads/DINO32_xl-600x398_blk_xgdsyHl.jpg', '', 123, '0'),
(205, 'uploads/DINO32-brown_xlpp.jpg', '', 123, '0'),
(206, 'uploads/Dino-Metropolis-Grey-018-Edit-1-600x400_g0dfhSs.jpg', '', 124, '0'),
(207, 'uploads/19_1_1_vLwqlAG.jpg', '', 125, '0'),
(208, 'uploads/enzo_1cr2_left_corner_sofa_bed_bl-grey_fab_cov-metro_2_.jpg', '', 125, '0'),
(209, 'uploads/enzo_1cr2_left_corner_sofa_bed_bl-grey_fab_cov-metro_1_.jpg', '', 125, '0'),
(210, 'uploads/18_1_2.jpg', '', 125, '0'),
(211, 'uploads/20_1_1_tl8CwgO.jpg', '', 126, '0'),
(212, 'uploads/gianni2_left_sofa_bed_black_pu.png', '', 126, '0'),
(213, 'uploads/gianni_left_sofa_bed_bl-grey_fab_cobr-metro_1__JKCegTc.jpg', '', 127, '0'),
(214, 'uploads/Giani_2014-2_brown-color-balanced-600x390.jpg', '', 127, '0'),
(215, 'uploads/CAPRI-32_FPoh4me.png', '', 128, '0'),
(216, 'uploads/Capri32-600x400.jpg', '', 128, '0'),
(217, 'uploads/26_2_1.jpg', '', 129, '0'),
(218, 'uploads/25_1_1_1.jpg', '', 129, '0'),
(219, 'uploads/37_pglfdwn.png', '', 130, '0'),
(220, 'uploads/img_0957_1.jpg', '', 130, '0'),
(221, 'uploads/36_2.jpg', '', 130, '0'),
(222, 'uploads/40_2_yO2FnSP.jpg', '', 131, '0'),
(223, 'uploads/42_2_1.jpg', '', 131, '0'),
(224, 'uploads/27_4_kgl68mv.jpg', '', 132, '0'),
(225, 'uploads/29_3.jpg', '', 132, '0'),
(226, 'uploads/28_3.jpg', '', 132, '0'),
(227, 'uploads/imperial-3-seater-ocean-graceland1_30uOPEf.jpg', '', 133, '0'),
(228, 'uploads/dsc_0007_1-600x398.png', '', 133, '0'),
(229, 'uploads/28_3_KaPsy3d.jpg', '', 133, '0'),
(230, 'uploads/matrix_4Rt2zaF.png', '', 134, '0'),
(231, 'uploads/matrix_arm_chair.png', '', 134, '0'),
(232, 'uploads/60_2_W5gGwg0.jpg', '', 135, '0'),
(233, 'uploads/61.png', '', 135, '0'),
(234, 'uploads/62.png', '', 135, '0'),
(235, 'uploads/63.png', '', 135, '0'),
(236, 'uploads/melody-left-navy-blue-graceland-corner-sofa-600x400_fDBD8EY.jpg', '', 136, '0'),
(237, 'uploads/66_1_1.jpg', '', 136, '0'),
(238, 'uploads/68_1_1.jpg', '', 136, '0'),
(239, 'uploads/Molly-32-graphite_S1hp8zB.jpg', '', 137, '0'),
(240, 'uploads/molly_3_2_set_silver_fab.jpg', '', 137, '0'),
(241, 'uploads/85_1_1_ChXAqcd.jpg', '', 138, '0'),
(242, 'uploads/83_1_1.jpg', '', 138, '0'),
(243, 'uploads/82_1_1.jpg', '', 138, '0'),
(244, 'uploads/paris_3-2_sofa_bed_brown_fab_1_.jpg', '', 138, '0'),
(245, 'uploads/77_3_NsRKZqu.jpg', '', 139, '0'),
(246, 'uploads/80_3.jpg', '', 139, '0'),
(247, 'uploads/86_1_2_ghCsaAw.jpg', '', 140, '0'),
(248, 'uploads/90_1_1.jpg', '', 140, '0'),
(249, 'uploads/91_1_1.jpg', '', 140, '0'),
(250, 'uploads/sandiego-crn-grey-Right_pGrMKh6.jpg', '', 141, '0'),
(251, 'uploads/SHANNON-32-BLACKGREY-600x379_KHfgIxa.jpg', '', 142, '0'),
(252, 'uploads/Shanon-32-brown-ss-1-600x335.jpg', '', 142, '0'),
(253, 'uploads/Shannon-1.jpg', '', 142, '0'),
(257, 'uploads/curology-6CJg-fOTYs4-unsplash_Rqpl8mc.jpg', '', 115, '0'),
(262, 'uploads/4A8072BE-9F25-43B4-89E8-C22EAF6EA415.jpeg', '', 11, '0'),
(263, 'uploads/F1342932-88E1-4187-B65D-60E03A61E488.jpeg', '', 11, '0'),
(264, 'uploads/arnage_swatch_vE6WkJL.jpg', '', 11, '0'),
(265, 'uploads/arnage_spec_c_GzjkZWZ.jpg', '', 11, '0');

-- --------------------------------------------------------

--
-- Table structure for table `Profile`
--

CREATE TABLE `Profile` (
  `id` int(11) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `birthday` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Profile`
--

INSERT INTO `Profile` (`id`, `first_name`, `last_name`, `mobile`, `birthday`, `gender`, `user_id`) VALUES
(1, '', '', '', '', '', 1),
(2, '', '', '', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `SeasionSale`
--

CREATE TABLE `SeasionSale` (
  `id` int(11) NOT NULL,
  `summary` varchar(150) NOT NULL,
  `heading` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `subcategory_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SeasionSale`
--

INSERT INTO `SeasionSale` (`id`, `summary`, `heading`, `image`, `subcategory_id`) VALUES
(1, 'Sofas', 'Most Demanding Set', 'uploads/AMY-32-BLACK-AMY320201_BVA7CS4.jpg', 1),
(2, 'Dining Tabls', 'Most Demanding Set', 'uploads/dining.jpeg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `SiteSetting`
--

CREATE TABLE `SiteSetting` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `terms_and_condion` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SiteSetting`
--

INSERT INTO `SiteSetting` (`id`, `email`, `contact`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`, `pinterest`, `logo`, `terms_and_condion`) VALUES
(1, 'sales@nfcliving.co.uk', '0191 272 2631- 0191 649 4146', 'UK', 'https://www.facebook.com/NFCLIVING/', 'https://www.twitter.com/NFCLIVING/', 'https://www.instagram.com/NFCLIVING/', 'https://www.linkedin.com/NFCLIVING/', 'https://www.pinterest.com/NFCLIVING/', 'uploads/logo1.png', '<p>1. If furniture does not go in to the house or fit through the doors then a 20% charge is made to the customer on the total value of the goods.</p><p>2. When your furniture is delivered inspect it closely for damage or defects. Make sure the delivery person is informed of any problems immediately.</p><p>3. If you are having any work done in your house please be aware that building projects are frequently delayed. If you are unable to take delivery of your furniture when it is ready we will store it for you free of charge for 21 days. Beyond this time period we are obliged to charge weekly storage.&nbsp;</p><p>4. Seller is not liable for any damages at the time of delivery.</p><p>5. The Seller is not liable for any delay in delivery howsoever caused.</p><p>6. Where a delivery date has been agreed with our courier but the customer isn\'t present to receive the delivery we reserve the right to charge the customer a minimum of £25 to cover part of the cost of the failed delivery.</p><p>7. Items which are not adequately packaged at the time of collection will not be collected and a charge of £25 will be levied to cover cost of failed collection. The Buyer shall then be refunded with the full purchase price of the goods. Please not this does not apply to selected items of leather upholstery where there is 50% cancellation/returns fee unless the order is cancelled within one week of placement. Such items are marked.</p><p>8.Mattresses can only be returned if unopened. Mattresses which have been slept on cannot be returned. If you wish to test a mattress please keep it wrapped until you are sure you want to keep it.</p><p>9. Goods belong to seller until paid in full.</p><p>10. New Furniture Orders &amp; Bespoke Commissions: All of our furniture is only made to order and once placed the furniture order may not be cancelled by you. For orders from stock only you have the right to cancel the order up to 14 days before delivery date however , if you do so , we shall retain the deposit, together with an administration charge of £50. This does not affect your statutory rights.&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `short_Hesding` varchar(100) NOT NULL,
  `explore_to_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_image`, `short_name`, `short_Hesding`, `explore_to_id`, `status`) VALUES
(2, 'uploads/3_showroom.jpg', 'Open 7 days a week Monday to Saturday 9:00 am to 6:00 pm, Newcastle Sunday 10:00 am to 4:00 pm', 'Visit us at 137 Bentinck Road Newcastle NE4 6UX or 6 Saville Street North Shields West NE29 6QU', 1, 1),
(3, 'uploads/9_1_1_zQV9NsP.jpg', 'Bespoke Sofas', 'Made In The UK 6 Weeks Lead Time.', 2, 1),
(4, 'uploads/Morano-Black-600x450_k6dHHqJ.jpg', 'Contact One Of Our Stores Today', 'Newcastle 0191 272 2631 - North Shields 0191 649 4146', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `WishList`
--

CREATE TABLE `WishList` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `productid_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `WishList`
--

INSERT INTO `WishList` (`id`, `ip`, `status`, `productid_id`) VALUES
(1, '185.191.171.2', 0, 58),
(1466, '114.119.146.19', 0, 44),
(3, '114.119.146.198', 0, 40),
(4, '114.119.146.18', 0, 70),
(5, '114.119.146.198', 0, 78),
(6, '17.121.112.252', 0, 7),
(8, '114.119.146.198', 0, 9),
(805, '17.121.112.185', 0, 3),
(802, '114.119.146.179', 0, 109),
(847, '17.121.113.105', 0, 8),
(801, '114.119.146.18', 0, 45),
(803, '185.191.171.33', 0, 91),
(812, '17.121.114.141', 0, 9),
(811, '114.119.146.19', 0, 106),
(1368, '185.191.171.44', 0, 8),
(18, '17.121.115.119', 0, 5),
(19, '114.119.146.198', 0, 41),
(20, '114.119.146.179', 0, 76),
(1511, '185.191.171.15', 0, 97),
(22, '185.191.171.22', 0, 96),
(23, '17.121.114.207', 0, 6),
(24, '114.119.146.18', 0, 48),
(671, '114.119.146.18', 0, 71),
(51, '114.119.146.18', 0, 75),
(1402, '114.119.146.195', 0, 37),
(70, '5.9.154.68', 0, 17),
(868, '17.121.114.46', 0, 12),
(68, '5.9.154.68', 0, 14),
(67, '5.9.154.68', 0, 13),
(66, '5.9.154.68', 0, 12),
(65, '5.9.154.68', 0, 113),
(152, '114.119.146.198', 0, 30),
(63, '5.9.154.68', 0, 111),
(62, '5.9.154.68', 0, 110),
(676, '17.121.112.17', 0, 7),
(60, '5.9.154.68', 0, 108),
(59, '5.9.154.68', 0, 107),
(58, '5.9.154.68', 0, 106),
(57, '5.9.154.68', 0, 105),
(56, '5.9.154.68', 0, 104),
(55, '5.9.154.68', 0, 103),
(54, '5.9.154.68', 0, 102),
(53, '5.9.154.68', 0, 101),
(52, '5.9.154.68', 0, 100),
(679, '185.191.171.44', 0, 22),
(1526, '116.202.209.244', 0, 16),
(1426, '114.119.146.179', 0, 98),
(50, '114.119.146.18', 0, 80),
(71, '5.9.154.68', 0, 18),
(72, '5.9.154.68', 0, 19),
(73, '5.9.154.68', 0, 21),
(74, '5.9.154.68', 0, 22),
(75, '5.9.154.68', 0, 23),
(76, '5.9.154.68', 0, 24),
(149, '114.119.146.197', 0, 96),
(79, '5.9.154.68', 0, 27),
(495, '185.191.171.14', 0, 86),
(81, '5.9.154.68', 0, 29),
(82, '5.9.154.68', 0, 30),
(83, '5.9.154.68', 0, 31),
(84, '5.9.154.68', 0, 32),
(85, '5.9.154.68', 0, 33),
(86, '5.9.154.68', 0, 34),
(87, '5.9.154.68', 0, 35),
(88, '5.9.154.68', 0, 36),
(89, '5.9.154.68', 0, 37),
(90, '5.9.154.68', 0, 38),
(91, '5.9.154.68', 0, 39),
(92, '5.9.154.68', 0, 40),
(726, '114.119.146.198', 0, 18),
(94, '5.9.154.68', 0, 42),
(95, '5.9.154.68', 0, 43),
(96, '5.9.154.68', 0, 44),
(97, '5.9.154.68', 0, 45),
(98, '5.9.154.68', 0, 46),
(580, '185.191.171.14', 0, 33),
(100, '5.9.154.68', 0, 53),
(727, '17.121.115.64', 0, 4),
(353, '114.119.146.18', 0, 10),
(881, '114.119.146.179', 0, 20),
(681, '66.249.66.21', 0, 3),
(105, '5.9.154.68', 0, 59),
(106, '5.9.154.68', 0, 60),
(1427, '185.191.171.26', 0, 34),
(108, '5.9.154.68', 0, 62),
(109, '5.9.154.68', 0, 63),
(110, '5.9.154.68', 0, 64),
(111, '5.9.154.68', 0, 65),
(112, '5.9.154.68', 0, 66),
(113, '5.9.154.68', 0, 67),
(114, '5.9.154.68', 0, 68),
(115, '5.9.154.68', 0, 69),
(116, '5.9.154.68', 0, 70),
(117, '5.9.154.68', 0, 74),
(118, '5.9.154.68', 0, 75),
(119, '5.9.154.68', 0, 76),
(120, '5.9.154.68', 0, 77),
(121, '5.9.154.68', 0, 78),
(122, '5.9.154.68', 0, 79),
(123, '5.9.154.68', 0, 80),
(124, '5.9.154.68', 0, 81),
(125, '5.9.154.68', 0, 82),
(126, '5.9.154.68', 0, 83),
(127, '5.9.154.68', 0, 84),
(128, '5.9.154.68', 0, 85),
(129, '5.9.154.68', 0, 86),
(130, '5.9.154.68', 0, 87),
(131, '5.9.154.68', 0, 88),
(132, '5.9.154.68', 0, 89),
(133, '5.9.154.68', 0, 90),
(134, '5.9.154.68', 0, 91),
(135, '5.9.154.68', 0, 92),
(136, '5.9.154.68', 0, 93),
(137, '5.9.154.68', 0, 94),
(138, '5.9.154.68', 0, 95),
(139, '5.9.154.68', 0, 96),
(140, '5.9.154.68', 0, 97),
(141, '5.9.154.68', 0, 98),
(142, '5.9.154.68', 0, 99),
(143, '17.121.115.91', 0, 10),
(144, '114.119.146.18', 0, 42),
(145, '17.121.115.139', 0, 3),
(146, '114.119.146.198', 0, 83),
(148, '17.121.113.40', 0, 4),
(150, '114.119.146.18', 0, 53),
(151, '114.119.136.96', 0, 90),
(153, '114.119.146.179', 0, 82),
(1522, '185.191.171.12', 0, 105),
(174, '136.243.212.110', 0, 99),
(175, '136.243.212.110', 0, 98),
(176, '136.243.212.110', 0, 97),
(177, '136.243.212.110', 0, 96),
(1177, '114.119.146.185', 0, 84),
(179, '136.243.212.110', 0, 94),
(180, '136.243.212.110', 0, 93),
(181, '136.243.212.110', 0, 92),
(182, '136.243.212.110', 0, 91),
(183, '136.243.212.110', 0, 46),
(184, '136.243.212.110', 0, 81),
(185, '136.243.212.110', 0, 103),
(186, '136.243.212.110', 0, 104),
(173, '136.243.212.110', 0, 8),
(187, '136.243.212.110', 0, 105),
(188, '136.243.212.110', 0, 106),
(189, '136.243.212.110', 0, 107),
(190, '136.243.212.110', 0, 108),
(191, '136.243.212.110', 0, 109),
(192, '136.243.212.110', 0, 110),
(193, '136.243.212.110', 0, 111),
(194, '136.243.212.110', 0, 112),
(195, '136.243.212.110', 0, 113),
(196, '136.243.212.110', 0, 12),
(197, '136.243.212.110', 0, 13),
(198, '136.243.212.110', 0, 14),
(867, '17.121.113.63', 0, 7),
(200, '136.243.212.110', 0, 17),
(579, '185.191.171.33', 0, 82),
(866, '17.121.113.50', 0, 11),
(1553, '114.119.146.185', 0, 22),
(204, '136.243.212.110', 0, 22),
(1529, '114.119.146.18', 0, 94),
(1381, '114.119.146.179', 0, 103),
(207, '136.243.212.110', 0, 102),
(208, '136.243.212.110', 0, 26),
(209, '136.243.212.110', 0, 27),
(210, '136.243.212.110', 0, 28),
(211, '136.243.212.110', 0, 29),
(212, '136.243.212.110', 0, 30),
(213, '136.243.212.110', 0, 31),
(387, '17.121.114.42', 0, 12),
(215, '136.243.212.110', 0, 33),
(216, '136.243.212.110', 0, 34),
(217, '136.243.212.110', 0, 35),
(218, '136.243.212.110', 0, 36),
(219, '136.243.212.110', 0, 37),
(220, '136.243.212.110', 0, 38),
(221, '136.243.212.110', 0, 39),
(222, '136.243.212.110', 0, 40),
(223, '136.243.212.110', 0, 41),
(224, '136.243.212.110', 0, 42),
(225, '136.243.212.110', 0, 43),
(226, '136.243.212.110', 0, 44),
(227, '136.243.212.110', 0, 45),
(228, '136.243.212.110', 0, 101),
(229, '136.243.212.110', 0, 47),
(230, '136.243.212.110', 0, 53),
(231, '136.243.212.110', 0, 54),
(232, '136.243.212.110', 0, 56),
(233, '136.243.212.110', 0, 57),
(234, '114.119.146.185', 0, 35),
(235, '136.243.212.110', 0, 58),
(236, '136.243.212.110', 0, 59),
(237, '136.243.212.110', 0, 60),
(238, '136.243.212.110', 0, 61),
(239, '136.243.212.110', 0, 62),
(240, '136.243.212.110', 0, 63),
(241, '136.243.212.110', 0, 64),
(242, '136.243.212.110', 0, 65),
(243, '136.243.212.110', 0, 66),
(244, '136.243.212.110', 0, 67),
(245, '136.243.212.110', 0, 68),
(246, '136.243.212.110', 0, 69),
(247, '136.243.212.110', 0, 70),
(248, '136.243.212.110', 0, 74),
(249, '136.243.212.110', 0, 75),
(250, '136.243.212.110', 0, 76),
(251, '136.243.212.110', 0, 77),
(252, '136.243.212.110', 0, 78),
(253, '136.243.212.110', 0, 79),
(254, '136.243.212.110', 0, 80),
(255, '136.243.212.110', 0, 82),
(256, '136.243.212.110', 0, 83),
(257, '136.243.212.110', 0, 84),
(258, '136.243.212.110', 0, 85),
(259, '136.243.212.110', 0, 86),
(260, '136.243.212.110', 0, 87),
(261, '136.243.212.110', 0, 88),
(262, '136.243.212.110', 0, 89),
(263, '136.243.212.110', 0, 90),
(264, '136.243.212.110', 0, 100),
(265, '136.243.212.110', 0, 25),
(1443, '114.119.146.198', 0, 35),
(267, '114.119.146.18', 0, 103),
(647, '114.119.146.198', 0, 65),
(682, '185.191.171.10', 0, 27),
(355, '66.249.66.17', 0, 90),
(354, '114.119.146.198', 0, 25),
(1359, '17.121.113.215', 0, 5),
(350, '114.119.146.18', 0, 113),
(349, '51.222.253.1', 0, 67),
(348, '114.119.146.198', 0, 57),
(1397, '185.191.171.19', 0, 44),
(346, '51.222.253.10', 0, 66),
(283, '114.119.146.198', 0, 109),
(285, '185.191.171.2', 0, 66),
(286, '66.249.66.21', 0, 20),
(287, '66.249.66.17', 0, 55),
(288, '66.249.66.17', 0, 20),
(289, '66.249.66.17', 0, 96),
(290, '66.249.66.19', 0, 87),
(291, '185.191.171.36', 0, 74),
(292, '114.119.146.18', 0, 20),
(293, '114.119.146.18', 0, 93),
(740, '66.249.66.19', 0, 99),
(1489, '114.119.146.185', 0, 95),
(958, '114.119.146.179', 0, 42),
(723, '66.249.66.17', 0, 76),
(1660, '114.119.146.197', 0, 35),
(1493, '82.165.224.95', 0, 6),
(562, '114.119.146.179', 0, 70),
(1494, '82.165.224.63', 0, 49),
(735, '185.191.171.42', 0, 95),
(734, '17.121.115.78', 0, 12),
(733, '17.121.114.66', 0, 1),
(1146, '185.191.171.11', 0, 90),
(731, '185.191.171.36', 0, 45),
(1201, '17.121.114.17', 0, 11),
(729, '114.119.146.198', 0, 23),
(728, '17.121.115.198', 0, 10),
(725, '185.191.171.40', 0, 93),
(1633, '114.119.146.195', 0, 63),
(1200, '185.191.171.20', 0, 47),
(937, '212.227.216.88', 0, 51),
(1367, '185.191.171.42', 0, 68),
(935, '212.227.216.56', 0, 10),
(934, '212.227.216.8', 0, 3),
(979, '17.121.112.31', 0, 10),
(932, '212.227.216.120', 0, 55),
(931, '212.227.216.8', 0, 13),
(999, '185.191.171.18', 0, 13),
(929, '212.227.216.24', 0, 16),
(928, '114.119.146.185', 0, 111),
(926, '114.119.146.18', 0, 69),
(925, '114.119.146.19', 0, 24),
(924, '17.121.112.233', 0, 5),
(978, '17.121.115.115', 0, 12),
(1151, '114.119.146.185', 0, 97),
(1277, '185.191.171.20', 0, 41),
(1276, '185.191.171.23', 0, 8),
(1275, '185.191.171.26', 0, 68),
(1274, '185.191.171.6', 0, 37),
(749, '66.249.66.17', 0, 100),
(1577, '17.121.112.229', 0, 1),
(1392, '185.191.171.6', 0, 60),
(359, '66.249.66.19', 0, 90),
(360, '66.249.66.17', 0, 104),
(361, '35.240.54.168', 0, 1),
(362, '35.240.54.168', 0, 10),
(363, '35.240.54.168', 0, 11),
(364, '35.240.54.168', 0, 16),
(880, '114.119.146.198', 0, 70),
(366, '35.240.54.168', 0, 20),
(367, '35.240.54.168', 0, 3),
(368, '35.240.54.168', 0, 4),
(369, '35.240.54.168', 0, 48),
(370, '35.240.54.168', 0, 49),
(371, '35.240.54.168', 0, 50),
(372, '35.240.54.168', 0, 5),
(373, '35.240.54.168', 0, 51),
(374, '35.240.54.168', 0, 52),
(375, '35.240.54.168', 0, 55),
(376, '35.240.54.168', 0, 7),
(377, '35.240.54.168', 0, 6),
(378, '35.240.54.168', 0, 8),
(379, '35.240.54.168', 0, 9),
(539, '185.191.171.22', 0, 31),
(1273, '185.191.171.15', 0, 85),
(383, '185.191.171.11', 0, 10),
(384, '17.121.115.237', 0, 1),
(385, '17.121.115.95', 0, 6),
(386, '185.191.171.42', 0, 77),
(389, '17.121.112.72', 0, 7),
(390, '114.119.146.18', 0, 112),
(391, '185.191.171.26', 0, 107),
(392, '17.121.113.11', 0, 11),
(1450, '185.191.171.37', 0, 92),
(395, '66.249.66.19', 0, 109),
(396, '66.249.66.17', 0, 34),
(397, '66.249.66.19', 0, 91),
(398, '66.249.66.21', 0, 83),
(399, '66.249.66.19', 0, 31),
(770, '66.249.66.19', 0, 29),
(401, '66.249.66.17', 0, 26),
(402, '66.249.66.19', 0, 61),
(403, '66.249.66.19', 0, 44),
(404, '114.119.146.18', 0, 22),
(1620, '185.191.171.2', 0, 99),
(406, '114.119.146.198', 0, 34),
(408, '54.91.95.187', 0, 1),
(409, '114.119.146.198', 0, 110),
(410, '185.191.171.10', 0, 16),
(411, '185.191.171.38', 0, 17),
(412, '114.119.146.179', 0, 28),
(413, '114.119.146.179', 0, 6),
(414, '17.121.114.40', 0, 3),
(1425, '114.119.146.185', 0, 66),
(416, '185.191.171.18', 0, 79),
(418, '114.119.146.19', 0, 32),
(419, '114.119.146.179', 0, 1),
(420, '185.191.171.3', 0, 44),
(421, '114.119.146.185', 0, 81),
(422, '185.191.171.38', 0, 74),
(423, '185.191.171.20', 0, 61),
(1307, '185.191.171.23', 0, 40),
(425, '17.121.115.135', 0, 8),
(1001, '185.191.171.8', 0, 5),
(427, '185.191.171.15', 0, 11),
(428, '17.121.115.73', 0, 4),
(1486, '114.119.146.18', 0, 27),
(430, '114.119.146.19', 0, 85),
(431, '114.119.146.198', 0, 99),
(1663, '185.191.171.40', 0, 108),
(433, '185.191.171.10', 0, 55),
(434, '66.249.66.19', 0, 101),
(435, '114.119.146.19', 0, 51),
(879, '114.119.146.198', 0, 45),
(437, '17.121.114.235', 0, 5),
(438, '114.119.146.185', 0, 63),
(864, '192.99.18.108', 0, 1),
(1182, '114.119.146.185', 0, 70),
(441, '66.249.66.77', 0, 50),
(442, '66.249.66.21', 0, 67),
(1469, '185.191.171.16', 0, 35),
(444, '185.191.171.42', 0, 36),
(445, '185.191.171.13', 0, 3),
(446, '185.191.171.17', 0, 10),
(447, '185.191.171.7', 0, 21),
(448, '185.191.171.21', 0, 20),
(823, '114.119.146.18', 0, 73),
(675, '114.119.146.198', 0, 77),
(878, '114.119.146.179', 0, 37),
(670, '17.121.115.220', 0, 11),
(669, '17.121.114.22', 0, 6),
(668, '185.191.171.10', 0, 68),
(457, '185.119.81.99', 0, 8),
(458, '185.119.81.99', 0, 50),
(459, '185.119.81.99', 0, 20),
(460, '185.119.81.99', 0, 51),
(461, '185.119.81.99', 0, 52),
(462, '185.119.81.99', 0, 11),
(463, '185.119.81.99', 0, 10),
(464, '185.119.81.99', 0, 49),
(465, '185.119.81.99', 0, 48),
(466, '185.119.81.99', 0, 55),
(467, '185.119.81.99', 0, 16),
(468, '185.119.81.99', 0, 83),
(469, '185.119.81.99', 0, 84),
(470, '185.119.81.99', 0, 17),
(471, '185.119.81.99', 0, 82),
(472, '185.119.81.99', 0, 85),
(659, '185.191.171.24', 0, 82),
(1551, '114.119.146.197', 0, 75),
(1528, '116.202.209.244', 0, 55),
(662, '66.249.66.19', 0, 4),
(983, '114.119.136.99', 0, 99),
(664, '185.191.171.19', 0, 66),
(665, '66.249.66.76', 0, 51),
(666, '185.191.171.13', 0, 37),
(667, '17.121.114.155', 0, 1),
(487, '185.191.171.14', 0, 7),
(488, '185.191.171.14', 0, 63),
(489, '185.191.171.38', 0, 83),
(490, '185.191.171.9', 0, 18),
(862, '114.119.146.18', 0, 33),
(492, '185.191.171.33', 0, 75),
(493, '51.222.253.5', 0, 37),
(494, '185.191.171.6', 0, 77),
(496, '51.222.253.7', 0, 38),
(497, '114.119.146.198', 0, 7),
(1554, '114.119.146.195', 0, 76),
(499, '185.191.171.23', 0, 1),
(500, '185.191.171.20', 0, 59),
(501, '114.119.146.179', 0, 78),
(502, '114.119.146.179', 0, 45),
(503, '114.119.146.179', 0, 18),
(504, '185.191.171.44', 0, 76),
(505, '185.191.171.20', 0, 26),
(506, '185.191.171.13', 0, 14),
(507, '185.191.171.33', 0, 62),
(508, '66.249.66.21', 0, 35),
(509, '66.249.66.19', 0, 35),
(510, '185.191.171.6', 0, 107),
(511, '185.191.171.23', 0, 13),
(512, '185.191.171.42', 0, 4),
(514, '85.25.93.236', 0, 1),
(516, '85.25.93.236', 0, 3),
(517, '85.25.93.236', 0, 4),
(518, '85.25.93.236', 0, 5),
(519, '85.25.93.236', 0, 9),
(520, '85.25.93.236', 0, 10),
(521, '85.25.93.236', 0, 11),
(522, '85.25.93.236', 0, 13),
(523, '85.25.93.236', 0, 14),
(524, '85.25.93.236', 0, 19),
(525, '85.25.93.236', 0, 31),
(526, '85.25.93.236', 0, 32),
(527, '85.25.93.236', 0, 44),
(528, '85.25.93.236', 0, 83),
(529, '85.25.93.236', 0, 84),
(530, '85.25.93.236', 0, 90),
(531, '85.25.93.236', 0, 91),
(532, '85.25.93.236', 0, 43),
(533, '114.119.146.198', 0, 44),
(534, '185.191.171.18', 0, 5),
(535, '114.119.146.198', 0, 106),
(536, '185.191.171.20', 0, 24),
(538, '185.191.171.9', 0, 84),
(1487, '185.191.171.9', 0, 109),
(541, '185.191.171.11', 0, 64),
(542, '185.191.171.26', 0, 69),
(543, '185.191.171.5', 0, 60),
(1131, '114.119.146.198', 0, 32),
(545, '185.191.171.19', 0, 40),
(546, '185.191.171.7', 0, 110),
(547, '185.191.171.18', 0, 58),
(548, '114.119.146.18', 0, 97),
(549, '185.191.171.42', 0, 67),
(550, '17.121.112.67', 0, 9),
(551, '17.121.115.231', 0, 10),
(552, '185.191.171.3', 0, 16),
(553, '17.121.112.218', 0, 6),
(554, '17.121.112.100', 0, 7),
(555, '17.121.115.198', 0, 1),
(556, '185.191.171.7', 0, 109),
(557, '185.191.171.4', 0, 79),
(558, '17.121.112.236', 0, 11),
(559, '185.191.171.19', 0, 65),
(560, '185.191.171.37', 0, 44),
(561, '185.191.171.24', 0, 111),
(563, '185.191.171.2', 0, 70),
(564, '185.191.171.41', 0, 61),
(565, '114.119.146.198', 0, 43),
(742, '185.191.171.37', 0, 57),
(568, '185.191.171.21', 0, 78),
(569, '185.191.171.33', 0, 30),
(570, '185.191.171.40', 0, 11),
(571, '185.191.171.9', 0, 39),
(572, '185.191.171.42', 0, 25),
(1544, '114.119.146.179', 0, 87),
(574, '185.191.171.21', 0, 43),
(980, '114.119.146.198', 0, 98),
(952, '114.119.146.185', 0, 39),
(577, '185.191.171.10', 0, 12),
(1485, '185.191.171.14', 0, 101),
(581, '114.119.146.185', 0, 55),
(582, '185.191.171.11', 0, 38),
(583, '185.191.171.26', 0, 66),
(584, '185.191.171.4', 0, 35),
(672, '17.121.114.185', 0, 10),
(586, '185.191.171.35', 0, 85),
(587, '185.191.171.20', 0, 37),
(588, '185.191.171.24', 0, 68),
(589, '185.191.171.19', 0, 8),
(590, '185.191.171.24', 0, 41),
(591, '66.249.66.21', 0, 87),
(592, '114.119.146.185', 0, 56),
(1369, '185.191.171.37', 0, 41),
(594, '66.249.66.21', 0, 96),
(809, '17.121.114.246', 0, 11),
(808, '17.121.113.155', 0, 5),
(597, '185.191.171.8', 0, 100),
(598, '185.191.171.3', 0, 113),
(599, '185.191.171.10', 0, 32),
(600, '185.191.171.45', 0, 96),
(601, '185.191.171.18', 0, 27),
(602, '185.191.171.37', 0, 53),
(603, '185.191.171.40', 0, 92),
(604, '185.191.171.44', 0, 48),
(605, '185.191.171.45', 0, 29),
(606, '185.191.171.12', 0, 52),
(607, '114.119.146.185', 0, 96),
(608, '114.119.146.179', 0, 16),
(1127, '185.191.171.39', 0, 11),
(610, '185.191.171.1', 0, 42),
(611, '114.119.146.185', 0, 31),
(1189, '114.119.146.179', 0, 52),
(613, '114.119.146.18', 0, 12),
(614, '114.119.146.18', 0, 9),
(615, '185.191.171.43', 0, 34),
(616, '185.191.171.23', 0, 80),
(807, '185.191.171.19', 0, 88),
(789, '114.119.146.18', 0, 105),
(1552, '114.119.146.195', 0, 98),
(1576, '114.119.146.198', 0, 50),
(621, '185.191.171.38', 0, 47),
(623, '185.191.171.40', 0, 94),
(624, '185.191.171.3', 0, 54),
(625, '185.191.171.37', 0, 6),
(626, '114.119.146.179', 0, 62),
(627, '185.191.171.14', 0, 49),
(628, '185.191.171.33', 0, 87),
(629, '185.191.171.13', 0, 46),
(1558, '114.119.146.185', 0, 88),
(631, '185.191.171.12', 0, 51),
(632, '114.119.146.19', 0, 35),
(633, '185.191.171.7', 0, 69),
(634, '185.191.171.36', 0, 60),
(635, '185.191.171.37', 0, 40),
(636, '185.191.171.25', 0, 110),
(637, '185.191.171.45', 0, 67),
(638, '114.119.146.18', 0, 49),
(639, '185.191.171.43', 0, 45),
(640, '17.121.114.77', 0, 8),
(1520, '114.119.146.195', 0, 84),
(642, '114.119.146.185', 0, 100),
(643, '17.121.114.89', 0, 3),
(644, '114.119.146.198', 0, 64),
(645, '114.119.146.198', 0, 20),
(646, '17.121.112.232', 0, 12),
(1557, '185.191.171.14', 0, 36),
(649, '185.191.171.33', 0, 50),
(650, '185.191.171.35', 0, 57),
(651, '17.121.115.240', 0, 5),
(652, '185.191.171.6', 0, 25),
(653, '114.119.146.185', 0, 3),
(654, '185.191.171.23', 0, 56),
(655, '185.191.171.35', 0, 12),
(656, '114.119.146.18', 0, 38),
(657, '17.121.113.62', 0, 4),
(658, '114.119.146.19', 0, 52),
(677, '114.119.146.19', 0, 80),
(678, '185.191.171.41', 0, 100),
(680, '114.119.146.18', 0, 79),
(1396, '185.191.171.6', 0, 95),
(684, '114.119.146.18', 0, 34),
(685, '114.119.146.19', 0, 47),
(686, '114.119.146.19', 0, 5),
(687, '66.249.66.21', 0, 66),
(688, '66.249.66.17', 0, 33),
(1435, '185.191.171.18', 0, 28),
(690, '66.249.66.17', 0, 32),
(691, '66.249.66.19', 0, 60),
(692, '114.119.146.19', 0, 10),
(693, '66.249.66.17', 0, 109),
(694, '66.249.66.21', 0, 60),
(695, '185.191.171.43', 0, 42),
(1272, '114.119.146.179', 0, 105),
(1271, '185.191.171.11', 0, 19),
(1270, '185.191.171.41', 0, 66),
(877, '114.119.146.18', 0, 16),
(1269, '81.152.194.155', 0, 4),
(1399, '114.119.146.195', 0, 21),
(1267, '81.152.194.155', 0, 20),
(780, '114.119.146.179', 0, 59),
(1266, '81.152.194.155', 0, 16),
(1305, '185.191.171.42', 0, 69),
(1264, '81.152.194.155', 0, 11),
(1263, '81.152.194.155', 0, 10),
(709, '17.121.112.9', 0, 8),
(710, '185.191.171.18', 0, 47),
(975, '185.191.171.17', 0, 89),
(713, '114.119.146.18', 0, 50),
(1404, '114.119.146.185', 0, 4),
(715, '17.121.113.225', 0, 5),
(716, '185.191.171.45', 0, 49),
(717, '17.121.114.209', 0, 3),
(718, '114.119.146.19', 0, 89),
(719, '185.191.171.7', 0, 87),
(720, '114.119.146.198', 0, 104),
(721, '185.191.171.22', 0, 46),
(1262, '81.152.194.155', 0, 1),
(741, '114.119.146.179', 0, 101),
(743, '114.119.146.179', 0, 4),
(745, '114.119.146.179', 0, 110),
(1634, '185.191.171.24', 0, 87),
(747, '185.191.171.26', 0, 25),
(748, '185.191.171.22', 0, 56),
(750, '114.119.146.179', 0, 51),
(876, '114.119.146.19', 0, 59),
(752, '66.249.66.21', 0, 39),
(964, '185.191.171.22', 0, 106),
(754, '185.191.171.8', 0, 104),
(955, '114.119.146.18', 0, 60),
(756, '185.191.171.23', 0, 66),
(757, '185.191.171.18', 0, 38),
(758, '17.121.112.111', 0, 5),
(759, '114.119.146.185', 0, 93),
(1656, '114.119.146.195', 0, 31),
(761, '17.121.114.14', 0, 9),
(762, '114.119.146.19', 0, 26),
(763, '17.121.112.229', 0, 6),
(1659, '114.119.146.195', 0, 71),
(765, '66.249.66.77', 0, 6),
(766, '114.119.146.179', 0, 60),
(767, '66.249.66.17', 0, 85),
(768, '66.249.66.19', 0, 85),
(769, '66.249.66.17', 0, 29),
(771, '185.191.171.25', 0, 97),
(772, '114.119.146.18', 0, 8),
(773, '185.191.171.15', 0, 22),
(1433, '185.191.171.22', 0, 111),
(775, '114.119.146.185', 0, 42),
(776, '114.119.146.198', 0, 84),
(777, '159.69.58.136', 0, 16),
(778, '159.69.58.136', 0, 20),
(883, '114.119.146.18', 0, 85),
(781, '114.119.146.179', 0, 44),
(782, '114.119.146.179', 0, 88),
(783, '114.119.146.18', 0, 81),
(784, '17.121.113.179', 0, 10),
(785, '17.121.113.100', 0, 7),
(786, '17.121.114.172', 0, 1),
(787, '114.119.146.198', 0, 97),
(788, '17.121.114.202', 0, 8),
(869, '114.119.146.198', 0, 74),
(793, '114.119.146.198', 0, 24),
(794, '185.191.171.1', 0, 102),
(814, '114.119.146.19', 0, 36),
(797, '114.119.146.185', 0, 87),
(1467, '185.191.171.1', 0, 12),
(1531, '185.191.171.22', 0, 74),
(813, '114.119.146.18', 0, 19),
(815, '114.119.146.18', 0, 31),
(816, '17.121.115.86', 0, 6),
(817, '17.121.114.133', 0, 12),
(818, '17.121.114.5', 0, 1),
(1617, '114.119.146.179', 0, 100),
(1640, '157.90.177.233', 0, 115),
(821, '17.121.112.63', 0, 8),
(822, '17.121.115.101', 0, 10),
(824, '185.191.171.18', 0, 105),
(1407, '185.191.171.25', 0, 100),
(826, '114.119.146.179', 0, 38),
(827, '185.191.171.20', 0, 102),
(828, '17.121.112.163', 0, 11),
(829, '17.121.114.251', 0, 4),
(830, '114.119.146.197', 0, 71),
(831, '114.119.146.179', 0, 113),
(874, '114.119.146.179', 0, 99),
(833, '114.119.146.18', 0, 5),
(834, '17.121.114.67', 0, 5),
(835, '114.119.146.198', 0, 21),
(836, '192.99.18.136', 0, 1),
(1446, '185.191.171.10', 0, 97),
(838, '114.119.146.179', 0, 90),
(1196, '185.191.171.44', 0, 96),
(1618, '114.119.146.197', 0, 21),
(841, '114.119.146.185', 0, 104),
(842, '114.119.146.179', 0, 56),
(1364, '114.119.146.18', 0, 41),
(1597, '114.119.146.195', 0, 67),
(1488, '114.119.146.197', 0, 99),
(846, '17.121.115.251', 0, 1),
(1422, '114.119.146.197', 0, 101),
(849, '114.119.146.185', 0, 102),
(1405, '185.191.171.9', 0, 41),
(851, '17.121.112.57', 0, 10),
(854, '114.119.146.18', 0, 66),
(1530, '114.119.146.198', 0, 12),
(856, '114.119.146.179', 0, 47),
(857, '17.121.112.131', 0, 9),
(858, '185.191.171.34', 0, 28),
(859, '114.119.146.185', 0, 7),
(860, '17.121.112.180', 0, 5),
(1532, '17.121.113.222', 0, 12),
(863, '185.191.171.24', 0, 103),
(870, '114.119.146.185', 0, 92),
(871, '17.121.115.40', 0, 8),
(885, '114.119.146.185', 0, 36),
(873, '17.121.112.52', 0, 3),
(884, '114.119.146.197', 0, 32),
(886, '185.191.171.1', 0, 108),
(887, '114.119.146.179', 0, 57),
(1261, '185.191.171.25', 0, 33),
(1593, '185.191.171.19', 0, 104),
(1655, '114.119.146.18', 0, 11),
(892, '17.121.113.64', 0, 9),
(893, '17.121.114.77', 0, 4),
(1490, '114.119.146.18', 0, 61),
(895, '185.191.171.13', 0, 103),
(896, '114.119.146.185', 0, 82),
(1260, '114.119.146.185', 0, 99),
(1259, '185.191.171.9', 0, 82),
(1258, '185.191.171.19', 0, 56),
(1256, '185.191.171.33', 0, 23),
(1255, '17.121.114.156', 0, 4),
(1293, '185.191.171.16', 0, 42),
(1143, '114.119.146.18', 0, 108),
(1661, '185.191.171.45', 0, 11),
(1658, '114.119.146.18', 0, 44),
(1147, '185.191.171.6', 0, 83),
(1181, '114.119.146.198', 0, 8),
(1657, '114.119.146.195', 0, 69),
(1654, '114.119.146.195', 0, 47),
(1438, '114.119.146.18', 0, 90),
(940, '212.227.216.24', 0, 8),
(941, '212.227.216.120', 0, 9),
(942, '212.227.216.104', 0, 49),
(943, '212.227.216.88', 0, 48),
(944, '212.227.216.72', 0, 4),
(945, '212.227.216.56', 0, 5),
(946, '212.227.216.24', 0, 7),
(947, '212.227.216.24', 0, 20),
(1598, '212.227.216.51', 0, 1),
(949, '114.119.146.18', 0, 104),
(950, '114.119.146.198', 0, 71),
(1564, '114.119.146.195', 0, 65),
(1479, '114.119.146.18', 0, 92),
(1599, '212.227.216.99', 0, 13),
(1662, '185.191.171.16', 0, 55),
(961, '17.121.115.76', 0, 3),
(1385, '17.121.114.228', 0, 8),
(1555, '114.119.146.19', 0, 111),
(965, '17.121.114.142', 0, 9),
(966, '17.121.114.253', 0, 5),
(967, '17.121.112.191', 0, 8),
(968, '17.121.114.108', 0, 10),
(1524, '185.191.171.17', 0, 110),
(970, '17.121.114.227', 0, 12),
(971, '17.121.112.171', 0, 6),
(973, '185.191.171.43', 0, 116),
(1619, '114.119.146.18', 0, 32),
(976, '185.191.171.40', 0, 74),
(977, '114.119.146.179', 0, 63),
(981, '114.119.146.185', 0, 21),
(982, '17.121.112.68', 0, 1),
(984, '17.121.115.39', 0, 5),
(985, '185.191.171.16', 0, 10),
(986, '114.119.146.185', 0, 74),
(987, '185.191.171.42', 0, 115),
(988, '114.119.146.179', 0, 31),
(989, '17.121.113.246', 0, 4),
(990, '114.119.146.185', 0, 27),
(1432, '17.121.112.4', 0, 10),
(993, '185.191.171.19', 0, 48),
(994, '185.191.171.23', 0, 76),
(995, '185.191.171.1', 0, 52),
(996, '17.121.115.48', 0, 8),
(997, '185.191.171.14', 0, 62),
(998, '185.191.171.16', 0, 14),
(1000, '185.191.171.6', 0, 4),
(1002, '185.191.171.23', 0, 99),
(1003, '17.121.115.41', 0, 5),
(1004, '17.121.112.27', 0, 1),
(1036, '142.132.248.90', 0, 34),
(1033, '142.132.248.90', 0, 27),
(1032, '142.132.248.90', 0, 53),
(1038, '142.132.248.90', 0, 109),
(1028, '142.132.248.90', 0, 54),
(1192, '17.121.114.208', 0, 10),
(1011, '142.132.248.90', 0, 10),
(1012, '142.132.248.90', 0, 8),
(1013, '142.132.248.90', 0, 50),
(1014, '142.132.248.90', 0, 48),
(1015, '142.132.248.90', 0, 16),
(1016, '142.132.248.90', 0, 7),
(1017, '142.132.248.90', 0, 55),
(1018, '142.132.248.90', 0, 3),
(1257, '17.121.112.77', 0, 5),
(1020, '142.132.248.90', 0, 6),
(1021, '142.132.248.90', 0, 5),
(1022, '142.132.248.90', 0, 20),
(1023, '142.132.248.90', 0, 13),
(1024, '142.132.248.90', 0, 64),
(1025, '142.132.248.90', 0, 35),
(1026, '142.132.248.90', 0, 68),
(1027, '142.132.248.90', 0, 23),
(1308, '185.191.171.43', 0, 67),
(1030, '142.132.248.90', 0, 56),
(1031, '142.132.248.90', 0, 41),
(1034, '142.132.248.90', 0, 24),
(1035, '142.132.248.90', 0, 29),
(1037, '142.132.248.90', 0, 40),
(1039, '142.132.248.90', 0, 94),
(1040, '142.132.248.90', 0, 86),
(1041, '142.132.248.90', 0, 18),
(1042, '142.132.248.90', 0, 103),
(1043, '142.132.248.90', 0, 102),
(1044, '142.132.248.90', 0, 110),
(1045, '142.132.248.90', 0, 60),
(1046, '142.132.248.90', 0, 77),
(1047, '142.132.248.90', 0, 67),
(1048, '142.132.248.90', 0, 45),
(1049, '142.132.248.90', 0, 37),
(1050, '142.132.248.90', 0, 84),
(1051, '142.132.248.90', 0, 99),
(1052, '142.132.248.90', 0, 57),
(1053, '142.132.248.90', 0, 58),
(1054, '142.132.248.90', 0, 70),
(1055, '142.132.248.90', 0, 25),
(1056, '142.132.248.90', 0, 59),
(1057, '142.132.248.90', 0, 62),
(1058, '142.132.248.90', 0, 66),
(1059, '142.132.248.90', 0, 82),
(1060, '142.132.248.90', 0, 97),
(1061, '142.132.248.90', 0, 32),
(1062, '142.132.248.90', 0, 74),
(1063, '142.132.248.90', 0, 12),
(1064, '142.132.248.90', 0, 69),
(1065, '142.132.248.90', 0, 21),
(1066, '142.132.248.90', 0, 19),
(1067, '142.132.248.90', 0, 100),
(1068, '142.132.248.90', 0, 89),
(1069, '142.132.248.90', 0, 83),
(1070, '142.132.248.90', 0, 91),
(1071, '142.132.248.90', 0, 88),
(1072, '142.132.248.90', 0, 26),
(1144, '185.191.171.8', 0, 21),
(1075, '142.132.248.90', 0, 90),
(1076, '142.132.248.90', 0, 93),
(1077, '142.132.248.90', 0, 113),
(1078, '142.132.248.90', 0, 14),
(1079, '142.132.248.90', 0, 98),
(1080, '142.132.248.90', 0, 95),
(1081, '142.132.248.90', 0, 108),
(1082, '142.132.248.90', 0, 42),
(1083, '142.132.248.90', 0, 107),
(1084, '142.132.248.90', 0, 105),
(1085, '142.132.248.90', 0, 85),
(1086, '142.132.248.90', 0, 106),
(1087, '142.132.248.90', 0, 44),
(1088, '142.132.248.90', 0, 104),
(1089, '142.132.248.90', 0, 33),
(1090, '142.132.248.90', 0, 112),
(1091, '142.132.248.90', 0, 17),
(1092, '142.132.248.90', 0, 101),
(1093, '142.132.248.90', 0, 31),
(1094, '142.132.248.90', 0, 61),
(1095, '142.132.248.90', 0, 111),
(1096, '142.132.248.90', 0, 96),
(1097, '142.132.248.90', 0, 30),
(1098, '142.132.248.90', 0, 92),
(1099, '142.132.248.90', 0, 81),
(1100, '142.132.248.90', 0, 39),
(1101, '142.132.248.90', 0, 79),
(1102, '142.132.248.90', 0, 75),
(1103, '142.132.248.90', 0, 76),
(1104, '142.132.248.90', 0, 78),
(1105, '142.132.248.90', 0, 65),
(1106, '142.132.248.90', 0, 46),
(1107, '142.132.248.90', 0, 80),
(1108, '142.132.248.90', 0, 115),
(1109, '142.132.248.90', 0, 38),
(1110, '142.132.248.90', 0, 63),
(1111, '142.132.248.90', 0, 43),
(1112, '142.132.248.90', 0, 28),
(1113, '142.132.248.90', 0, 116),
(1114, '142.132.248.90', 0, 36),
(1116, '114.119.146.198', 0, 27),
(1117, '17.121.113.74', 0, 6),
(1118, '17.121.114.211', 0, 11),
(1119, '17.121.112.193', 0, 7),
(1120, '185.191.171.7', 0, 17),
(1121, '185.191.171.5', 0, 16),
(1122, '17.121.114.148', 0, 9),
(1123, '185.191.171.20', 0, 79),
(1515, '185.191.171.13', 0, 63),
(1125, '185.191.171.15', 0, 61),
(1559, '114.119.146.195', 0, 101),
(1188, '114.119.146.179', 0, 116),
(1448, '185.191.171.2', 0, 63),
(1130, '114.119.146.179', 0, 33),
(1133, '114.119.146.18', 0, 67),
(1134, '185.191.171.40', 0, 36),
(1135, '114.119.146.185', 0, 34),
(1664, '185.191.171.17', 0, 104),
(1137, '114.119.146.198', 0, 90),
(1138, '17.121.113.33', 0, 12),
(1139, '114.119.146.179', 0, 30),
(1140, '185.191.171.25', 0, 3),
(1141, '114.119.146.18', 0, 7),
(1142, '114.119.136.88', 0, 9),
(1145, '17.121.114.39', 0, 10),
(1495, '82.165.224.15', 0, 48),
(1149, '185.191.171.19', 0, 7),
(1150, '114.119.146.198', 0, 53),
(1152, '114.119.146.179', 0, 80),
(1378, '185.191.171.37', 0, 59),
(1393, '114.119.146.185', 0, 113),
(1155, '185.191.171.25', 0, 1),
(1156, '185.191.171.4', 0, 48),
(1157, '185.191.171.19', 0, 52),
(1158, '185.191.171.3', 0, 76),
(1159, '185.191.171.40', 0, 14),
(1160, '185.191.171.17', 0, 62),
(1161, '185.191.171.2', 0, 13),
(1162, '185.191.171.45', 0, 4),
(1163, '185.191.171.42', 0, 5),
(1164, '114.119.146.179', 0, 58),
(1165, '114.119.146.18', 0, 109),
(1638, '185.191.171.4', 0, 58),
(1167, '114.119.146.185', 0, 1),
(1168, '114.119.146.19', 0, 103),
(1169, '114.119.146.198', 0, 103),
(1170, '114.119.146.18', 0, 64),
(1171, '17.121.115.47', 0, 4),
(1172, '17.121.114.34', 0, 7),
(1173, '17.121.113.105', 0, 11),
(1174, '17.121.113.186', 0, 1),
(1175, '17.121.113.237', 0, 3),
(1176, '185.191.171.36', 0, 16),
(1178, '114.119.146.179', 0, 61),
(1179, '185.191.171.41', 0, 98),
(1565, '185.191.171.36', 0, 77),
(1184, '114.119.146.197', 0, 3),
(1185, '114.119.146.18', 0, 101),
(1186, '17.121.113.40', 0, 9),
(1187, '17.121.114.136', 0, 8),
(1190, '114.119.146.198', 0, 75),
(1191, '17.121.115.181', 0, 5),
(1194, '185.191.171.36', 0, 90),
(1195, '114.119.146.198', 0, 19),
(1197, '185.191.171.13', 0, 26),
(1198, '17.121.113.186', 0, 3),
(1199, '17.121.115.24', 0, 1),
(1202, '17.121.114.91', 0, 12),
(1449, '114.119.146.195', 0, 100),
(1204, '185.191.171.6', 0, 24),
(1205, '185.191.171.35', 0, 9),
(1206, '185.191.171.44', 0, 49),
(1207, '185.191.171.9', 0, 87),
(1208, '185.191.171.13', 0, 84),
(1209, '17.121.112.76', 0, 7),
(1210, '185.191.171.7', 0, 31),
(1211, '114.119.146.198', 0, 39),
(1212, '185.191.171.34', 0, 64),
(1213, '114.119.146.185', 0, 12),
(1214, '114.119.146.18', 0, 40),
(1215, '185.191.171.22', 0, 58),
(1216, '185.191.171.42', 0, 45),
(1217, '185.191.171.1', 0, 65),
(1218, '185.191.171.40', 0, 70),
(1219, '185.191.171.9', 0, 44),
(1220, '114.119.146.198', 0, 100),
(1221, '185.191.171.26', 0, 81),
(1390, '185.191.171.40', 0, 51),
(1223, '185.191.171.24', 0, 30),
(1224, '185.191.171.26', 0, 39),
(1225, '185.191.171.41', 0, 25),
(1226, '185.191.171.8', 0, 43),
(1232, '157.90.177.233', 0, 50),
(1233, '157.90.177.233', 0, 51),
(1234, '157.90.177.233', 0, 52),
(1235, '157.90.177.233', 0, 53),
(1236, '157.90.177.233', 0, 54),
(1237, '157.90.177.233', 0, 55),
(1238, '157.90.177.233', 0, 57),
(1239, '157.90.177.233', 0, 58),
(1447, '114.119.136.88', 0, 107),
(1241, '157.90.177.233', 0, 60),
(1242, '157.90.177.233', 0, 61),
(1321, '17.121.112.229', 0, 9),
(1244, '157.90.177.233', 0, 63),
(1245, '157.90.177.233', 0, 64),
(1246, '157.90.177.233', 0, 65),
(1247, '157.90.177.233', 0, 66),
(1248, '157.90.177.233', 0, 67),
(1249, '157.90.177.233', 0, 68),
(1250, '157.90.177.233', 0, 69),
(1306, '185.191.171.26', 0, 60),
(1252, '157.90.177.233', 0, 75),
(1253, '157.90.177.233', 0, 76),
(1254, '157.90.177.233', 0, 77),
(1278, '185.191.171.2', 0, 88),
(1279, '185.191.171.34', 0, 22),
(1280, '185.191.171.23', 0, 18),
(1299, '185.191.171.43', 0, 54),
(1282, '185.191.171.35', 0, 75),
(1283, '185.191.171.16', 0, 86),
(1284, '185.191.171.15', 0, 27),
(1285, '185.191.171.2', 0, 59),
(1286, '185.191.171.33', 0, 53),
(1287, '185.191.171.6', 0, 29),
(1288, '157.90.177.233', 0, 111),
(1289, '157.90.177.233', 0, 88),
(1290, '17.121.113.107', 0, 6),
(1291, '17.121.115.228', 0, 10),
(1292, '17.121.115.208', 0, 12),
(1294, '114.119.146.195', 0, 11),
(1295, '17.121.114.76', 0, 11),
(1556, '17.121.115.56', 0, 1),
(1297, '17.121.115.207', 0, 8),
(1298, '185.191.171.8', 0, 94),
(1300, '185.191.171.21', 0, 6),
(1527, '116.202.209.244', 0, 20),
(1596, '114.119.146.195', 0, 61),
(1523, '114.119.146.185', 0, 33),
(1304, '185.191.171.37', 0, 51),
(1309, '114.119.146.198', 0, 55),
(1310, '185.191.171.19', 0, 95),
(1311, '185.191.171.4', 0, 65),
(1312, '17.121.113.199', 0, 4),
(1313, '185.191.171.35', 0, 44),
(1314, '185.191.171.38', 0, 81),
(1315, '185.191.171.16', 0, 50),
(1316, '185.191.171.10', 0, 30),
(1317, '114.119.146.18', 0, 89),
(1318, '114.119.146.195', 0, 25),
(1319, '185.191.171.35', 0, 39),
(1320, '185.191.171.6', 0, 57),
(1398, '185.191.171.43', 0, 50),
(1323, '174.127.90.44', 0, 7),
(1324, '174.127.90.44', 0, 3),
(1325, '174.127.90.44', 0, 8),
(1326, '174.127.90.44', 0, 1),
(1327, '174.127.90.44', 0, 48),
(1328, '174.127.90.44', 0, 4),
(1329, '174.127.90.44', 0, 16),
(1330, '174.127.90.44', 0, 49),
(1331, '174.127.90.44', 0, 20),
(1332, '174.127.90.44', 0, 55),
(1333, '174.127.90.44', 0, 50),
(1334, '174.127.90.44', 0, 5),
(1335, '174.127.90.44', 0, 51),
(1336, '174.127.90.44', 0, 52),
(1337, '174.127.90.44', 0, 9),
(1338, '174.127.90.44', 0, 10),
(1339, '174.127.90.44', 0, 11),
(1340, '174.127.90.44', 0, 13),
(1341, '174.127.90.44', 0, 19),
(1342, '174.127.90.44', 0, 21),
(1343, '174.127.90.44', 0, 38),
(1344, '174.127.90.44', 0, 25),
(1345, '174.127.90.44', 0, 75),
(1346, '174.127.90.44', 0, 53),
(1347, '174.127.90.44', 0, 54),
(1348, '174.127.90.44', 0, 78),
(1349, '174.127.90.44', 0, 56),
(1350, '174.127.90.44', 0, 26),
(1351, '174.127.90.44', 0, 79),
(1352, '174.127.90.44', 0, 80),
(1353, '174.127.90.44', 0, 30),
(1354, '174.127.90.44', 0, 81),
(1355, '185.191.171.44', 0, 43),
(1356, '185.191.171.5', 0, 23),
(1512, '144.76.60.198', 0, 115),
(1579, '114.119.136.92', 0, 97),
(1360, '185.191.171.1', 0, 33),
(1361, '185.191.171.11', 0, 112),
(1362, '114.119.146.198', 0, 93),
(1363, '185.191.171.13', 0, 19),
(1365, '185.191.171.11', 0, 85),
(1366, '114.119.146.179', 0, 67),
(1370, '185.191.171.26', 0, 88),
(1371, '185.191.171.39', 0, 100),
(1372, '17.121.113.249', 0, 11),
(1373, '185.191.171.22', 0, 75),
(1374, '185.191.171.36', 0, 18),
(1375, '185.191.171.35', 0, 86),
(1376, '17.121.115.89', 0, 3),
(1377, '185.191.171.13', 0, 27),
(1379, '17.121.115.147', 0, 6),
(1380, '114.119.146.19', 0, 70),
(1382, '114.119.146.19', 0, 18),
(1383, '114.119.146.179', 0, 77),
(1492, '82.165.224.63', 0, 13),
(1386, '17.121.112.145', 0, 1),
(1387, '185.191.171.6', 0, 94),
(1388, '185.191.171.25', 0, 54),
(1389, '114.119.136.86', 0, 64),
(1391, '114.119.146.197', 0, 54),
(1394, '114.119.136.92', 0, 16),
(1395, '114.119.146.185', 0, 85),
(1400, '114.119.146.185', 0, 61),
(1401, '185.191.171.25', 0, 57),
(1403, '114.119.146.179', 0, 40),
(1408, '185.191.171.41', 0, 75),
(1409, '114.119.146.185', 0, 52),
(1410, '185.191.171.33', 0, 18),
(1411, '185.191.171.36', 0, 86),
(1412, '114.119.146.185', 0, 108),
(1413, '185.191.171.41', 0, 27),
(1414, '185.191.171.36', 0, 59),
(1415, '69.160.160.55', 0, 49),
(1416, '69.160.160.55', 0, 9),
(1417, '69.160.160.55', 0, 50),
(1418, '69.160.160.55', 0, 13),
(1419, '69.160.160.55', 0, 5),
(1420, '69.160.160.55', 0, 104),
(1421, '69.160.160.55', 0, 58),
(1578, '114.119.146.195', 0, 62),
(1424, '114.119.146.198', 0, 111),
(1428, '114.119.146.198', 0, 17),
(1429, '114.119.136.92', 0, 26),
(1430, '185.191.171.12', 0, 46),
(1431, '17.121.113.99', 0, 12),
(1434, '114.119.146.198', 0, 94),
(1436, '114.119.146.19', 0, 20),
(1437, '114.119.146.179', 0, 71),
(1439, '114.119.146.195', 0, 38),
(1468, '114.119.146.179', 0, 74),
(1441, '114.119.146.195', 0, 22),
(1442, '114.119.146.185', 0, 9),
(1444, '185.191.171.24', 0, 35),
(1568, '185.191.171.12', 0, 62),
(1451, '114.119.146.198', 0, 60),
(1452, '114.119.146.179', 0, 55),
(1453, '192.99.18.122', 0, 1),
(1454, '17.121.112.222', 0, 10),
(1548, '114.119.146.179', 0, 96),
(1456, '114.119.146.185', 0, 46),
(1575, '114.119.146.179', 0, 112),
(1458, '114.119.146.19', 0, 14),
(1459, '114.119.146.185', 0, 30),
(1460, '17.121.112.170', 0, 12),
(1461, '17.121.113.151', 0, 1),
(1462, '114.119.146.18', 0, 102),
(1463, '17.121.114.224', 0, 5),
(1464, '114.119.146.18', 0, 1),
(1491, '114.119.146.195', 0, 51),
(1470, '114.119.146.195', 0, 54),
(1471, '17.121.112.28', 0, 12),
(1622, '157.90.177.233', 0, 10),
(1473, '17.121.115.56', 0, 10),
(1474, '185.191.171.1', 0, 97),
(1475, '185.191.171.38', 0, 63),
(1476, '114.119.146.185', 0, 112),
(1477, '185.191.171.45', 0, 92),
(1478, '114.119.146.18', 0, 18),
(1480, '114.119.146.197', 0, 64),
(1594, '17.121.113.110', 0, 12),
(1482, '114.119.146.185', 0, 48),
(1483, '114.119.146.185', 0, 44),
(1484, '114.119.146.198', 0, 29),
(1496, '82.165.224.47', 0, 1),
(1497, '82.165.224.95', 0, 10),
(1498, '82.165.224.79', 0, 4),
(1499, '82.165.224.15', 0, 9),
(1500, '82.165.224.79', 0, 3),
(1501, '82.165.224.95', 0, 7),
(1502, '82.165.224.111', 0, 55),
(1503, '82.165.224.111', 0, 16),
(1504, '82.165.224.111', 0, 5),
(1505, '82.165.224.31', 0, 11),
(1506, '82.165.224.15', 0, 52),
(1507, '82.165.224.111', 0, 20),
(1508, '82.165.224.15', 0, 50),
(1509, '82.165.224.63', 0, 8),
(1510, '82.165.224.63', 0, 51),
(1513, '144.76.60.198', 0, 116),
(1514, '114.119.146.18', 0, 39),
(1516, '114.119.146.198', 0, 11),
(1517, '114.119.146.179', 0, 21),
(1518, '114.119.146.185', 0, 67),
(1519, '114.119.146.197', 0, 70),
(1521, '114.119.146.195', 0, 19),
(1533, '114.119.146.18', 0, 55),
(1534, '114.119.146.185', 0, 38),
(1535, '17.121.115.10', 0, 1),
(1536, '185.191.171.45', 0, 36),
(1537, '114.119.146.179', 0, 35),
(1538, '185.191.171.8', 0, 3),
(1539, '17.121.112.54', 0, 10),
(1540, '185.191.171.15', 0, 21),
(1541, '114.119.146.19', 0, 4),
(1542, '185.191.171.40', 0, 20),
(1543, '114.119.146.198', 0, 42),
(1545, '114.119.146.185', 0, 60),
(1546, '114.119.146.185', 0, 89),
(1547, '185.191.171.39', 0, 115),
(1549, '114.119.146.197', 0, 93),
(1550, '185.191.171.9', 0, 77),
(1560, '185.191.171.10', 0, 3),
(1561, '185.191.171.40', 0, 21),
(1562, '17.121.115.77', 0, 5),
(1563, '185.191.171.17', 0, 115),
(1566, '114.119.146.185', 0, 45),
(1567, '114.119.146.195', 0, 14),
(1569, '185.191.171.41', 0, 13),
(1570, '185.191.171.44', 0, 4),
(1571, '114.119.146.195', 0, 104),
(1572, '114.119.146.197', 0, 28),
(1573, '185.191.171.4', 0, 99),
(1574, '185.191.171.25', 0, 106),
(1580, '17.121.114.96', 0, 10),
(1581, '114.119.146.179', 0, 66),
(1582, '114.119.146.19', 0, 9),
(1583, '185.191.171.1', 0, 61),
(1584, '114.119.146.197', 0, 17),
(1585, '114.119.146.179', 0, 107),
(1586, '114.119.146.198', 0, 56),
(1587, '185.191.171.38', 0, 11),
(1588, '114.119.146.185', 0, 40),
(1589, '185.191.171.24', 0, 55),
(1590, '114.119.146.195', 0, 3),
(1591, '114.119.146.195', 0, 36),
(1592, '185.191.171.43', 0, 108),
(1595, '114.119.146.197', 0, 1),
(1600, '212.227.216.115', 0, 11),
(1601, '212.227.216.3', 0, 48),
(1602, '212.227.216.51', 0, 4),
(1603, '212.227.216.115', 0, 55),
(1604, '212.227.216.83', 0, 8),
(1605, '212.227.216.115', 0, 49),
(1606, '212.227.216.115', 0, 7),
(1607, '212.227.216.83', 0, 9),
(1608, '212.227.216.99', 0, 6),
(1609, '212.227.216.115', 0, 52),
(1610, '212.227.216.51', 0, 5),
(1611, '212.227.216.35', 0, 16),
(1612, '212.227.216.67', 0, 51),
(1613, '212.227.216.35', 0, 3),
(1614, '212.227.216.67', 0, 10),
(1615, '212.227.216.51', 0, 50),
(1616, '212.227.216.19', 0, 20),
(1626, '157.90.177.233', 0, 4),
(1627, '157.90.177.233', 0, 48),
(1628, '157.90.177.233', 0, 49),
(1629, '157.90.177.233', 0, 5),
(1630, '157.90.177.233', 0, 7),
(1631, '157.90.177.233', 0, 8),
(1632, '157.90.177.233', 0, 9),
(1635, '185.191.171.41', 0, 9),
(1636, '185.191.171.38', 0, 84),
(1637, '114.119.146.195', 0, 46),
(1639, '114.119.146.185', 0, 20),
(1641, '157.90.177.233', 0, 116),
(1642, '157.90.177.233', 0, 12),
(1643, '157.90.177.233', 0, 14),
(1644, '157.90.177.233', 0, 17),
(1645, '157.90.177.233', 0, 24),
(1646, '157.90.177.233', 0, 27),
(1647, '157.90.177.233', 0, 59),
(1648, '157.90.177.233', 0, 62),
(1649, '157.90.177.233', 0, 74),
(1650, '157.90.177.233', 0, 78),
(1651, '157.90.177.233', 0, 79),
(1652, '157.90.177.233', 0, 80),
(1653, '157.90.177.233', 0, 81);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `About`
--
ALTER TABLE `About`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AddressBook`
--
ALTER TABLE `AddressBook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AddressBook_user_id_2068e626` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Blog_by_id_3c9b7dd0` (`by_id`),
  ADD KEY `Blog_product_category_id_c560f99f` (`product_category_id`);

--
-- Indexes for table `Blog_in_products`
--
ALTER TABLE `Blog_in_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Blog_in_products_blog_id_products_id_6df94dbb_uniq` (`blog_id`,`products_id`),
  ADD KEY `Blog_in_products_blog_id_2705733d` (`blog_id`),
  ADD KEY `Blog_in_products_products_id_e23c3989` (`products_id`);

--
-- Indexes for table `DiscountAlert`
--
ALTER TABLE `DiscountAlert`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DiscountAlert_category_of_products_id_e7ad4a52` (`category_of_products_id`),
  ADD KEY `DiscountAlert_product_discounted_id_4cfcd3f9` (`product_discounted_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `frontend_checkoutaddress`
--
ALTER TABLE `frontend_checkoutaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_checkoutaddress_user_id_3c57b3be` (`user_id`);

--
-- Indexes for table `frontend_order`
--
ALTER TABLE `frontend_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frontend_order_tracking_id_3743d8b8_uniq` (`tracking_id`),
  ADD KEY `frontend_order_checkout_address_id_271f9dc6` (`checkout_address_id`),
  ADD KEY `frontend_order_payment_id_405a28e0` (`payment_id`),
  ADD KEY `frontend_order_user_id_d6d9e577` (`user_id`);

--
-- Indexes for table `frontend_orderitem`
--
ALTER TABLE `frontend_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_orderitem_item_id_176ccd7b` (`item_id`),
  ADD KEY `frontend_orderitem_user_id_415f5e97` (`user_id`);

--
-- Indexes for table `frontend_order_items`
--
ALTER TABLE `frontend_order_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frontend_order_items_order_id_orderitem_id_24e749be_uniq` (`order_id`,`orderitem_id`),
  ADD KEY `frontend_order_items_order_id_29e6e8f0` (`order_id`),
  ADD KEY `frontend_order_items_orderitem_id_7cea0e35` (`orderitem_id`);

--
-- Indexes for table `frontend_payment`
--
ALTER TABLE `frontend_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frontend_payment_user_id_8bb09d93` (`user_id`);

--
-- Indexes for table `HomeMainFeature`
--
ALTER TABLE `HomeMainFeature`
  ADD PRIMARY KEY (`id`),
  ADD KEY `HomeMainFeature_category_of_products_id_729aad6b` (`category_of_products_id`);

--
-- Indexes for table `MostNeededProducts`
--
ALTER TABLE `MostNeededProducts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `NavigationMenu`
--
ALTER TABLE `NavigationMenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NavigationSubMenu`
--
ALTER TABLE `NavigationSubMenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NavigationSubMenu_parent_menu_id_d996a7e1` (`parent_menu_id`);

--
-- Indexes for table `OrderStatus`
--
ALTER TABLE `OrderStatus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `OrderStatus_orderid_id_446e7b5d_uniq` (`orderid_id`);

--
-- Indexes for table `ProductOption`
--
ALTER TABLE `ProductOption`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ProductOption_sub_category`
--
ALTER TABLE `ProductOption_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ProductOption_sub_catego_productoption_id_navigat_e1617b36_uniq` (`productoption_id`,`navigationsubmenu_id`),
  ADD KEY `ProductOption_sub_category_productoption_id_6e6306d7` (`productoption_id`),
  ADD KEY `ProductOption_sub_category_navigationsubmenu_id_3f3aac50` (`navigationsubmenu_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_a7a3a156` (`category_id`),
  ADD KEY `products_sub_category_id_f08b7711` (`sub_category_id`);

--
-- Indexes for table `productsimages`
--
ALTER TABLE `productsimages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productsimages_product_id_c36c2978` (`product_id`);

--
-- Indexes for table `Profile`
--
ALTER TABLE `Profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Profile_user_id_fa0e72a2` (`user_id`);

--
-- Indexes for table `SeasionSale`
--
ALTER TABLE `SeasionSale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SeasionSale_subcategory_id_c4afd7f7` (`subcategory_id`);

--
-- Indexes for table `SiteSetting`
--
ALTER TABLE `SiteSetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_explore_to_id_fbc942f3` (`explore_to_id`);

--
-- Indexes for table `WishList`
--
ALTER TABLE `WishList`
  ADD PRIMARY KEY (`id`),
  ADD KEY `WishList_productid_id_008737b2` (`productid_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `About`
--
ALTER TABLE `About`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `AddressBook`
--
ALTER TABLE `AddressBook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Blog_in_products`
--
ALTER TABLE `Blog_in_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `DiscountAlert`
--
ALTER TABLE `DiscountAlert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `frontend_checkoutaddress`
--
ALTER TABLE `frontend_checkoutaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_order`
--
ALTER TABLE `frontend_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `frontend_orderitem`
--
ALTER TABLE `frontend_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `frontend_order_items`
--
ALTER TABLE `frontend_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `frontend_payment`
--
ALTER TABLE `frontend_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `HomeMainFeature`
--
ALTER TABLE `HomeMainFeature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `MostNeededProducts`
--
ALTER TABLE `MostNeededProducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `NavigationMenu`
--
ALTER TABLE `NavigationMenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `NavigationSubMenu`
--
ALTER TABLE `NavigationSubMenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `OrderStatus`
--
ALTER TABLE `OrderStatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProductOption`
--
ALTER TABLE `ProductOption`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProductOption_sub_category`
--
ALTER TABLE `ProductOption_sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `productsimages`
--
ALTER TABLE `productsimages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `Profile`
--
ALTER TABLE `Profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `SeasionSale`
--
ALTER TABLE `SeasionSale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `SiteSetting`
--
ALTER TABLE `SiteSetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `WishList`
--
ALTER TABLE `WishList`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
