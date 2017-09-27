-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27-Set-2017 às 02:44
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema-noticias-v-3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(19, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(20, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(21, '2016_06_01_000004_create_oauth_clients_table', 1),
(22, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(23, '2017_09_24_200758_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0025f073ab43f55a6b9da8530c953d5ff9453c99d16a2e7a65c3e82dacd8e5787058ab3116d67081', 1, 3, NULL, '[]', 0, '2017-09-25 01:53:03', '2017-09-25 01:53:03', '2018-09-24 22:53:03'),
('05324a6add391b4b975ce7538dcdf150a377627c441f6a91fdfd1c07780cff979e40ea9e25589ca2', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:45', '2017-09-26 02:34:45', '2018-09-25 23:34:45'),
('0753648a035f3be9152f21d9113933601303ab44aefa643cc346a424c7e9cc80144f180c8911fc8e', 1, 3, NULL, '[]', 0, '2017-09-25 06:58:52', '2017-09-25 06:58:52', '2018-09-25 03:58:52'),
('0794204bbb0630452b01d473b2cc192dce36fa571665290ae655857475b999aa3ed1f4121d3681c8', 1, 3, NULL, '[]', 0, '2017-09-25 07:09:44', '2017-09-25 07:09:44', '2018-09-25 04:09:44'),
('094711f2164a450c6e58feef40bdf6b90806de0a3e27b1fa6964a211755b9cc3dc8bb02ec5f9db0b', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:46', '2017-09-26 02:34:46', '2018-09-25 23:34:46'),
('13674bad71ebd60bf5e5441905cba19b2ff50aeb20f19694b145b86820f7ab8fa0f482ea11c9662a', 1, 3, NULL, '[]', 0, '2017-09-26 02:45:19', '2017-09-26 02:45:19', '2018-09-25 23:45:19'),
('13b6eaa6812c3ae76199028ff16ecb69313560c742a6f97e3c84cf8df701d56e38c377afeb68790a', 1, 3, NULL, '[]', 0, '2017-09-26 01:18:03', '2017-09-26 01:18:03', '2018-09-25 22:18:03'),
('1a8ee20a31c5e79c329a005e0be693e88b4049b4e855b311d1d5d499e35d611951a1d26ee3ac0e4a', 1, 3, NULL, '[]', 0, '2017-09-25 01:34:08', '2017-09-25 01:34:08', '2018-09-24 22:34:08'),
('1c9e1a5e737d4161cbb49096a58460c8caa39346cb35cfc146daf0ad3584f567302c6b59cbd64500', 1, 3, NULL, '[]', 0, '2017-09-26 20:18:45', '2017-09-26 20:18:45', '2018-09-26 17:18:45'),
('1ca8cc674d82eaaf654556e0a084372474bb1c9eb6424578e4f86bd56bdfca0e2bf31d273439ea2a', 1, 3, NULL, '[]', 0, '2017-09-26 00:31:57', '2017-09-26 00:31:57', '2018-09-25 21:31:57'),
('252aec3627eb7504adc9df9c28ff3486160e18bdfaab3fd27538c71176c092c17cf7951df272f8e6', 1, 3, NULL, '[]', 0, '2017-09-25 07:11:47', '2017-09-25 07:11:47', '2018-09-25 04:11:47'),
('259e2805f1f2bdc3f0f41c2ed2dc1ced0844449fabe6902c84b10df96e134de34d6673c377e276cc', 1, 3, NULL, '[]', 0, '2017-09-26 00:30:11', '2017-09-26 00:30:11', '2018-09-25 21:30:11'),
('28f9d52d74d53244cded7556b754bc05560d4cf7f2bf761e688a106a1bb1dcfa2f767d88c957ac12', 1, 3, NULL, '[]', 0, '2017-09-25 08:02:28', '2017-09-25 08:02:28', '2018-09-25 05:02:28'),
('3a1dc00c531289542677d744b47983b025e9aeb71bc1aaf437ba276c570300bd12d584edb3bc5604', 1, 3, NULL, '[]', 0, '2017-09-25 06:56:00', '2017-09-25 06:56:00', '2018-09-25 03:56:00'),
('3b82ff4915466f711f327810a115a35c354c1f6a87604fec8106199d6d6c7f29de09f1f1d7fb4b67', 1, 3, NULL, '[]', 0, '2017-09-25 03:32:17', '2017-09-25 03:32:17', '2018-09-25 00:32:17'),
('3de14c57744465e83e5dbe2ed31a25c98bf70c2d0036fda3ab8abf7ae8964f3430bace9303684b9a', 1, 3, NULL, '[]', 0, '2017-09-25 08:02:30', '2017-09-25 08:02:30', '2018-09-25 05:02:30'),
('3f9c037456a04554ab01e22e4c508b8c286ba69fe7f531d1579f458ceaa74fbb5d6159d752dd67e5', 1, 3, NULL, '[]', 0, '2017-09-25 01:34:22', '2017-09-25 01:34:22', '2018-09-24 22:34:22'),
('3fa227f3f79cad6fbdbccdc33dbafab1d8c2e47c0571e8745bf5bb5fbf1f5c7125f97df80e7bb34d', 1, 3, NULL, '[]', 0, '2017-09-26 02:48:07', '2017-09-26 02:48:07', '2018-09-25 23:48:07'),
('446efeea1911bf44e313b59801e121179d415e564b000f425758ccc7b3dd76c18905a95040541bc5', 1, 3, NULL, '[]', 0, '2017-09-25 06:54:35', '2017-09-25 06:54:35', '2018-09-25 03:54:35'),
('4678564edff64ad8e300d0518fc6bcf50108662cdc4fce5a9448f201f60b8d7a7ec369debe02f6c1', 1, 3, NULL, '[]', 0, '2017-09-25 06:33:58', '2017-09-25 06:33:58', '2018-09-25 03:33:58'),
('4928f7ec347d54f53fc9423db7da1b8d11611ff09dacb581d9e340040ef64aab5be9896ecdc3ea93', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:49', '2017-09-26 02:34:49', '2018-09-25 23:34:49'),
('4aa624cf35314b6b222fc35b542e42d3ecfb116c1bff3ff77a554d57c14d374d0ac0db201bba20e4', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:50', '2017-09-26 02:34:50', '2018-09-25 23:34:50'),
('4bcc5ee8f32391f164593448680f18a1eee02052dee6dfde0c24668a5d3d9fd0e5bce223ef49f3be', 1, 3, NULL, '[]', 0, '2017-09-25 06:53:14', '2017-09-25 06:53:14', '2018-09-25 03:53:14'),
('4ea368d82e6c1af8777b8fbc461affa11fe6372a3975608db18642b9287fb5d25a176eba9656abd1', 1, 3, NULL, '[]', 0, '2017-09-25 06:42:50', '2017-09-25 06:42:50', '2018-09-25 03:42:50'),
('51c59b9110ec12b2a6a505a8cbad349d1fab4151ef84f4f5c7389d3d171e215b669158160411b3e3', 1, 3, NULL, '[]', 0, '2017-09-26 02:37:12', '2017-09-26 02:37:12', '2018-09-25 23:37:12'),
('520c3f0b2e6e256a5cc56903b2f9c54a2e34902b84d666b3cbc2653962cae35281cf2681681e1d55', 1, 3, NULL, '[]', 0, '2017-09-25 06:41:26', '2017-09-25 06:41:26', '2018-09-25 03:41:26'),
('53af684c30ffc19a8e6a6583792904c50d4342d09fc8828d3ef877452416a7a8dadb38312edc3fe4', 1, 3, NULL, '[]', 0, '2017-09-25 01:34:22', '2017-09-25 01:34:22', '2018-09-24 22:34:22'),
('53e04daf55668f3c3c3667ecaa7485edb12ae26c8c9a3f16c0f7b887b235b1666d022b0d0f1b7bd0', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:52', '2017-09-26 02:34:52', '2018-09-25 23:34:52'),
('56255e0ad06f835752f2f380bea30e209f9acc429a35a635962c7921400f0200146533a09c3bfd3f', 1, 3, NULL, '[]', 0, '2017-09-25 08:02:14', '2017-09-25 08:02:14', '2018-09-25 05:02:14'),
('56fb18044c775e804338f41d12ae4d916f53abeb6cd4f637837c0b7cc089a7039ea3842bb389c7ee', 1, 3, NULL, '[]', 0, '2017-09-25 06:19:52', '2017-09-25 06:19:52', '2018-09-25 03:19:52'),
('58787ba50b5aa9e51c9a1b319fae92c190edd00f0f76b5adc84b1b71caa70524287224b3f64e62d8', 1, 3, NULL, '[]', 0, '2017-09-25 08:02:24', '2017-09-25 08:02:24', '2018-09-25 05:02:24'),
('5c3648671506d9fd3d306a42b671a56120d0903b17c3f7edede81cad33fda3b661ef6afade9e083a', 1, 3, NULL, '[]', 0, '2017-09-25 01:34:01', '2017-09-25 01:34:01', '2018-09-24 22:34:01'),
('6094116e6c9d9e4967b84be3b623b70b29510e04fce65f0b55e51d94665f35bc3b15b354cd50e4d6', 1, 3, NULL, '[]', 0, '2017-09-26 02:27:51', '2017-09-26 02:27:51', '2018-09-25 23:27:51'),
('65031284e46dbcffc8233cbd90e517bd3c6b9bd239b108a8204a2d750d51b2d96e965c6300b7dd63', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:51', '2017-09-26 02:34:51', '2018-09-25 23:34:51'),
('65120f3c66c849175741516fde1e028731a937b4941b92628c7f3b4a0204385fa78ee21434e3a79b', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:44', '2017-09-26 02:34:44', '2018-09-25 23:34:44'),
('65895c7a00bab337b7930177bc4b76e066855880530e6844b6e9cccf4cca62fbcf02b2e828bc5327', 1, 3, NULL, '[]', 0, '2017-09-25 01:34:15', '2017-09-25 01:34:15', '2018-09-24 22:34:15'),
('6ae5dccc3d5a1496e6dce999eddc4d9abf3ffa2fece64db3bdae421cb26ebaf8f0021b913dda3826', 1, 3, NULL, '[]', 0, '2017-09-26 03:11:08', '2017-09-26 03:11:08', '2018-09-26 00:11:08'),
('6b7a1f2bb89732a74e4ef690df3898ec0f5ae5a90559c5de8b60b75c251f834e8874053d49a633fd', 1, 3, NULL, '[]', 0, '2017-09-25 06:17:16', '2017-09-25 06:17:16', '2018-09-25 03:17:16'),
('6db6cc8a86697b77aa533ac0f225ee5281b9eee5773c1b01b7214f00ba83c84ea4cc8942752cf5b6', 1, 3, NULL, '[]', 0, '2017-09-25 07:22:41', '2017-09-25 07:22:41', '2018-09-25 04:22:41'),
('6e053f1c272b3752530d2b8f3979a0ce6d934139361e324fd05244359424dedeff492205bbcbfafc', 1, 3, NULL, '[]', 0, '2017-09-26 00:30:19', '2017-09-26 00:30:19', '2018-09-25 21:30:19'),
('706454f606e9bd9e8e7f607d04013729d01fcf16037bf4a079566b3ad63a3ddb7e637620ad354768', 1, 3, NULL, '[]', 0, '2017-09-25 06:51:45', '2017-09-25 06:51:45', '2018-09-25 03:51:45'),
('721fe0c3c66aaeefc6dcbb181c0a01f5443213117cb00904982351494e01d0205326c47d7663d112', 1, 3, NULL, '[]', 0, '2017-09-25 06:19:15', '2017-09-25 06:19:15', '2018-09-25 03:19:15'),
('732af3a753bea7debcc7ac0d67a5ec4566d62dbe9e9a2891f474f57eafb6f15b6596635e94c44320', 1, 3, NULL, '[]', 0, '2017-09-26 17:19:28', '2017-09-26 17:19:28', '2018-09-26 14:19:28'),
('74659d22deb6de1f05c82579a0842edba026421fd92b3ff7b80c21d9d98e7f1ab8a2301243dd15f9', 1, 3, NULL, '[]', 0, '2017-09-25 03:33:10', '2017-09-25 03:33:10', '2018-09-25 00:33:10'),
('74e31acfa7c8e0446bda7f64a352fbe1d3463670700a1cf4bd45aad15b855e50911b7eadccc1ded4', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:47', '2017-09-26 02:34:47', '2018-09-25 23:34:47'),
('74e8eaef06890f983506aa81dea5ca680948cc112ffa09f1cc224a48ac08a6bde2749ebee523a8c5', 1, 3, NULL, '[]', 0, '2017-09-27 02:40:31', '2017-09-27 02:40:31', '2018-09-26 23:40:31'),
('7a86496a9e9de021016eda0312b78f503d5c7bdef1d3b591ecfb9359af35a9018d0401bbb2e9dedb', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:48', '2017-09-26 02:34:48', '2018-09-25 23:34:48'),
('7c0d2dcd4ea02fecbab9603330d7e0580c6f1828309df1f43bc442b311d5ce87c5727bef2a5fb537', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:51', '2017-09-26 02:34:51', '2018-09-25 23:34:51'),
('83758a4598701aed38ab58815714a06b82a7966eba12a89084f06c56469c3b34928909b7e1d36013', 1, 3, NULL, '[]', 0, '2017-09-26 15:32:52', '2017-09-26 15:32:52', '2018-09-26 12:32:52'),
('8473f45444a524f9145eebaa0e2fb5899e96d5aa1f6dca4d7715dd4a7c8980b85f481e3c0a692064', 1, 3, NULL, '[]', 0, '2017-09-25 08:02:26', '2017-09-25 08:02:26', '2018-09-25 05:02:26'),
('8f980b3c7589edf49e117bc8c36d5d575e2556008e1b960ca71beac15a48e5c7d9ce4cddbc1d9e8e', 1, 3, NULL, '[]', 0, '2017-09-25 06:51:26', '2017-09-25 06:51:26', '2018-09-25 03:51:26'),
('9119210db80fdfa72d57ce4030b485710208b58ae58147a14b3770271ab12051f2f36f22e0168d9c', 1, 3, NULL, '[]', 0, '2017-09-26 20:18:48', '2017-09-26 20:18:48', '2018-09-26 17:18:48'),
('9be27ea52b09d9bbb128c6449004625003256a4ad59bbf8d02b0632b2e3b0094d98cfa1f89a1b017', 1, 3, NULL, '[]', 0, '2017-09-26 00:29:28', '2017-09-26 00:29:28', '2018-09-25 21:29:28'),
('9ffce0a2788ae6e8a5e0846b5db88bbcd3c37cb217e752a9e342dc008c8eb4c6ec35de38b986d8a9', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:53', '2017-09-26 02:34:53', '2018-09-25 23:34:53'),
('ab70c25a0b926c6d142df2c35db74d27906a4d01fe05ee92b5bb0c587843231dbc68cec1324a5394', 1, 3, NULL, '[]', 0, '2017-09-26 02:45:17', '2017-09-26 02:45:17', '2018-09-25 23:45:17'),
('af668d8fa2bc4fb5c01001a1b3fcd39c9d3b80e4c046b2ef50b0a5e91768e7ea5f167266d615fc5b', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:43', '2017-09-26 02:34:43', '2018-09-25 23:34:43'),
('b30b63ec81f4ac01ed2e74a2de4ad72a6645dbd0ef27ad953777567f1c3c2a8bcfe4fb22c344538e', 1, 3, NULL, '[]', 0, '2017-09-25 01:33:40', '2017-09-25 01:33:40', '2018-09-24 22:33:40'),
('b88f4f1754b5b0bc32ce0a8020828564d8298e6aeb1b9a36365cda02eb3b8500a37018b10d1853d8', 1, 3, NULL, '[]', 0, '2017-09-26 02:45:19', '2017-09-26 02:45:19', '2018-09-25 23:45:19'),
('c0c10b7fc58dedb1838a86ba5564aead26be2bee82182060c7cba979d71e290cae5983ba26ba265e', 1, 3, NULL, '[]', 0, '2017-09-26 04:00:27', '2017-09-26 04:00:27', '2018-09-26 01:00:27'),
('c342af4c7a2f2e4cdd4053f732198213ebcef6d65d9e7add503b1e2aa09c914136d229a4ce04ea0f', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:45', '2017-09-26 02:34:45', '2018-09-25 23:34:45'),
('c93ba9d7b7988559727c030d34a466d4a4f92b63f3b9df4c16e6efb08eca2f865b9733117041ffdc', 1, 3, NULL, '[]', 0, '2017-09-26 00:31:56', '2017-09-26 00:31:56', '2018-09-25 21:31:56'),
('cb3460c796e7847a1ed37036673b457361d5e37a1fb765a111465b0e9595321d4cc430433199fac1', 1, 3, NULL, '[]', 0, '2017-09-25 06:51:42', '2017-09-25 06:51:42', '2018-09-25 03:51:42'),
('ccb404306dbf1be0f9d851e484ded184d0e94518acf876044661244560c6ecd8a6f21bb16d21de29', 1, 3, NULL, '[]', 0, '2017-09-25 06:46:29', '2017-09-25 06:46:29', '2018-09-25 03:46:29'),
('cccd46309f3799b236dcc490135e969e162d26fdb7ab33506a735afe8b90241ab4c720b3bac77b8c', 1, 3, NULL, '[]', 0, '2017-09-25 08:13:06', '2017-09-25 08:13:06', '2018-09-25 05:13:06'),
('cec9bf1b20f0a67c04638283daac7294cf9530afa67834aa41353a448816fa735d17ac22d3a74496', 1, 3, NULL, '[]', 0, '2017-09-26 02:34:53', '2017-09-26 02:34:53', '2018-09-25 23:34:53'),
('cf1bbd9cb22cd7413b500275ca0e0a023d493485354d24b3295c6f3ac1920fc9d00a522f7225ad49', 1, 3, NULL, '[]', 0, '2017-09-27 03:27:38', '2017-09-27 03:27:38', '2018-09-27 00:27:38'),
('d12a324e0d1aeff44b30541fa03dbd6772b81a0a4b225bcaccff56c813d60df519c65bb8d51cc5d8', 1, 3, NULL, '[]', 0, '2017-09-25 06:34:08', '2017-09-25 06:34:08', '2018-09-25 03:34:08'),
('d2c19c8e02007076ed21cdfa870de467b911c182337e106fd590cdb9fba25ea625069e6ba507022c', 1, 3, NULL, '[]', 0, '2017-09-26 02:45:16', '2017-09-26 02:45:16', '2018-09-25 23:45:16'),
('d6b24bc08b6352c870297e8a0b1b0a650b27afb06d5f0a4048900eaeb641b411baeda87a87766705', 1, 3, NULL, '[]', 0, '2017-09-26 00:32:10', '2017-09-26 00:32:10', '2018-09-25 21:32:10'),
('dcdbd9ac1f4f09fbf2be8062d6bb9b7ea58f730465b6dc996ea97a95980d3c18db8265b830735d75', 1, 3, NULL, '[]', 0, '2017-09-25 06:16:52', '2017-09-25 06:16:52', '2018-09-25 03:16:52'),
('df50a64c73173a9b40c05b2e075c831597bd5993360bcce24064c21de54fb33631582334b1394f00', 1, 3, NULL, '[]', 0, '2017-09-25 03:32:49', '2017-09-25 03:32:49', '2018-09-25 00:32:49'),
('e12e591158e637c12c590ea47e4086b0bf1ff46a13b9124f2c57e101b288867d35587c55b2f00bfc', 1, 3, NULL, '[]', 0, '2017-09-26 04:29:50', '2017-09-26 04:29:50', '2018-09-26 01:29:50'),
('e8c48f43c41d6d63b7d0018cc4aa70767f9ad3791cd570a480c9fcb62fcc70435446283b3b9a6746', 1, 3, NULL, '[]', 0, '2017-09-25 06:53:25', '2017-09-25 06:53:25', '2018-09-25 03:53:25'),
('e9665adc729acb6a896afa1021e7de758d431ea4582cd6b02a44a7c0cc3d315970e7a747e30d0c27', 2, 3, NULL, '[]', 0, '2017-09-27 03:25:36', '2017-09-27 03:25:36', '2018-09-27 00:25:36'),
('f83173f81cf33704fee6d5973054ee5f71acc4eb4a61e75f8b0578ff21bec7be7d4aecd989966737', 1, 3, NULL, '[]', 0, '2017-09-26 02:41:53', '2017-09-26 02:41:53', '2018-09-25 23:41:53'),
('faffa749580991eb1b0cb4c634463f1909983861bd41ede265742db111c17633ec83d2e6be497a26', 1, 3, NULL, '[]', 0, '2017-09-25 01:34:07', '2017-09-25 01:34:07', '2018-09-24 22:34:07'),
('fe51aca8ecf5d25f94b44c9ebc192b4f7e92e279d8239423aa12c137a53e742dc09b5357ec96c9d8', 1, 3, NULL, '[]', 0, '2017-09-26 02:36:35', '2017-09-26 02:36:35', '2018-09-25 23:36:35'),
('ffafe5eda3d55d4559079ba9c73ffee0a7d48d5e92fe85bbfbb6ed64f271e76ee66da44fd7c4b947', 1, 3, NULL, '[]', 0, '2017-09-26 02:39:01', '2017-09-26 02:39:01', '2018-09-25 23:39:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(3, NULL, 'TesApp', 'Zky32SLVuObQxQh7Y41FZnkVOvQoiXL7dveOMRTY', 'http://localhost', 0, 1, 0, '2017-09-25 00:46:17', '2017-09-25 00:46:17'),
(5, 1, 'teste', 'NFJDcx53DnFzq3Bl8h5U98R4PuzTpr66bPmumaGs', 'http://localhost', 0, 0, 0, '2017-09-26 16:58:50', '2017-09-26 16:58:50'),
(6, 1, 'testetete ssssss', 'TRUaM1C7nSMv0RW6bUsWd6KOFyaXc4rvLZ8ZP6dX', 'http://localhost', 0, 0, 0, '2017-09-26 17:02:44', '2017-09-27 03:09:46'),
(9, 1, 'ytytyty', 'PxueU4ovORAdOfWjRaeMlS3AgUdy2H9xP1YsLuA5', 'http://localhost', 0, 0, 0, '2017-09-26 18:35:03', '2017-09-26 18:35:03'),
(10, 1, 'rtyrtyrtyrt', 'S3IQY5t2bEurRtugUq0ctyI4eex3ZgwOjgDMf7x9', 'http://localhost', 0, 0, 0, '2017-09-27 02:51:09', '2017-09-27 02:51:09'),
(11, 1, 'rrr', 'SgxHozppDweFOIDwvIU0Eo0ls1EtTBwpVMvtiLIF', 'http://localhost', 0, 0, 0, '2017-09-27 02:52:31', '2017-09-27 02:52:31'),
(13, 1, 'aaa', 'iwdYBSEHCm1CLGxAwRGMcYgHz6lpGKx3iKxtjGnO', 'http://localhost', 0, 0, 0, '2017-09-27 03:15:11', '2017-09-27 03:15:11'),
(14, 1, 'asdasdasdasd', 'IzUk6vLyki7H0qVrcPdRCwLSI5TlTZOSXHFygPFF', 'http://localhost', 0, 0, 0, '2017-09-27 03:22:01', '2017-09-27 03:22:01'),
(15, 2, 'testestestetse', 'exZ43vT2MJ6v0f5kr8Uvw3qU1VZIi8ikqu1qS3zm', 'http://localhost', 0, 0, 0, '2017-09-27 03:24:52', '2017-09-27 03:24:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('054a70aca94a064c2114e476f0110b8ff968b6a7258d18200a926a186cac7c2ed510a1b719729b55', 'b30b63ec81f4ac01ed2e74a2de4ad72a6645dbd0ef27ad953777567f1c3c2a8bcfe4fb22c344538e', 0, '2018-09-24 22:33:40'),
('0d9fb0446df1ae5a8d3f92041110c2546d93818050bcd13f342e4c4fa2edec8bce7251a24d26ff95', '7a86496a9e9de021016eda0312b78f503d5c7bdef1d3b591ecfb9359af35a9018d0401bbb2e9dedb', 0, '2018-09-25 23:34:48'),
('0f785faaf2743529ea358d24c184e02c5ee2a8b4ddc6dbceef70d4ad2a5cc2c9ceca55db71e59c05', '3f9c037456a04554ab01e22e4c508b8c286ba69fe7f531d1579f458ceaa74fbb5d6159d752dd67e5', 0, '2018-09-24 22:34:22'),
('0fe7914bea6f0b264a1785a0f5c63ffaa7e96a05ea35848f6307ab78914acd30f504e506edfc209f', '732af3a753bea7debcc7ac0d67a5ec4566d62dbe9e9a2891f474f57eafb6f15b6596635e94c44320', 0, '2018-09-26 14:19:28'),
('116426546db78ee320590af16107e5ef4c6a7dadde478a789e3dea9f6bf169d70812da21a875aad8', '74e31acfa7c8e0446bda7f64a352fbe1d3463670700a1cf4bd45aad15b855e50911b7eadccc1ded4', 0, '2018-09-25 23:34:47'),
('1449a71a352a1d5414d6b2d941eb7fc627aa37e2f7e2704a4f328b346f0fd4225c49e60b428bc24d', '56255e0ad06f835752f2f380bea30e209f9acc429a35a635962c7921400f0200146533a09c3bfd3f', 0, '2018-09-25 05:02:17'),
('1542d384fb0995ec6a3c3ed8a26c3244d8a065d47bde4148f2452d441d5c8beb26c84113e46c5a91', '0794204bbb0630452b01d473b2cc192dce36fa571665290ae655857475b999aa3ed1f4121d3681c8', 0, '2018-09-25 04:09:44'),
('15984ca8bad050d13c8969c1611caa4bca781ffb5c4aa6e95a3307308aa09ad0cbb0e8253597ecd4', 'af668d8fa2bc4fb5c01001a1b3fcd39c9d3b80e4c046b2ef50b0a5e91768e7ea5f167266d615fc5b', 0, '2018-09-25 23:34:43'),
('179cf9d3de7fcc07e17c3c0312274f56899779f6cccd117c1d69750d228e7b53b477f3d110c14bf8', '83758a4598701aed38ab58815714a06b82a7966eba12a89084f06c56469c3b34928909b7e1d36013', 0, '2018-09-26 12:32:52'),
('1eafab41f8b0ff02a18b721e047bcf7382e50c49a31cce7c1778fd1d89bf87081049e261005ae878', 'ab70c25a0b926c6d142df2c35db74d27906a4d01fe05ee92b5bb0c587843231dbc68cec1324a5394', 0, '2018-09-25 23:45:18'),
('246a58b6dd861c110508fbcfdbd8b77d9eede6c68a9c4eba6e43651e8335d58068d9c2fa104eeb76', 'fe51aca8ecf5d25f94b44c9ebc192b4f7e92e279d8239423aa12c137a53e742dc09b5357ec96c9d8', 0, '2018-09-25 23:36:35'),
('26f041fb01c0e59100c359ecd55d285f541395f6bd3ace0c6acfcf5e63068f6ee7a42ba4200b500c', '4bcc5ee8f32391f164593448680f18a1eee02052dee6dfde0c24668a5d3d9fd0e5bce223ef49f3be', 0, '2018-09-25 03:53:14'),
('2f21cfe3c6bd97de3cf9731bd7c046e523e6aacbb1fa06d797ec95e7617c8327fce0b6ccbc387b82', '9119210db80fdfa72d57ce4030b485710208b58ae58147a14b3770271ab12051f2f36f22e0168d9c', 0, '2018-09-26 17:18:48'),
('304bfcfb2bd9eda64682a2d66ff5e736e1abc1e0699596198c39895a6f27f77c556dd881b141b7ea', '1a8ee20a31c5e79c329a005e0be693e88b4049b4e855b311d1d5d499e35d611951a1d26ee3ac0e4a', 0, '2018-09-24 22:34:08'),
('34dbaa8b7a1dd6bbf9603d85801fd446d49012baf4e3dad056ad13d36be4564c72bb61ba3e43006b', '6ae5dccc3d5a1496e6dce999eddc4d9abf3ffa2fece64db3bdae421cb26ebaf8f0021b913dda3826', 0, '2018-09-26 00:11:08'),
('36dfa9079e6fb18afa9fc4155d584b86c581bb331b2ffef0084a50781f2a08ffd508c1e3e54682c9', '74659d22deb6de1f05c82579a0842edba026421fd92b3ff7b80c21d9d98e7f1ab8a2301243dd15f9', 0, '2018-09-25 00:33:10'),
('3d951cdeb2a23b4b06f33248c81fa0246afd3a76331853a8f672c08ad21cd46131a2a7fc53863b95', 'faffa749580991eb1b0cb4c634463f1909983861bd41ede265742db111c17633ec83d2e6be497a26', 0, '2018-09-24 22:34:07'),
('41630838deff68967e4a019fcb48c8235b38f58b0dfd3a6cd028bba8c2d94a9d1c35ce1d45ce6d12', '6094116e6c9d9e4967b84be3b623b70b29510e04fce65f0b55e51d94665f35bc3b15b354cd50e4d6', 0, '2018-09-25 23:27:51'),
('42c1a56b6bb14545ac8c6a823b531179d598557aa9d8d40b7123802818e4bfdabfdab6c54e463ad7', '0025f073ab43f55a6b9da8530c953d5ff9453c99d16a2e7a65c3e82dacd8e5787058ab3116d67081', 0, '2018-09-24 22:53:03'),
('43843585be60b22b357d66341b9bfddf5f4a5c6b2508a2d66aefca6fd6deda6ca60cb6b48c8a9454', '56fb18044c775e804338f41d12ae4d916f53abeb6cd4f637837c0b7cc089a7039ea3842bb389c7ee', 0, '2018-09-25 03:19:52'),
('4707d4640798ac7c6e45c155151cb825ca24d3e64e9e584731e92201ec03ec230935ff82b4b444bb', '74e8eaef06890f983506aa81dea5ca680948cc112ffa09f1cc224a48ac08a6bde2749ebee523a8c5', 0, '2018-09-26 23:40:31'),
('4851a42aa2af1aef289865fcd69da6e1e9daf514af51724836babd77f9d26b0a9bdea78aab6b155c', '3fa227f3f79cad6fbdbccdc33dbafab1d8c2e47c0571e8745bf5bb5fbf1f5c7125f97df80e7bb34d', 0, '2018-09-25 23:48:07'),
('4ab0bba6276133d1b28d4d0f5abe4ff505be9f2864d660ec86ac17e04a6bb91e59073c15f6e9e306', 'cccd46309f3799b236dcc490135e969e162d26fdb7ab33506a735afe8b90241ab4c720b3bac77b8c', 0, '2018-09-25 05:13:07'),
('4dd620e21521cf725e0afca2b4584443211d1c93de7075482e86b673ae51f590f5b8a9dcd8590ab4', '8473f45444a524f9145eebaa0e2fb5899e96d5aa1f6dca4d7715dd4a7c8980b85f481e3c0a692064', 0, '2018-09-25 05:02:26'),
('52bcae47098ec39d219ec2ed10deb99bdf8279751b0b3b148258c3034f55fb05f4df00791b3946b3', '28f9d52d74d53244cded7556b754bc05560d4cf7f2bf761e688a106a1bb1dcfa2f767d88c957ac12', 0, '2018-09-25 05:02:28'),
('58c0975d1d06e5b65dd61b3dd9c29c4a2831673a10b0ca099b127508e17ffb2fef62621c3a3110d4', '1ca8cc674d82eaaf654556e0a084372474bb1c9eb6424578e4f86bd56bdfca0e2bf31d273439ea2a', 0, '2018-09-25 21:31:57'),
('5b2304de9b1d6fc1f9cf735f5385085a67f50d070ca394e3718ac8a2f03dabfdac33c2985fae6944', '094711f2164a450c6e58feef40bdf6b90806de0a3e27b1fa6964a211755b9cc3dc8bb02ec5f9db0b', 0, '2018-09-25 23:34:46'),
('5cdae4dbcd011210609c2029b509cffb5ca79a184f9c4aefd65ebbdd2dc0e7a0e4ca462ab749a656', '6b7a1f2bb89732a74e4ef690df3898ec0f5ae5a90559c5de8b60b75c251f834e8874053d49a633fd', 0, '2018-09-25 03:17:17'),
('5f69c8673907f26b657c94623ff21e8ff0c9f626628647d831a3d4d56c8b14f6c9d323acc289bd76', '3de14c57744465e83e5dbe2ed31a25c98bf70c2d0036fda3ab8abf7ae8964f3430bace9303684b9a', 0, '2018-09-25 05:02:30'),
('5fb60bf9558ad440ce1fa9d2b9775a9aa6469bf63916fcb4aabd8d6e333712168d54fa4a150049af', '53af684c30ffc19a8e6a6583792904c50d4342d09fc8828d3ef877452416a7a8dadb38312edc3fe4', 0, '2018-09-24 22:34:22'),
('61cf3a586d1820ffdc378037b73a638457485db65df0ca1d2b8f37207c448a440e5bf5666cff23cc', '6db6cc8a86697b77aa533ac0f225ee5281b9eee5773c1b01b7214f00ba83c84ea4cc8942752cf5b6', 0, '2018-09-25 04:22:42'),
('62914eac70171797d19c19d1294b1561fe586e8a6c3da35f0e2411894fdc797b649b17432d6f2217', '8f980b3c7589edf49e117bc8c36d5d575e2556008e1b960ca71beac15a48e5c7d9ce4cddbc1d9e8e', 0, '2018-09-25 03:51:26'),
('7491c36138257628f0ff7cd8339162c737e046f6a20afc85e13650ff39db62018836427085df10ad', '3a1dc00c531289542677d744b47983b025e9aeb71bc1aaf437ba276c570300bd12d584edb3bc5604', 0, '2018-09-25 03:56:00'),
('794a2c5a398cb67c86a3d1d138c6cbdaa2b95b858a57de67c7b0ed5b38a57f43ea806262a576b157', 'ccb404306dbf1be0f9d851e484ded184d0e94518acf876044661244560c6ecd8a6f21bb16d21de29', 0, '2018-09-25 03:46:29'),
('79589d10b0cf7f0f729976a315e1add876b4b7d11a99eef4a720b150610c69bdeb02837a08845ad0', '05324a6add391b4b975ce7538dcdf150a377627c441f6a91fdfd1c07780cff979e40ea9e25589ca2', 0, '2018-09-25 23:34:45'),
('7aa9ba906d0aa7da0ab946887d84b71d7acd77d1a2d9035d69404daa43f4a4921421da16536fe106', 'e12e591158e637c12c590ea47e4086b0bf1ff46a13b9124f2c57e101b288867d35587c55b2f00bfc', 0, '2018-09-26 01:29:50'),
('7add47fa61799f936697f6b993732bd6a334c25c5f5ec9c711b004737565f2faf6e687f684a01ae5', '13674bad71ebd60bf5e5441905cba19b2ff50aeb20f19694b145b86820f7ab8fa0f482ea11c9662a', 0, '2018-09-25 23:45:20'),
('7e0249f0646bc01c8875895eafb3abd319226b9608506260c38b55d317fbb79e58698534c3260801', 'dcdbd9ac1f4f09fbf2be8062d6bb9b7ea58f730465b6dc996ea97a95980d3c18db8265b830735d75', 0, '2018-09-25 03:16:53'),
('80f201ba1cc4bbce103e828fd8225cc513994a92454fba3420ed34b0f3b555ce36250cc4968b8282', '13b6eaa6812c3ae76199028ff16ecb69313560c742a6f97e3c84cf8df701d56e38c377afeb68790a', 0, '2018-09-25 22:18:03'),
('87222aac91a43241019222b3e13a8e64fdcd62df73b67bafaa9c54ec997c5b83dff0c16cd4b3b6ca', '259e2805f1f2bdc3f0f41c2ed2dc1ced0844449fabe6902c84b10df96e134de34d6673c377e276cc', 0, '2018-09-25 21:30:11'),
('8a67f67ae5847b9cec249498be5d628436d6ece01004ac57a78afa20ed0c08870de8d9bef1ec70d7', 'f83173f81cf33704fee6d5973054ee5f71acc4eb4a61e75f8b0578ff21bec7be7d4aecd989966737', 0, '2018-09-25 23:41:53'),
('8d33fb0bcaa87cb5cb30bbe4617042d3e963ee5ff25a54598d5643762d6d67e623e5ffabbf11c533', '4928f7ec347d54f53fc9423db7da1b8d11611ff09dacb581d9e340040ef64aab5be9896ecdc3ea93', 0, '2018-09-25 23:34:49'),
('8d43ce47f548a43f6677b511832f3beb51830e450c2aaeeda0eb77be86be6010cc415783ec954660', '252aec3627eb7504adc9df9c28ff3486160e18bdfaab3fd27538c71176c092c17cf7951df272f8e6', 0, '2018-09-25 04:11:47'),
('8e639bac1fdf5f7ff77e26b0a248d3ce9d263ce620c354c8a0aa0c3525ef7f0d1c65ed3900c64a93', '5c3648671506d9fd3d306a42b671a56120d0903b17c3f7edede81cad33fda3b661ef6afade9e083a', 0, '2018-09-24 22:34:01'),
('929a44bed8a8b5f1e836ecc6afcbfaed63638bef8eaa3d24332b765e068483d3f686b2faa2720177', '58787ba50b5aa9e51c9a1b319fae92c190edd00f0f76b5adc84b1b71caa70524287224b3f64e62d8', 0, '2018-09-25 05:02:25'),
('9687a288f39cf28c0f00f7c5c4b8a6a6569c67b29b5dec8a55c7b2d7da1846d9a1859600f5a618f6', 'c342af4c7a2f2e4cdd4053f732198213ebcef6d65d9e7add503b1e2aa09c914136d229a4ce04ea0f', 0, '2018-09-25 23:34:45'),
('97d63f5d0d07ec47de869f865f764d564160baf13663e6db6b2eaaa39cbb26336cea01d486f4c897', 'ffafe5eda3d55d4559079ba9c73ffee0a7d48d5e92fe85bbfbb6ed64f271e76ee66da44fd7c4b947', 0, '2018-09-25 23:39:01'),
('a1bd76c87a98188cd83cde805ab10ee52f75468477aefdd454604bcc334e826888fd9eb366744dae', 'd2c19c8e02007076ed21cdfa870de467b911c182337e106fd590cdb9fba25ea625069e6ba507022c', 0, '2018-09-25 23:45:16'),
('a49515a999db152d691b04088ed25809e7755969f75c1f7a32cef9525a7c7ce57fcca662e98d8882', '65120f3c66c849175741516fde1e028731a937b4941b92628c7f3b4a0204385fa78ee21434e3a79b', 0, '2018-09-25 23:34:44'),
('aa25978b79dc42228fba26de9ddc80941017e81a558025ddc9f7673720ec7dcafed0cdfc49ef036d', '6e053f1c272b3752530d2b8f3979a0ce6d934139361e324fd05244359424dedeff492205bbcbfafc', 0, '2018-09-25 21:30:20'),
('aa68135dfe0bde8f24b7493caf0d4abc041547bec900ee1554e24c01a83f023f78e6c17fded820be', '706454f606e9bd9e8e7f607d04013729d01fcf16037bf4a079566b3ad63a3ddb7e637620ad354768', 0, '2018-09-25 03:51:45'),
('b17b9a831917ac5452556d7e43393d57e85e5b403038d2ab0eaaf882f7ec5c5692f92bfe7cbe19f1', '65031284e46dbcffc8233cbd90e517bd3c6b9bd239b108a8204a2d750d51b2d96e965c6300b7dd63', 0, '2018-09-25 23:34:51'),
('b3095138e1fe931ebd2f7936fed19dfe6e440a7ff7dffebc724f5410190f91dc590c9788d0a28f69', '0753648a035f3be9152f21d9113933601303ab44aefa643cc346a424c7e9cc80144f180c8911fc8e', 0, '2018-09-25 03:58:52'),
('b4ab64f21a10a596120d17088c899f390e4d6dcccdef8a2efa95ac2db3b37c99d0f888aba5f05010', '4aa624cf35314b6b222fc35b542e42d3ecfb116c1bff3ff77a554d57c14d374d0ac0db201bba20e4', 0, '2018-09-25 23:34:50'),
('baad6667e2caf220b42cf7db6c3ca8c8e89b7d58d2a766b1364d9876bed9aa6d78d68a517f8831f8', '7c0d2dcd4ea02fecbab9603330d7e0580c6f1828309df1f43bc442b311d5ce87c5727bef2a5fb537', 0, '2018-09-25 23:34:51'),
('bb8af41970caaf33090aefa3e59e45631d4c672bc4f1c24dded1c3a3bc8069a1ce88fd864bd6d5f6', '4678564edff64ad8e300d0518fc6bcf50108662cdc4fce5a9448f201f60b8d7a7ec369debe02f6c1', 0, '2018-09-25 03:33:58'),
('bf673c2362d051bb4289c89fe367a1a636d6b9235e78ae198ae6b8a5318098f3a2f40c52db671140', '53e04daf55668f3c3c3667ecaa7485edb12ae26c8c9a3f16c0f7b887b235b1666d022b0d0f1b7bd0', 0, '2018-09-25 23:34:52'),
('c7c46104710fe72e60ceab6d3fc5319affb86624398278033011132bb378e61098fb4b174fd234cb', 'e8c48f43c41d6d63b7d0018cc4aa70767f9ad3791cd570a480c9fcb62fcc70435446283b3b9a6746', 0, '2018-09-25 03:53:25'),
('c933a7eb8493815d388ecab4637f672ec2cf82d5ee1d1aeaab0ddbd492c8cecb1988377984716ed8', '1c9e1a5e737d4161cbb49096a58460c8caa39346cb35cfc146daf0ad3584f567302c6b59cbd64500', 0, '2018-09-26 17:18:46'),
('cfdafdf901f99da8be520e539e587f7863fbbda9e446c857163027da556248076b4be1243b193a31', 'cec9bf1b20f0a67c04638283daac7294cf9530afa67834aa41353a448816fa735d17ac22d3a74496', 0, '2018-09-25 23:34:53'),
('d431267eb5e80d729c6a08c7796421242ec4d15948a9a199b843953c27b98f7ac071c5492171334d', '520c3f0b2e6e256a5cc56903b2f9c54a2e34902b84d666b3cbc2653962cae35281cf2681681e1d55', 0, '2018-09-25 03:41:27'),
('d56e27d42add1c4af31161175e7a8b162fd08a40e637f9dc50347e5d4be7a8de1edafdfd90f896b7', 'cf1bbd9cb22cd7413b500275ca0e0a023d493485354d24b3295c6f3ac1920fc9d00a522f7225ad49', 0, '2018-09-27 00:27:38'),
('d5b2a403abb9872f4c57931dd4a037b96361c1cfd9bb91b88795d71c09ff6dcb80f1a24ca19901dd', '51c59b9110ec12b2a6a505a8cbad349d1fab4151ef84f4f5c7389d3d171e215b669158160411b3e3', 0, '2018-09-25 23:37:12'),
('d5d0153bf634b7fa01cbb09517cd9eaeb65138a28e4069d744f86c9e99b889ade133464190a3c0e2', 'd6b24bc08b6352c870297e8a0b1b0a650b27afb06d5f0a4048900eaeb641b411baeda87a87766705', 0, '2018-09-25 21:32:10'),
('d7a00f2e183f9c24ca9404ecf3f32b48ce6d06d9331212c5916a206b868f5daed5596ea8fa1c8123', 'c0c10b7fc58dedb1838a86ba5564aead26be2bee82182060c7cba979d71e290cae5983ba26ba265e', 0, '2018-09-26 01:00:27'),
('d93de2998a12a62d3bcd037b4479b8d47a18e9ac6a9a6fae44df1e094912b2c8819ad7eb844bd27b', 'cb3460c796e7847a1ed37036673b457361d5e37a1fb765a111465b0e9595321d4cc430433199fac1', 0, '2018-09-25 03:51:42'),
('d9ea9360b56e2bf60fa28696bd1e7bc6586fd6465636f38cc140699ccac931c7fc9e61072ed05b77', '65895c7a00bab337b7930177bc4b76e066855880530e6844b6e9cccf4cca62fbcf02b2e828bc5327', 0, '2018-09-24 22:34:15'),
('dc48d25e5c7e907070303c250f1c625dee465e9a266225c3d016a5b2d0b92c4ca921e5a8b479bb59', '9be27ea52b09d9bbb128c6449004625003256a4ad59bbf8d02b0632b2e3b0094d98cfa1f89a1b017', 0, '2018-09-25 21:29:28'),
('dc790779c7f6f543ab12bb71bc3189bb5feba675b3444fecb4290453ede93f51706b1b889cdfe9e0', '9ffce0a2788ae6e8a5e0846b5db88bbcd3c37cb217e752a9e342dc008c8eb4c6ec35de38b986d8a9', 0, '2018-09-25 23:34:53'),
('dd8fc7b857650c383b57eea815625460a921e094bd8e0eed20d01a5ca4cdb2608e28a9b62d11a4c6', '721fe0c3c66aaeefc6dcbb181c0a01f5443213117cb00904982351494e01d0205326c47d7663d112', 0, '2018-09-25 03:19:15'),
('df8d464ebad463d1a7da5eb099638529ff28660f22ad7ad2e35b95c3efce4c89373db4177fd4dcbc', '4ea368d82e6c1af8777b8fbc461affa11fe6372a3975608db18642b9287fb5d25a176eba9656abd1', 0, '2018-09-25 03:42:50'),
('e288e83edda4d000fa470cfacf4022f5c8d845c0bc9ffb38fea1fc72e24f2bceb659054e575e5425', '446efeea1911bf44e313b59801e121179d415e564b000f425758ccc7b3dd76c18905a95040541bc5', 0, '2018-09-25 03:54:35'),
('f04d5dd204518cfe00c7a96f71d3ac89c6700be71dcc3f3723834dddc1b3b5b5fc63d75c7353a1a8', 'd12a324e0d1aeff44b30541fa03dbd6772b81a0a4b225bcaccff56c813d60df519c65bb8d51cc5d8', 0, '2018-09-25 03:34:08'),
('f1a4c4858f9794700400cfe0fb4688da58241ca7a12421763bda328950ec340f7d62e0011df3c29e', 'c93ba9d7b7988559727c030d34a466d4a4f92b63f3b9df4c16e6efb08eca2f865b9733117041ffdc', 0, '2018-09-25 21:31:56'),
('f272024c55aa022768b3c56973917d2a96105b9adc71e3e515a4fcf1eff7c366889b7a37ffb9b936', 'df50a64c73173a9b40c05b2e075c831597bd5993360bcce24064c21de54fb33631582334b1394f00', 0, '2018-09-25 00:32:49'),
('f7defa46eac73c6e48a99bf2af54d374f351d999d5e37031055260b9da8034d038d04f5c23f7cf73', 'b88f4f1754b5b0bc32ce0a8020828564d8298e6aeb1b9a36365cda02eb3b8500a37018b10d1853d8', 0, '2018-09-25 23:45:19'),
('fb34be5f4382a40d5d6855bb16c04a39a29a8cf06fc6176d03350e170f44b9e637e184f8f68bb1c4', '3b82ff4915466f711f327810a115a35c354c1f6a87604fec8106199d6d6c7f29de09f1f1d7fb4b67', 0, '2018-09-25 00:32:17'),
('fb88f026893c32ef5cbfaa22759b9fd6f6c003a827df7086ff625627e5648861f283ca8d88ec228d', 'e9665adc729acb6a896afa1021e7de758d431ea4582cd6b02a44a7c0cc3d315970e7a747e30d0c27', 0, '2018-09-27 00:25:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `titlePost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `titlePost`, `description`, `created_at`, `updated_at`) VALUES
(41, 'asdsdas aaaaa', 'ra sdasdasdasd', '2017-09-26 15:50:15', '2017-09-26 16:26:26'),
(44, 'fffff', 'ffff', '2017-09-26 18:34:42', '2017-09-26 18:34:42'),
(45, 'teste de postagem', 'Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.', '2017-09-27 00:11:08', '2017-09-27 00:11:08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rodrigo', 'rangelgelsonrodrigo@gmail.com', '$2y$10$Nb/HsNcauO40HBWf.Dl5r.1iOL8yUi5vLM79qbA7x.OlpcVleJV.C', 'z9otVD74UqH6RfOmecEzNYV07YBqOWSYnvNidOI90jkM3l2X4APbgnOpKQ74', '2017-09-25 00:14:59', '2017-09-25 00:14:59'),
(2, 'teste', 'teste@gmail.com', '$2y$10$F5Ve7HtgeKG1DTDNfiTJ.OXGo9pALrTwwD6DIfZFu/S6clkP3bJsS', NULL, '2017-09-27 03:24:32', '2017-09-27 03:24:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
