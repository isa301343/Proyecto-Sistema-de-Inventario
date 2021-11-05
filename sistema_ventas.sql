-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-10-2021 a las 01:14:54
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `businesses`
--

INSERT INTO `businesses` (`id`, `name`, `description`, `logo`, `mail`, `address`, `ruc`, `created_at`, `updated_at`) VALUES
(1, 'Jiss Development', 'Creacion de sistemas contables para pequeñas, medianas y grandes empresas', '1635253362_face16.jpg', 'jiss@gmail.com', 'Medellin- Antioquia', '15247895632', '2021-10-26 10:28:20', '2021-10-26 18:02:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'a', 'as', '2021-10-26 10:29:41', '2021-10-26 10:29:41'),
(2, 'Teclados', 'Teclados y combos gamer', '2021-10-26 11:05:53', '2021-10-26 11:05:53'),
(3, 'Monitores y pantallas', 'Monitores y pantallas de todo tipo', '2021-10-26 17:53:09', '2021-10-26 17:53:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clients`
--

INSERT INTO `clients` (`id`, `name`, `dni`, `ruc`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'pedro', '1226865297', NULL, NULL, NULL, NULL, '2021-10-26 10:32:55', '2021-10-26 10:32:55'),
(2, 'isabella', '5692346271', NULL, NULL, NULL, NULL, '2021-10-26 11:11:37', '2021-10-26 11:11:37'),
(3, 'Estella', '1000664359', NULL, NULL, NULL, NULL, '2021-10-26 17:58:34', '2021-10-26 17:58:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2015_01_20_084450_create_roles_table', 1),
(4, '2015_01_20_084525_create_role_user_table', 1),
(5, '2015_01_24_080208_create_permissions_table', 1),
(6, '2015_01_24_080433_create_permission_role_table', 1),
(7, '2015_12_04_003040_add_special_role_column', 1),
(8, '2017_10_17_170735_create_permission_user_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2020_12_17_150824_create_categories_table', 1),
(11, '2020_12_18_022612_create_providers_table', 1),
(12, '2020_12_20_133950_create_products_table', 1),
(13, '2020_12_20_222452_create_clients_table', 1),
(14, '2020_12_21_142051_create_purchases_table', 1),
(15, '2020_12_21_142209_create_purchase_details_table', 1),
(16, '2020_12_21_190730_create_sales_table', 1),
(17, '2020_12_21_190837_create_sale_details_table', 1),
(18, '2020_12_25_003415_create_businesses_table', 1),
(19, '2020_12_25_003440_create_printers_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Navegar usuarios', 'users.index', 'Lista y navega todos los usuarios del sistema', '2021-10-26 10:28:17', '2021-10-26 10:28:17'),
(2, 'Creación de usuarios', 'users.create', 'Podría crear nuevos usuarios en el sistema', '2021-10-26 10:28:17', '2021-10-26 10:28:17'),
(3, 'Ver detalle de usuario', 'users.show', 'Ve en detalle cada usuario del sistema', '2021-10-26 10:28:17', '2021-10-26 10:28:17'),
(4, 'Edición de usuarios', 'users.edit', 'Podría editar cualquier dato de un usuario del sistema', '2021-10-26 10:28:17', '2021-10-26 10:28:17'),
(5, 'Eliminar usuario', 'users.destroy', 'Podría eliminar cualquier usuario del sistema', '2021-10-26 10:28:17', '2021-10-26 10:28:17'),
(6, 'Navegar roles', 'roles.index', 'Lista y navega todos los roles del sistema', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(7, 'Ver detalle de un rol', 'roles.show', 'Ve en detalle cada rol del sistema', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(8, 'Creación de roles', 'roles.create', 'Podría crear nuevos roles en el sistema', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(9, 'Edición de roles', 'roles.edit', 'Podría editar cualquier dato de un rol del sistema', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(10, 'Eliminar roles', 'roles.destroy', 'Podría eliminar cualquier rol del sistema', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(11, 'Navegar categorías', 'categories.index', 'Lista y navega por todos los categorías del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(12, 'Ver detalle de categoría', 'categories.show', 'Ver en detalle cada categoría del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(13, 'Edición de categorías', 'categories.edit', 'Editar cualquier dato de un categoría del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(14, 'Creación de categorías', 'categories.create', 'Crea cualquier dato de una categoría del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(15, 'Eliminar categorías', 'categories.destroy', 'Eliminar cualquier dato de una categoría del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(16, 'Navegar por clientes', 'clients.index', 'Lista y navega por todos los clientes del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(17, 'Ver detalle de cliente', 'clients.show', 'Ver en detalle cada cliente del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(18, 'Edición de clientes', 'clients.edit', 'Editar cualquier dato de un cliente del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(19, 'Creación de clientes', 'clients.create', 'Crea cualquier dato de un cliente del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(20, 'Eliminar clientes', 'clients.destroy', 'Eliminar cualquier dato de un cliente del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(21, 'Navegar por productos', 'products.index', 'Lista y navega por todos los productos del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(22, 'Ver detalle de producto', 'products.show', 'Ver en detalle cada producto del sistema.', '2021-10-26 10:28:18', '2021-10-26 10:28:18'),
(23, 'Edición de productos', 'products.edit', 'Editar cualquier dato de un producto del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(24, 'Creación de productos', 'products.create', 'Crea cualquier dato de un producto del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(25, 'Eliminar productos', 'products.destroy', 'Eliminar cualquier dato de un producto del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(26, 'Navegar por proveedores', 'providers.index', 'Lista y navega por todos los proveedores del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(27, 'Ver detalle de proveedor', 'providers.show', 'Ver en detalle cada proveedor del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(28, 'Edición de proveedores', 'providers.edit', 'Editar cualquier dato de un proveedor del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(29, 'Creación de proveedores', 'providers.create', 'Crea cualquier dato de un proveedor del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(30, 'Eliminar proveedores', 'providers.destroy', 'Eliminar cualquier dato de un proveedor del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(31, 'Navegar por compras', 'purchases.index', 'Lista y navega por todos los compras del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(32, 'Ver detalle de compra', 'purchases.show', 'Ver en detalle cada compra del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(33, 'Creación de compras', 'purchases.create', 'Crea cualquier dato de un compra del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(34, 'Navegar por ventas', 'sales.index', 'Lista y navega por todos los ventas del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(35, 'Ver detalle de venta', 'sales.show', 'Ver en detalle cada venta del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(36, 'Creación de ventas', 'sales.create', 'Crea cualquier dato de un venta del sistema.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(37, 'Descargar PDF reporte de compras', 'purchases.pdf', 'Puede descargar todos los reportes de las compras en PDF.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(38, 'Descargar PDF reporte de ventas', 'sales.pdf', 'Puede descargar todos los reportes de las ventas en PDF.', '2021-10-26 10:28:19', '2021-10-26 10:28:19'),
(39, 'Imprimir boleta de venta', 'sales.print', 'Puede imprimir boletas de todas las ventas.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(40, 'Ver datos de la empresa', 'business.index', 'Navega por los datos de la empresa.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(41, 'Edición de empresa', 'business.edit', 'Editar cualquier dato de la empresa.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(42, 'er datos de la impresora', 'printers.index', 'Navega por los datos de la impresora.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(43, 'Edición de impresora', 'printers.edit', 'Editar cualquier dato de la impresora.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(44, 'Subir archivo de compra', 'upload.purchases', 'Puede subir comprobantes de una compra.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(45, 'Cambiar estado de producto', 'change.status.products', 'Permite cambiar el estado de un producto.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(46, 'Cambiar estado de compra', 'change.status.purchases', 'Permite cambiar el estado de un compra.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(47, 'Cambiar estado de venta', 'change.status.sales', 'Permite cambiar el estado de un venta.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(48, 'Reporte por día', 'reports.day', 'Permite ver los reportes de ventas por día.', '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(49, 'Reporte por fechas', 'reports.date', 'Permite ver los reportes por un rango de fechas de las ventas.', '2021-10-26 10:28:20', '2021-10-26 10:28:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `printers`
--

CREATE TABLE `printers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `printers`
--

INSERT INTO `printers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AURES ODP-333', '2021-10-26 10:28:20', '2021-10-26 10:28:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sell_price` decimal(12,2) NOT NULL,
  `status` enum('ACTIVE','DEACTIVATED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `stock`, `image`, `sell_price`, `status`, `category_id`, `provider_id`, `created_at`, `updated_at`) VALUES
(1, '74125896', 'ASUS', 40, '1635226302_FSPLFPQBCZ_1300.jpg', '400.00', 'ACTIVE', 1, 1, '2021-10-26 10:31:42', '2021-10-26 11:01:34'),
(5, '87654321', 'Teclado y Mause Gamer Genius', 18, '1635228487_FSPLFPQBCZ_1300.jpg', '130000.00', 'ACTIVE', 2, 2, '2021-10-26 11:08:07', '2021-10-26 11:12:03'),
(6, '00462943', 'Pantalla Asus 22\'\' Gamer', 3, '1635252936_VG248QE.jpg', '320.00', 'ACTIVE', 3, 3, '2021-10-26 17:55:36', '2021-10-26 17:59:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruc_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `providers`
--

INSERT INTO `providers` (`id`, `name`, `email`, `ruc_number`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Logitech', 'Logitech@gmail.com', '4569872361', 'Bogota', '4562874', '2021-10-26 10:30:41', '2021-10-26 10:30:41'),
(2, 'Genius', 'servicio@genius.com', '7459328416', 'Bogota', '7832649', '2021-10-26 11:06:49', '2021-10-26 11:06:49'),
(3, 'ASUS', 'asuscolombia@asus.com', '1593472683', 'Bogota', '3658267', '2021-10-26 17:54:25', '2021-10-26 17:54:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_date` datetime NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` enum('VALID','CANCELED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VALID',
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchases`
--

INSERT INTO `purchases` (`id`, `provider_id`, `user_id`, `purchase_date`, `tax`, `total`, `status`, `picture`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-26 00:32:07', '18.00', '8850.00', 'VALID', NULL, '2021-10-26 10:32:07', '2021-10-26 10:32:07'),
(2, 2, 1, '2021-10-26 01:10:23', '5.00', '3150.00', 'VALID', NULL, '2021-10-26 11:10:23', '2021-10-26 11:10:23'),
(3, 3, 1, '2021-10-26 07:56:49', '5.00', '1050.00', 'VALID', NULL, '2021-10-26 17:56:49', '2021-10-26 17:56:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase_details`
--

CREATE TABLE `purchase_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 50, '150.00', '2021-10-26 10:32:07', '2021-10-26 10:32:07'),
(2, 2, 5, 20, '150.00', '2021-10-26 11:10:23', '2021-10-26 11:10:23'),
(3, 3, 6, 5, '200.00', '2021-10-26 17:56:49', '2021-10-26 17:56:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special` enum('all-access','no-access') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`, `special`) VALUES
(1, 'Admin', 'admin', NULL, '2021-10-26 10:28:20', '2021-10-26 10:28:20', 'all-access');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(2, 1, 2, '2021-10-26 18:07:01', '2021-10-26 18:07:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` enum('VALID','CANCELED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'VALID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `client_id`, `user_id`, `sale_date`, `tax`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-10-26 00:33:41', '18.00', '4720.00', 'VALID', '2021-10-26 10:33:41', '2021-10-26 10:33:41'),
(2, 2, 1, '2021-10-26 01:12:03', '5.00', '232050.00', 'VALID', '2021-10-26 11:12:03', '2021-10-26 11:12:03'),
(3, 3, 1, '2021-10-26 07:59:16', '5.00', '672.00', 'VALID', '2021-10-26 17:59:16', '2021-10-26 17:59:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `product_id`, `quantity`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '10.00', '400.00', '0.00', '2021-10-26 10:33:41', '2021-10-26 10:33:41'),
(2, 2, 5, '2.00', '130000.00', '15.00', '2021-10-26 11:12:03', '2021-10-26 11:12:03'),
(3, 3, 6, '2.00', '320.00', '0.00', '2021-10-26 17:59:16', '2021-10-26 17:59:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cristian', 'Cristian@gmail.com', NULL, '$2y$10$o.CnHSqHSCQ7qSj4zlJU7u0N1QiKqrIjJ2bLP8j/wdw3W8NCA3DkK', NULL, '2021-10-26 10:28:20', '2021-10-26 10:28:20'),
(2, 'isabella', 'isabella@gmail.com', NULL, '$2y$10$woVjrHxMl50338dcs0keseM0WB7L5MmX4dd4Kf9.VmVTDwxsQXuAC', NULL, '2021-10-26 18:03:59', '2021-10-26 18:04:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_dni_unique` (`dni`),
  ADD UNIQUE KEY `clients_ruc_unique` (`ruc`),
  ADD UNIQUE KEY `clients_phone_unique` (`phone`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_provider_id_foreign` (`provider_id`);

--
-- Indices de la tabla `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `providers_name_unique` (`name`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_provider_id_foreign` (`provider_id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_details_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_client_id_foreign` (`client_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_details_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_details_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `printers`
--
ALTER TABLE `printers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`);

--
-- Filtros para la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `purchase_details`
--
ALTER TABLE `purchase_details`
  ADD CONSTRAINT `purchase_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_details_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`);

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
