-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 19-03-05 09:37
-- 서버 버전: 5.5.59-log
-- PHP 버전: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `jch`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_auth`
--

CREATE TABLE `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_autosave`
--

CREATE TABLE `g5_autosave` (
  `as_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) UNSIGNED NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_autosave`
--

INSERT INTO `g5_autosave` (`as_id`, `mb_id`, `as_uid`, `as_subject`, `as_content`, `as_datetime`) VALUES
(23, 'admin', 18120416542137, '\통증의학과 \템플릿', '<p>\ㅁ</p>', '2018-12-04 16:55:21'),
(25, 'admin', 18120509345199, '\서�\��JM가정의학과', '<p>\ㅁ</p>', '2018-12-05 09:35:52');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board`
--

CREATE TABLE `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_write_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_download_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_html_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_link_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_point` int(11) NOT NULL DEFAULT '0',
  `bo_write_point` int(11) NOT NULL DEFAULT '0',
  `bo_comment_point` int(11) NOT NULL DEFAULT '0',
  `bo_download_point` int(11) NOT NULL DEFAULT '0',
  `bo_use_category` tinyint(4) NOT NULL DEFAULT '0',
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_good` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_name` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_table_width` int(11) NOT NULL DEFAULT '0',
  `bo_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_new` int(11) NOT NULL DEFAULT '0',
  `bo_hot` int(11) NOT NULL DEFAULT '0',
  `bo_image_width` int(11) NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_upload_size` int(11) NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_search` tinyint(4) NOT NULL DEFAULT '0',
  `bo_order` int(11) NOT NULL DEFAULT '0',
  `bo_count_write` int(11) NOT NULL DEFAULT '0',
  `bo_count_comment` int(11) NOT NULL DEFAULT '0',
  `bo_write_min` int(11) NOT NULL DEFAULT '0',
  `bo_write_max` int(11) NOT NULL DEFAULT '0',
  `bo_comment_min` int(11) NOT NULL DEFAULT '0',
  `bo_comment_max` int(11) NOT NULL DEFAULT '0',
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board`
--

INSERT INTO `g5_board` (`bo_table`, `gr_id`, `bo_subject`, `bo_mobile_subject`, `bo_device`, `bo_admin`, `bo_list_level`, `bo_read_level`, `bo_write_level`, `bo_reply_level`, `bo_comment_level`, `bo_upload_level`, `bo_download_level`, `bo_html_level`, `bo_link_level`, `bo_count_delete`, `bo_count_modify`, `bo_read_point`, `bo_write_point`, `bo_comment_point`, `bo_download_point`, `bo_use_category`, `bo_category_list`, `bo_use_sideview`, `bo_use_file_content`, `bo_use_secret`, `bo_use_dhtml_editor`, `bo_use_rss_view`, `bo_use_good`, `bo_use_nogood`, `bo_use_name`, `bo_use_signature`, `bo_use_ip_view`, `bo_use_list_view`, `bo_use_list_file`, `bo_use_list_content`, `bo_table_width`, `bo_subject_len`, `bo_mobile_subject_len`, `bo_page_rows`, `bo_mobile_page_rows`, `bo_new`, `bo_hot`, `bo_image_width`, `bo_skin`, `bo_mobile_skin`, `bo_include_head`, `bo_include_tail`, `bo_content_head`, `bo_mobile_content_head`, `bo_content_tail`, `bo_mobile_content_tail`, `bo_insert_content`, `bo_gallery_cols`, `bo_gallery_width`, `bo_gallery_height`, `bo_mobile_gallery_width`, `bo_mobile_gallery_height`, `bo_upload_size`, `bo_reply_order`, `bo_use_search`, `bo_order`, `bo_count_write`, `bo_count_comment`, `bo_write_min`, `bo_write_max`, `bo_comment_min`, `bo_comment_max`, `bo_notice`, `bo_upload_count`, `bo_use_email`, `bo_use_cert`, `bo_use_sns`, `bo_sort_field`, `bo_1_subj`, `bo_2_subj`, `bo_3_subj`, `bo_4_subj`, `bo_5_subj`, `bo_6_subj`, `bo_7_subj`, `bo_8_subj`, `bo_9_subj`, `bo_10_subj`, `bo_1`, `bo_2`, `bo_3`, `bo_4`, `bo_5`, `bo_6`, `bo_7`, `bo_8`, `bo_9`, `bo_10`) VALUES
('portfolio', 'group', '\포\폴', '', 'both', '', 1, 1, 10, 10, 10, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 12, 15, 24, 100, 600, 'pf', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 3, 510, 355, 510, 435, 1048576, 1, 1, 0, 30, 0, 0, 0, 0, 0, '', 2, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('contact', 'group', '컨텍트', '', 'both', '', 1, 10, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 60, 30, 15, 15, 24, 100, 600, 'contact', 'basic', '_head.php', '_tail.php', '', '', '', '', '', 4, 174, 124, 125, 100, 1048576, 1, 1, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_file`
--

CREATE TABLE `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `bf_no` int(11) NOT NULL DEFAULT '0',
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_filesize` int(11) NOT NULL DEFAULT '0',
  `bf_width` int(11) NOT NULL DEFAULT '0',
  `bf_height` smallint(6) NOT NULL DEFAULT '0',
  `bf_type` tinyint(4) NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board_file`
--

INSERT INTO `g5_board_file` (`bo_table`, `wr_id`, `bf_no`, `bf_source`, `bf_file`, `bf_download`, `bf_content`, `bf_filesize`, `bf_width`, `bf_height`, `bf_type`, `bf_datetime`) VALUES
('portfolio', 28, 0, '\피부미\남pibuminam.com.jpg', '3673136287_gDBhpouq_e7e48d5c115415a517c8905d381622c0f2cc570f.jpg', 0, '', 34018, 510, 355, 2, '2017-07-29 18:30:50'),
('portfolio', 19, 0, '\임플란티\스\랜딩.jpg', '3673136287_Aykmze3o_cc709b67554ede4b72ab13d99f530ed0b4ce5aaa.jpg', 0, '', 39744, 510, 355, 2, '2017-07-29 18:10:19'),
('portfolio', 20, 0, '벤�\��아.jpg', '3673136287_yRzl2QTM_1ecbeff428f793f899e861e95e75e3a7cd2c5b10.jpg', 0, '', 43128, 510, 355, 2, '2017-07-29 18:12:39'),
('portfolio', 21, 0, '\픽\스\앤\샵.jpg', '3673136287_281POVIB_aa494262f7e641593c4d0067dba3257a6fdba918.jpg', 0, '', 34712, 510, 355, 2, '2017-07-29 18:14:36'),
('portfolio', 24, 0, '\연\세모�\��일.jpg', '3673136287_UPsDBINk_01f273a611cbc5cf4cb85d8e2df07bde305dbc61.jpg', 0, '', 43135, 510, 355, 2, '2017-07-29 18:25:24'),
('portfolio', 25, 0, '\연\세\엔서울\랜딩.jpg', '3673136287_f1NvwCWl_226ca8709676409d6226d3eef577368b38a07e47.jpg', 0, '', 34151, 510, 355, 2, '2017-07-29 18:26:53'),
('portfolio', 26, 0, '\도깨비.jpg', '3673136287_4MG0gtEd_b7b6df52dfa9ce4c402fff29c964f74d3fd46e6b.jpg', 0, '', 32514, 510, 355, 2, '2017-07-29 18:28:42'),
('portfolio', 27, 0, '\속�\��.jpg', '3673136287_HtQvu2AL_c7385ecefa219c83867f7bff0ab889f5575e97a7.jpg', 0, '', 23068, 510, 355, 2, '2017-07-29 18:29:54'),
('portfolio', 31, 0, 'hue.jpg', '3673136287_sPALT37R_c305da7648cde0506c1114352674fd2369a05308.jpg', 0, '', 45461, 510, 355, 2, '2017-07-29 18:34:13'),
('portfolio', 33, 0, '베스\트\프랜드펄러\쉬.jpg', '3673136287_caHN5o7A_eac888246619c7078f3e171e76a0ef65800f8719.jpg', 0, '', 23334, 510, 355, 2, '2017-07-29 18:35:50'),
('portfolio', 34, 0, '창신대음악.jpg', '3673136287_IYF97Miy_69ce7aa54d83e57ba3f96eeb29e404efa0212734.jpg', 0, '', 26935, 510, 355, 2, '2017-07-29 18:36:40'),
('portfolio', 35, 0, '\알�\��르\단\자.jpg', '3673136287_HzTMxyea_92184f8299204d13c792b968e94ba9f8fd488b30.jpg', 0, '', 28824, 510, 355, 2, '2017-07-29 18:39:05'),
('portfolio', 38, 0, 'gmr.jpg', '3673136287_ndRPyVAL_266d4b365cfd1b74f4fbc6c9237cdebdf63cbec6.jpg', 0, '', 30765, 510, 355, 2, '2017-07-29 18:42:11'),
('portfolio', 62, 0, '\도도.jpg', '3673136287_Eg4kRhjy_cda2a8ef34a9516f51ef8ef0a9574089d0fcf48f.jpg', 0, '', 48244, 510, 355, 2, '2018-12-04 18:12:32'),
('portfolio', 41, 0, '\클\레오.jpg', '3673136287_nvUD7iWO_23328dbd8495724d79baba699642fb94b79197ce.jpg', 0, '', 21736, 510, 355, 2, '2018-12-04 16:43:08'),
('portfolio', 42, 0, 'base.mayak1suwon.cafe24.com.jpg', '3673136287_SWph8ri9_f7fca1a2f08a3b19a7fa7a6e2171087f33f210ac.jpg', 0, '', 72055, 510, 355, 2, '2017-07-29 18:48:03'),
('portfolio', 43, 0, 'opia.jpg', '3673136287_WLaxplo6_3319e110dbafc18c1c9bd2b15ea1014bcda0a6ba.jpg', 0, '', 37166, 510, 355, 2, '2017-07-29 18:49:26'),
('portfolio', 61, 0, '\서�\��.jpg', '3673136287_LbknzMcK_772690b72eee62713f601da14dbdba453862fed5.jpg', 0, '', 44624, 510, 355, 2, '2018-12-04 18:11:48'),
('portfolio', 45, 0, '\덕소엔�\��.jpg', '3673136287_ehbTVQMA_d230226412cf5e79a55f6dd203af2549bc51b69d.jpg', 0, '', 56422, 510, 355, 2, '2018-12-04 16:42:37'),
('portfolio', 46, 0, '\에스\피부.jpg', '3673136287_7azd41yQ_0ba0ec8830e387f3b36e82fc1078d27229ab3389.jpg', 0, '', 46887, 510, 355, 2, '2018-12-04 16:42:13'),
('portfolio', 63, 0, '치과.jpg', '3673136287_ipDAJLKs_46395998092b4099ba49cf0906091c8439faafbc.jpg', 0, '', 41022, 510, 355, 2, '2018-12-04 18:13:50'),
('portfolio', 57, 0, '\통증클리닉.jpg', '3673136287_lfbi9zEV_640dc907d48f1cccd9f9e264ba192b300b6f1289.jpg', 0, '', 37801, 510, 355, 2, '2018-12-04 16:50:43'),
('portfolio', 49, 0, '\동원.jpg', '3673136287_i4vuJKSP_5806b60c629534934669683f3a5162031fa22240.jpg', 0, '', 28377, 510, 355, 2, '2018-12-04 16:41:08'),
('portfolio', 60, 0, '브래덤.jpg', '3673136287_8KkqMsOx_e1bdf635133f286b607c0983b98ab80759f475b5.jpg', 0, '', 60598, 510, 355, 2, '2018-12-04 18:10:40'),
('portfolio', 51, 0, '\라\이\또.jpg', '3673136287_gHPCUS0k_4117a5eb804960cb455f5e47ba44b811ce737e01.jpg', 0, '', 65046, 510, 355, 2, '2017-07-29 18:56:53'),
('portfolio', 52, 0, '브레스\트.jpg', '3673136287_05sJCi9Y_796d5b6015477bc86efabe7bb8e44d901f39f7aa.jpg', 0, '', 34769, 510, 355, 2, '2017-07-29 18:58:23'),
('portfolio', 53, 0, '\아루\스.jpg', '3673136287_9EimVlz3_16373060c7bc25f2db7646c3d56d97a8b7f884e6.jpg', 0, '', 45817, 510, 355, 2, '2018-12-04 16:40:37'),
('portfolio', 59, 0, '청담.jpg', '3673136287_aSwtWiXK_3657e5a39369d09ee1f48f646adfa1c943c91363.jpg', 0, '', 35683, 510, 355, 2, '2018-12-04 18:06:03'),
('portfolio', 55, 0, '\손큰.jpg', '3673136287_rvlgF0wn_c1e758ac142bb1fb1ef953e65100565be1036e2e.jpg', 0, '', 44044, 510, 355, 2, '2018-12-04 16:39:53'),
('portfolio', 56, 0, '\아임.jpg', '3673136287_lz58XViQ_8268b8c9c96268d8977750caac3dc402e314a36b.jpg', 0, '', 43449, 510, 355, 2, '2018-12-04 16:08:06');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_good`
--

CREATE TABLE `g5_board_good` (
  `bg_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_board_new`
--

CREATE TABLE `g5_board_new` (
  `bn_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_board_new`
--

INSERT INTO `g5_board_new` (`bn_id`, `bo_table`, `wr_id`, `wr_parent`, `bn_datetime`, `mb_id`) VALUES
(47, 'portfolio', 57, 57, '2018-12-04 16:50:43', 'admin'),
(53, 'portfolio', 63, 63, '2018-12-04 18:13:50', 'admin'),
(49, 'portfolio', 59, 59, '2018-12-04 18:06:03', 'admin'),
(50, 'portfolio', 60, 60, '2018-12-04 18:10:40', 'admin'),
(51, 'portfolio', 61, 61, '2018-12-04 18:11:48', 'admin'),
(52, 'portfolio', 62, 62, '2018-12-04 18:12:32', 'admin');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_cert_history`
--

CREATE TABLE `g5_cert_history` (
  `cr_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_config`
--

CREATE TABLE `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(255) NOT NULL DEFAULT '',
  `cf_admin` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(255) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT '0',
  `cf_point_term` int(11) NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT '0',
  `cf_login_point` int(11) NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT '0',
  `cf_nick_modify` int(11) NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_point` int(11) NOT NULL DEFAULT '0',
  `cf_comment_point` int(11) NOT NULL DEFAULT '0',
  `cf_download_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_pages` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_pages` int(11) NOT NULL DEFAULT '0',
  `cf_link_target` varchar(255) NOT NULL DEFAULT '',
  `cf_delay_sec` int(11) NOT NULL DEFAULT '0',
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_syndi_token` varchar(255) NOT NULL,
  `cf_syndi_except` text NOT NULL,
  `cf_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_point` int(11) NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT '0',
  `cf_recommend_point` int(11) NOT NULL DEFAULT '0',
  `cf_leave_day` int(11) NOT NULL DEFAULT '0',
  `cf_search_part` int(11) NOT NULL DEFAULT '0',
  `cf_email_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_memo_del` int(11) NOT NULL DEFAULT '0',
  `cf_visit_del` int(11) NOT NULL DEFAULT '0',
  `cf_popular_del` int(11) NOT NULL DEFAULT '0',
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT '0',
  `cf_member_icon_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_height` int(11) NOT NULL DEFAULT '0',
  `cf_login_minutes` int(11) NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT '0',
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT '0',
  `cf_memo_send_point` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT '0',
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT '0',
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(255) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(255) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(255) NOT NULL,
  `cf_facebook_secret` varchar(255) NOT NULL,
  `cf_twitter_key` varchar(255) NOT NULL,
  `cf_twitter_secret` varchar(255) NOT NULL,
  `cf_kakao_js_apikey` varchar(255) NOT NULL,
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_config`
--

INSERT INTO `g5_config` (`cf_title`, `cf_theme`, `cf_admin`, `cf_admin_email`, `cf_admin_email_name`, `cf_add_script`, `cf_use_point`, `cf_point_term`, `cf_use_copy_log`, `cf_use_email_certify`, `cf_login_point`, `cf_cut_name`, `cf_nick_modify`, `cf_new_skin`, `cf_new_rows`, `cf_search_skin`, `cf_connect_skin`, `cf_faq_skin`, `cf_read_point`, `cf_write_point`, `cf_comment_point`, `cf_download_point`, `cf_write_pages`, `cf_mobile_pages`, `cf_link_target`, `cf_delay_sec`, `cf_filter`, `cf_possible_ip`, `cf_intercept_ip`, `cf_analytics`, `cf_add_meta`, `cf_syndi_token`, `cf_syndi_except`, `cf_member_skin`, `cf_use_homepage`, `cf_req_homepage`, `cf_use_tel`, `cf_req_tel`, `cf_use_hp`, `cf_req_hp`, `cf_use_addr`, `cf_req_addr`, `cf_use_signature`, `cf_req_signature`, `cf_use_profile`, `cf_req_profile`, `cf_register_level`, `cf_register_point`, `cf_icon_level`, `cf_use_recommend`, `cf_recommend_point`, `cf_leave_day`, `cf_search_part`, `cf_email_use`, `cf_email_wr_super_admin`, `cf_email_wr_group_admin`, `cf_email_wr_board_admin`, `cf_email_wr_write`, `cf_email_wr_comment_all`, `cf_email_mb_super_admin`, `cf_email_mb_member`, `cf_email_po_super_admin`, `cf_prohibit_id`, `cf_prohibit_email`, `cf_new_del`, `cf_memo_del`, `cf_visit_del`, `cf_popular_del`, `cf_optimize_date`, `cf_use_member_icon`, `cf_member_icon_size`, `cf_member_icon_width`, `cf_member_icon_height`, `cf_login_minutes`, `cf_image_extension`, `cf_flash_extension`, `cf_movie_extension`, `cf_formmail_is_member`, `cf_page_rows`, `cf_mobile_page_rows`, `cf_visit`, `cf_max_po_id`, `cf_stipulation`, `cf_privacy`, `cf_open_modify`, `cf_memo_send_point`, `cf_mobile_new_skin`, `cf_mobile_search_skin`, `cf_mobile_connect_skin`, `cf_mobile_faq_skin`, `cf_mobile_member_skin`, `cf_captcha_mp3`, `cf_editor`, `cf_cert_use`, `cf_cert_ipin`, `cf_cert_hp`, `cf_cert_kcb_cd`, `cf_cert_kcp_cd`, `cf_lg_mid`, `cf_lg_mert_key`, `cf_cert_limit`, `cf_cert_req`, `cf_sms_use`, `cf_sms_type`, `cf_icode_id`, `cf_icode_pw`, `cf_icode_server_ip`, `cf_icode_server_port`, `cf_googl_shorturl_apikey`, `cf_facebook_appid`, `cf_facebook_secret`, `cf_twitter_key`, `cf_twitter_secret`, `cf_kakao_js_apikey`, `cf_1_subj`, `cf_2_subj`, `cf_3_subj`, `cf_4_subj`, `cf_5_subj`, `cf_6_subj`, `cf_7_subj`, `cf_8_subj`, `cf_9_subj`, `cf_10_subj`, `cf_1`, `cf_2`, `cf_3`, `cf_4`, `cf_5`, `cf_6`, `cf_7`, `cf_8`, `cf_9`, `cf_10`) VALUES
('\웹\퍼블리\셔::조찬\형', '', 'admin', 'admin@domain.com', '그누보\드5', '', 1, 0, 1, 0, 100, 15, 60, 'basic', 15, 'basic', 'basic', 'basic', 0, 0, 0, 0, 10, 5, '_blank', 30, '18\아,18\놈,18\새끼,18\년,18\뇬,18\노,18것,18\넘,개년,개놈,개뇬,개새,개색끼,개세\끼,개세\이,개쉐이,개쉑,개쉽,개시키,개자식,개�\��,게색기,게색끼,광뇬,\뇬,\눈�\��,\뉘미\럴,\니�\��미,\니기�\�,\니미,\도촬,\되�\��래,\뒈져\라,\뒈�\��다,\디져\라,\디�\��다,\디�\��래,병쉰,병신,뻐큐,뻑큐,뽁큐,\삐리\넷,\새�\��,\쉬발,\쉬�\�,\쉬\팔,\쉽\알,\스\패\킹,\스\팽,\시�\��,\시�\��랄,\시�\��럴,\시�\��리,\시�\��,\시�\��랄,\시팍,\시팔,\시펄,\실�\�,\십8,\십\쌔,\십�\�,\싶\알,\쌉년,\썅놈,\쌔끼,\쌩\쑈,\썅,\써벌,\썩\을년,\쎄�\��,\쎄엑,\쓰바,\쓰발,\쓰벌,\쓰\팔,\씨8,\씨\댕,\씨바,\씨발,\씨뱅,\씨봉알,\씨부랄,\씨부럴,\씨부렁,\씨부리,\씨불,\씨브랄,\씨빠,\씨�\�,\씨뽀랄,\씨\팍,\씨\팔,\씨\펄,\씹,\아�\��리,\아�\��이,\엄창,\접년,\잡\놈,\재\랄,\저주글,조�\��,조�\��,조쟁이,조�\��냐,조�\��다,조�\��래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미\랄,쫍빱,\凸,\퍽\큐,뻑큐,빠큐,\ㅅㅂㄹ\ㅁ', '', '', '', '', '', '', 'basic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1000, 2, 0, 0, 30, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'admin,administrator,관리\자,\운\영자,\어\드민,주인\장,webmaster,\웹마스\터,sysop,\시삽,\시샵,manager,매니저,메니저,root,루트,su,guest,방문객', '', 30, 180, 180, 180, '2018-12-11', 2, 5000, 22, 22, 10, 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 1, 15, 15, '\오\늘:1,\어\제:1,최대:9,\전체:247', 0, '\해\당 \홈페이지에 맞는 \회원�\��입약관을 \입력\합\니다.', '\해\당 \홈페이지에 맞는 개인\정보처리방침\을 \입력\합\니다.', 0, 500, 'basic', 'basic', 'basic', 'basic', 'basic', 'basic', 'smarteditor2', 0, '', '', '', '', '', '', 2, 0, 'icode', '', '', '', '211.172.232.124', '7295', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_content`
--

CREATE TABLE `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT '0',
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT '0',
  `co_hit` int(11) NOT NULL DEFAULT '0',
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_content`
--

INSERT INTO `g5_content` (`co_id`, `co_html`, `co_subject`, `co_content`, `co_mobile_content`, `co_skin`, `co_mobile_skin`, `co_tag_filter_use`, `co_hit`, `co_include_head`, `co_include_tail`) VALUES
('company', 1, '\회사\소�\��', '<p align=center><b>\회사\소�\��에 \대한 \내\용\을 \입력\하십\시오.</b></p>', '', '', '', 0, 0, '', ''),
('privacy', 1, '개인\정보 처리방침', '<p align=center><b>개인\정보 처리방침\에 \대한 \내\용\을 \입력\하십\시오.</b></p>', '', '', '', 0, 0, '', ''),
('provision', 1, '\서�\��스 \이\용\약관', '<p align=center><b>\서�\��스 \이\용\약관에 \대한 \내\용\을 \입력\하십\시오.</b></p>', '', '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_faq`
--

CREATE TABLE `g5_faq` (
  `fa_id` int(11) NOT NULL,
  `fm_id` int(11) NOT NULL DEFAULT '0',
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_faq_master`
--

CREATE TABLE `g5_faq_master` (
  `fm_id` int(11) NOT NULL,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_faq_master`
--

INSERT INTO `g5_faq_master` (`fm_id`, `fm_subject`, `fm_head_html`, `fm_tail_html`, `fm_mobile_head_html`, `fm_mobile_tail_html`, `fm_order`) VALUES
(1, '\자주\하시는 질문', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_group`
--

CREATE TABLE `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT '0',
  `gr_order` int(11) NOT NULL DEFAULT '0',
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_group`
--

INSERT INTO `g5_group` (`gr_id`, `gr_subject`, `gr_device`, `gr_admin`, `gr_use_access`, `gr_order`, `gr_1_subj`, `gr_2_subj`, `gr_3_subj`, `gr_4_subj`, `gr_5_subj`, `gr_6_subj`, `gr_7_subj`, `gr_8_subj`, `gr_9_subj`, `gr_10_subj`, `gr_1`, `gr_2`, `gr_3`, `gr_4`, `gr_5`, `gr_6`, `gr_7`, `gr_8`, `gr_9`, `gr_10`) VALUES
('group', '그룹', 'both', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_group_member`
--

CREATE TABLE `g5_group_member` (
  `gm_id` int(11) NOT NULL,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_login`
--

CREATE TABLE `g5_login` (
  `lo_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_login`
--

INSERT INTO `g5_login` (`lo_ip`, `mb_id`, `lo_datetime`, `lo_location`, `lo_url`) VALUES
('203.84.247.105', '', '2019-03-05 09:33:52', '\포\폴 1 \페이지', '/bbs/board.php?bo_table=portfolio');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_mail`
--

CREATE TABLE `g5_mail` (
  `ma_id` int(11) NOT NULL,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_member`
--

CREATE TABLE `g5_member` (
  `mb_no` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_member`
--

INSERT INTO `g5_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_level`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_certify`, `mb_adult`, `mb_dupinfo`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_addr3`, `mb_addr_jibeon`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_email_certify2`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`) VALUES
(1, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', '최�\���\��리\자', '0000-00-00', 'admin@domain.com', '', 10, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 1200, '2018-12-11 14:35:53', '218.239.156.159', '2017-07-27 21:56:58', '218.239.156.159', '', '', '2017-07-27 21:56:58', '', '', '', 1, 0, 1, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_memo`
--

CREATE TABLE `g5_memo` (
  `me_id` int(11) NOT NULL DEFAULT '0',
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_menu`
--

CREATE TABLE `g5_menu` (
  `me_id` int(11) NOT NULL,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT '0',
  `me_use` tinyint(4) NOT NULL DEFAULT '0',
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_new_win`
--

CREATE TABLE `g5_new_win` (
  `nw_id` int(11) NOT NULL,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT '0',
  `nw_left` int(11) NOT NULL DEFAULT '0',
  `nw_top` int(11) NOT NULL DEFAULT '0',
  `nw_height` int(11) NOT NULL DEFAULT '0',
  `nw_width` int(11) NOT NULL DEFAULT '0',
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_point`
--

CREATE TABLE `g5_point` (
  `po_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_use_point` int(11) NOT NULL DEFAULT '0',
  `po_expired` tinyint(4) NOT NULL DEFAULT '0',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT '0',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_point`
--

INSERT INTO `g5_point` (`po_id`, `mb_id`, `po_datetime`, `po_content`, `po_point`, `po_use_point`, `po_expired`, `po_expire_date`, `po_mb_point`, `po_rel_table`, `po_rel_id`, `po_rel_action`) VALUES
(1, 'admin', '2017-07-27 21:58:52', '2017-07-27 첫�\��그\인', 100, 0, 0, '9999-12-31', 100, '@login', 'admin', '2017-07-27'),
(2, 'admin', '2017-07-28 20:02:39', '2017-07-28 첫�\��그\인', 100, 0, 0, '9999-12-31', 200, '@login', 'admin', '2017-07-28'),
(3, 'admin', '2017-07-29 15:49:34', '2017-07-29 첫�\��그\인', 100, 0, 0, '9999-12-31', 300, '@login', 'admin', '2017-07-29'),
(4, 'admin', '2017-07-30 20:46:55', '2017-07-30 첫�\��그\인', 100, 0, 0, '9999-12-31', 400, '@login', 'admin', '2017-07-30'),
(5, 'admin', '2017-08-03 22:05:54', '2017-08-03 첫�\��그\인', 100, 0, 0, '9999-12-31', 500, '@login', 'admin', '2017-08-03'),
(6, 'admin', '2017-08-27 11:57:13', '2017-08-27 첫�\��그\인', 100, 0, 0, '9999-12-31', 600, '@login', 'admin', '2017-08-27'),
(7, 'admin', '2018-03-06 19:45:29', '2018-03-06 첫�\��그\인', 100, 0, 0, '9999-12-31', 700, '@login', 'admin', '2018-03-06'),
(8, 'admin', '2018-03-24 16:14:24', '2018-03-24 첫�\��그\인', 100, 0, 0, '9999-12-31', 800, '@login', 'admin', '2018-03-24'),
(9, 'admin', '2018-12-04 15:46:04', '2018-12-04 첫�\��그\인', 100, 0, 0, '9999-12-31', 900, '@login', 'admin', '2018-12-04'),
(10, 'admin', '2018-12-05 09:20:53', '2018-12-05 첫�\��그\인', 100, 0, 0, '9999-12-31', 1000, '@login', 'admin', '2018-12-05'),
(11, 'admin', '2018-12-06 12:44:01', '2018-12-06 첫�\��그\인', 100, 0, 0, '9999-12-31', 1100, '@login', 'admin', '2018-12-06'),
(12, 'admin', '2018-12-11 14:35:53', '2018-12-11 첫�\��그\인', 100, 0, 0, '9999-12-31', 1200, '@login', 'admin', '2018-12-11');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_poll`
--

CREATE TABLE `g5_poll` (
  `po_id` int(11) NOT NULL,
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_cnt1` int(11) NOT NULL DEFAULT '0',
  `po_cnt2` int(11) NOT NULL DEFAULT '0',
  `po_cnt3` int(11) NOT NULL DEFAULT '0',
  `po_cnt4` int(11) NOT NULL DEFAULT '0',
  `po_cnt5` int(11) NOT NULL DEFAULT '0',
  `po_cnt6` int(11) NOT NULL DEFAULT '0',
  `po_cnt7` int(11) NOT NULL DEFAULT '0',
  `po_cnt8` int(11) NOT NULL DEFAULT '0',
  `po_cnt9` int(11) NOT NULL DEFAULT '0',
  `po_etc` varchar(255) NOT NULL DEFAULT '',
  `po_level` tinyint(4) NOT NULL DEFAULT '0',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_date` date NOT NULL DEFAULT '0000-00-00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_poll_etc`
--

CREATE TABLE `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_popular`
--

CREATE TABLE `g5_popular` (
  `pp_id` int(11) NOT NULL,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_qa_config`
--

CREATE TABLE `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT '0',
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_image_width` int(11) NOT NULL DEFAULT '0',
  `qa_upload_size` int(11) NOT NULL DEFAULT '0',
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_qa_config`
--

INSERT INTO `g5_qa_config` (`qa_title`, `qa_category`, `qa_skin`, `qa_mobile_skin`, `qa_use_email`, `qa_req_email`, `qa_use_hp`, `qa_req_hp`, `qa_use_sms`, `qa_send_number`, `qa_admin_hp`, `qa_admin_email`, `qa_use_editor`, `qa_subject_len`, `qa_mobile_subject_len`, `qa_page_rows`, `qa_mobile_page_rows`, `qa_image_width`, `qa_upload_size`, `qa_insert_content`, `qa_include_head`, `qa_include_tail`, `qa_content_head`, `qa_content_tail`, `qa_mobile_content_head`, `qa_mobile_content_tail`, `qa_1_subj`, `qa_2_subj`, `qa_3_subj`, `qa_4_subj`, `qa_5_subj`, `qa_1`, `qa_2`, `qa_3`, `qa_4`, `qa_5`) VALUES
('1:1문의', '\회원|\포\인\트', 'basic', 'basic', 1, 0, 1, 0, 0, '0', '', '', 1, 60, 30, 15, 15, 600, 1048576, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_qa_content`
--

CREATE TABLE `g5_qa_content` (
  `qa_id` int(11) NOT NULL,
  `qa_num` int(11) NOT NULL DEFAULT '0',
  `qa_parent` int(11) NOT NULL DEFAULT '0',
  `qa_related` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT '0',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_html` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT '0',
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_scrap`
--

CREATE TABLE `g5_scrap` (
  `ms_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_uniqid`
--

CREATE TABLE `g5_uniqid` (
  `uq_id` bigint(20) UNSIGNED NOT NULL,
  `uq_ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_uniqid`
--

INSERT INTO `g5_uniqid` (`uq_id`, `uq_ip`) VALUES
(17072820403827, '218.239.156.159'),
(17072820410490, '218.239.156.159'),
(17072820410731, '218.239.156.159'),
(17072820411010, '218.239.156.159'),
(17072820413458, '218.239.156.159'),
(17072820414312, '218.239.156.159'),
(17072820414581, '218.239.156.159'),
(17072820414745, '218.239.156.159'),
(17072820414971, '218.239.156.159'),
(17072820415391, '218.239.156.159'),
(17072820533413, '218.239.156.159'),
(17072820545865, '218.239.156.159'),
(17072820562078, '218.239.156.159'),
(17072820563913, '218.239.156.159'),
(17072820571381, '218.239.156.159'),
(17072915495410, '218.239.156.159'),
(17072917591975, '218.239.156.159'),
(17072918044099, '218.239.156.159'),
(17072918061064, '218.239.156.159'),
(17072918080697, '218.239.156.159'),
(17072918090915, '218.239.156.159'),
(17072918105082, '218.239.156.159'),
(17072918130972, '218.239.156.159'),
(17072918150861, '218.239.156.159'),
(17072918162549, '218.239.156.159'),
(17072918175168, '218.239.156.159'),
(17072918253572, '218.239.156.159'),
(17072918265762, '218.239.156.159'),
(17072918284688, '218.239.156.159'),
(17072918295987, '218.239.156.159'),
(17072918310596, '218.239.156.159'),
(17072918315591, '218.239.156.159'),
(17072918320931, '218.239.156.159'),
(17072918331417, '218.239.156.159'),
(17072918341647, '218.239.156.159'),
(17072918350930, '218.239.156.159'),
(17072918355628, '218.239.156.159'),
(17072918364478, '218.239.156.159'),
(17072918391048, '218.239.156.159'),
(17072918402352, '218.239.156.159'),
(17072918412912, '218.239.156.159'),
(17072918422680, '218.239.156.159'),
(17072918433138, '218.239.156.159'),
(17072918450167, '218.239.156.159'),
(17072918462340, '218.239.156.159'),
(17072918463586, '218.239.156.159'),
(17072918464087, '218.239.156.159'),
(17072918465583, '218.239.156.159'),
(17072918480891, '218.239.156.159'),
(17072918493268, '218.239.156.159'),
(17072918503144, '218.239.156.159'),
(17072918511992, '218.239.156.159'),
(17072918523528, '218.239.156.159'),
(17072918531551, '218.239.156.159'),
(17072918534913, '218.239.156.159'),
(17072918550812, '218.239.156.159'),
(17072918560843, '218.239.156.159'),
(17072918565874, '218.239.156.159'),
(17072918572628, '218.239.156.159'),
(17072918582790, '218.239.156.159'),
(17072918590463, '218.239.156.159'),
(17072918595023, '218.239.156.159'),
(17072919003839, '218.239.156.159'),
(17072919010306, '218.239.156.159'),
(17072919033036, '218.239.156.159'),
(18120416075740, '218.239.156.159'),
(18120416393995, '218.239.156.159'),
(18120416403011, '218.239.156.159'),
(18120416410004, '218.239.156.159'),
(18120416411178, '218.239.156.159'),
(18120416420504, '218.239.156.159'),
(18120416422779, '218.239.156.159'),
(18120416430139, '218.239.156.159'),
(18120416433761, '218.239.156.159'),
(18120416455788, '218.239.156.159'),
(18120416510452, '218.239.156.159'),
(18120416512591, '218.239.156.159'),
(18120416513540, '218.239.156.159'),
(18120416521712, '218.239.156.159'),
(18120416532130, '218.239.156.159'),
(18120416542137, '218.239.156.159'),
(18120418053310, '218.239.156.159'),
(18120418060805, '218.239.156.159'),
(18120418110885, '218.239.156.159'),
(18120418121394, '218.239.156.159'),
(18120418133320, '218.239.156.159'),
(18120509323191, '218.239.156.159'),
(18120509325846, '218.239.156.159'),
(18120509332262, '218.239.156.159'),
(18120509340757, '218.239.156.159'),
(18120509345199, '218.239.156.159'),
(18120509370005, '218.239.156.159'),
(18120509371571, '218.239.156.159'),
(18120509373649, '218.239.156.159');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_visit`
--

CREATE TABLE `g5_visit` (
  `vi_id` int(11) NOT NULL DEFAULT '0',
  `vi_ip` varchar(255) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(255) NOT NULL DEFAULT '',
  `vi_browser` varchar(255) NOT NULL DEFAULT '',
  `vi_os` varchar(255) NOT NULL DEFAULT '',
  `vi_device` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_visit`
--

INSERT INTO `g5_visit` (`vi_id`, `vi_ip`, `vi_date`, `vi_time`, `vi_referer`, `vi_agent`, `vi_browser`, `vi_os`, `vi_device`) VALUES
(197, '141.8.183.20', '2018-07-02', '14:28:36', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(198, '141.8.183.20', '2018-07-07', '01:08:52', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(199, '141.8.183.20', '2018-07-18', '08:01:30', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(200, '218.239.156.159', '2018-07-19', '23:29:24', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', ''),
(201, '141.8.183.20', '2018-07-20', '14:55:13', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(202, '59.17.32.72', '2018-07-21', '10:48:19', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '', '', ''),
(203, '211.232.173.34', '2018-07-21', '14:30:36', '', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)', '', '', ''),
(204, '211.232.159.2', '2018-07-21', '15:27:32', '', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; InfoPath.3; .NET4.0E)', '', '', ''),
(205, '27.0.238.117', '2018-08-16', '19:58:34', '', 'facebookexternalhit/1.1;kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984', '', '', ''),
(206, '118.47.170.33', '2018-09-05', '15:47:36', '', 'Mozilla/5.0(iPad; U; iPhone OS 3_2; en-us) AppleWebKit/531.21.10 Mobile/7B314', '', '', ''),
(207, '5.45.207.25', '2018-09-10', '07:21:03', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(208, '118.47.170.33', '2018-09-27', '10:56:12', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '', '', ''),
(209, '141.8.183.20', '2018-09-30', '10:59:51', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(210, '118.47.170.33', '2018-10-04', '11:58:38', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '', '', ''),
(211, '218.239.156.159', '2018-10-09', '10:07:56', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', '', '', ''),
(212, '5.45.207.25', '2018-10-23', '21:16:52', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(213, '141.8.183.20', '2018-11-06', '14:37:46', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(214, '5.45.207.25', '2018-11-14', '12:26:26', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(215, '141.8.183.20', '2018-11-16', '12:40:26', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(216, '141.8.183.20', '2018-11-19', '09:06:39', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(217, '118.47.170.33', '2018-11-20', '10:00:39', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', '', '', ''),
(218, '5.45.207.25', '2018-11-23', '16:07:32', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(219, '218.239.156.159', '2018-12-02', '09:32:16', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(220, '218.239.156.159', '2018-12-03', '21:31:54', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(221, '218.239.156.159', '2018-12-04', '15:47:44', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(222, '14.37.78.22', '2018-12-05', '09:11:06', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=245946996&Pass_R_No=121173081&coMPass=0&OEM_No=1&TopCount=10&GI_No=31109633&PageCode=YN&SrchStat=1&PartIdx=&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '', '', ''),
(223, '218.239.156.159', '2018-12-05', '09:20:50', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(224, '203.84.247.105', '2018-12-05', '09:30:39', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=245942083&Pass_R_No=121167976&coMPass=0&TopCount=10&GI_No=31163568&PageCode=YA&SrchStat=1&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(225, '27.0.238.117', '2018-12-05', '09:32:47', '', 'facebookexternalhit/1.1;kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984', '', '', ''),
(226, '61.39.198.130', '2018-12-05', '10:36:51', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=245941161&Pass_R_No=121167017&coMPass=0&OEM_No=1&TopCount=10&GI_No=31206693&PageCode=YO&SrchStat=1&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(227, '119.192.207.74', '2018-12-05', '10:44:07', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=245944423&Pass_R_No=121170383&coMPass=0&OEM_No=1&TopCount=10&GI_No=31196725&PageCode=YA&SrchStat=1&PartIdx=&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(228, '125.131.125.226', '2018-12-05', '11:50:32', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=245944423&Pass_R_No=121170383&coMPass=0&OEM_No=1&TopCount=10&GI_No=31196725&PageCode=YA&SrchStat=1&PartIdx=&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(229, '106.255.247.234', '2018-12-05', '16:37:03', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=245946620&Pass_R_No=121172684&coMPass=0&OEM_No=1&TopCount=10&GI_No=31046818&PageCode=YA&SrchStat=1&PartIdx=&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(230, '118.129.135.58', '2018-12-05', '19:28:29', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=245945644&Pass_R_No=121171645&coMPass=0&TopCount=10&GI_No=31186755&PageCode=YA&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '', '', ''),
(231, '218.239.156.159', '2018-12-06', '12:43:23', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(232, '211.231.103.107', '2018-12-06', '17:29:56', '', 'facebookexternalhit/1.1;kakaotalk-scrap/1.0; +https://devtalk.kakao.com/t/scrap/33984', '', '', ''),
(233, '59.10.222.58', '2018-12-07', '12:00:56', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=246082664&Pass_R_No=121308496&coMPass=0&OEM_No=1&TopCount=10&GI_No=31069181&PageCode=YA&SrchStat=1&PartIdx=&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(234, '61.42.20.228', '2018-12-07', '14:49:16', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=245945644&Pass_R_No=121171645&coMPass=0&OEM_No=1&TopCount=10&GI_No=31186755&PageCode=YA&SrchStat=1&FailExcept=0&Imptnt_Stat=0&Page=2&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '', '', ''),
(235, '218.239.156.159', '2018-12-09', '21:12:38', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(236, '218.239.156.159', '2018-12-11', '14:35:11', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(237, '109.173.57.189', '2018-12-12', '07:24:56', 'https://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=1999.glJy2LSOU_5_0wD_d8Nh5k_Bnc9y6mDLwoJs0C3lQ0MaLS4A1twZk2qBoS5g82Ze.4a7e9f0c59ba4f18ac03231408961ed405137ede&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YFUVNhHyyhJgRFg5yeLMIWU&data=UlNrNmk5WktYejR0eWJFYk1Ldmtxbk9JLU9yMHZDTEt6OFBOaW1Qa3gxY25weVcyLXI1YnZfY1Ezd1dzRzFjb1h1RVhjdHdYMHcyb1YzR3ZwWVRHUGowWmJWckJYMGZtT2NjZGRnRkd4UjA&b64e=2&sign=ca8365a43d3c570daaea59c446709d86&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQSaYtyyri96FZgux3-0cVyH-JMhWpkpMLPH_u7g2v2ttcIGLec7feWfRdmWydrJNOyc0fFcd3dyEk9Da0Gbz9aJpVap1XrtNud-9U9WFkROVFw4tqUPWtaG5Mc-YpH2btrGKC3gncYh9&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCXEfKO1imoOE0lBdNIIjOfdIvgGgrSF9c_n0_SqUbS-csotm7tYzuySvjMZ9nhzFRyYYSDps1BFgOMaWMdvPDIT&l10n=ru&cts=1544564857105&mc=5.08613013347', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0; Touch; ASU2JS)', '', '', ''),
(238, '221.150.19.29', '2018-12-12', '16:00:49', 'http://www.jobkorea.co.kr/corp/Applicant/ResumeDB?Co_Pass_No=246086886&Pass_R_No=121312884&coMPass=0&TopCount=10&GI_No=30773081&PageCode=YA&SrchStat=1&FailExcept=0&Imptnt_Stat=0&Page=1&Mem_Type=CO', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36', '', '', ''),
(239, '109.173.58.50', '2018-12-15', '03:31:54', 'https://yandex.ru/clck/jsredir?from=yandex.ru%3Bsearch%3Bweb%3B%3B&text=&etext=2002.LAV9w6q0guE3qyfMDwvvp1FjgFlt-yaPd895FuUss_7winBRBh9ScNCVUHtqLzR3.d320de2e985073a758da53d8dcc33609b33ad4c3&uuid=&state=_BLhILn4SxNIvvL0W45KSic66uCIg23qh8iRG98qeIXmeppkgUc0YMIVJNtoWDTa6Ctl47TPu5I&data=UlNrNmk5WktYejR0eWJFYk1Ldmtxbk9JLU9yMHZDTEt6OFBOaW1Qa3gxY25weVcyLXI1YnZfYWU2bGtDU3c4S295LUwyNURCLXdxVEFBXzZwcmlZdzFCY0dkVDRaU2NXR3JQVE1YNDhwdnM&b64e=2&sign=7e3dfbf97b6c0b2ad3e7929f65960ca4&keyno=0&cst=AiuY0DBWFJ7IXge4WdYJQSaYtyyri96F_Cqff18UBNaNEom3H_2qqxID5k1xe4NB8wz8vZwVNILU4AxcZ144bocK7lCUrAlUtNH9WfmX2wRUqUsk5jfkNersGhPQMacjZb6NvsWkUijnCk63JK65Zg&ref=orjY4mGPRjk5boDnW0uvlrrd71vZw9kp5uQozpMtKCWQWxj6qvocPy2Jpo3jghOQQFHNseKrFtVQm6OZIZV3Mk0pMGDlp14zfHuB3ywJqZHXPbAOKLKEMM2cx6TSvB8y&l10n=ru&cts=1544811893967&mc=4.85196566336', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 YaBrowser/18.10.2.163 Yowser/2.5 Safari/537.36', '', '', ''),
(240, '203.84.247.105', '2018-12-17', '09:16:32', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', '', '', ''),
(241, '141.8.183.20', '2018-12-23', '22:57:24', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(242, '218.153.37.181', '2019-01-11', '16:29:49', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '', '', ''),
(243, '141.8.142.58', '2019-01-23', '01:56:06', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(244, '209.17.96.18', '2019-02-01', '07:03:52', '', 'Mozilla/5.0 (compatible; Nimbostratus-Bot/v1.3.2; http://cloudsystemnetworks.com)', '', '', ''),
(245, '141.8.142.58', '2019-02-04', '06:51:55', '', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', '', ''),
(246, '223.62.10.96', '2019-03-04', '23:00:34', '', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-N950N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Mobile Safari/537.36', '', '', ''),
(247, '203.84.247.105', '2019-03-05', '09:33:41', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_visit_sum`
--

CREATE TABLE `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_visit_sum`
--

INSERT INTO `g5_visit_sum` (`vs_date`, `vs_count`) VALUES
('2017-07-27', 1),
('2017-07-28', 1),
('2017-07-29', 1),
('2017-07-30', 1),
('2017-07-31', 1),
('2017-08-03', 7),
('2017-08-04', 3),
('2017-08-05', 1),
('2017-08-06', 1),
('2017-08-07', 5),
('2017-08-08', 7),
('2017-08-09', 3),
('2017-08-10', 4),
('2017-08-11', 4),
('2017-08-12', 2),
('2017-08-13', 2),
('2017-08-14', 2),
('2017-08-15', 1),
('2017-08-16', 4),
('2017-08-17', 7),
('2017-08-18', 7),
('2017-08-19', 1),
('2017-08-20', 4),
('2017-08-21', 3),
('2017-08-22', 5),
('2017-08-23', 1),
('2017-08-24', 4),
('2017-08-25', 6),
('2017-08-27', 3),
('2017-08-29', 1),
('2017-08-30', 2),
('2017-08-31', 1),
('2017-09-04', 1),
('2017-09-06', 3),
('2017-09-07', 2),
('2017-09-08', 1),
('2017-09-12', 2),
('2017-09-13', 2),
('2017-09-17', 1),
('2017-09-21', 1),
('2017-10-13', 1),
('2017-10-19', 2),
('2017-10-20', 1),
('2017-10-31', 1),
('2017-11-02', 1),
('2017-11-11', 1),
('2017-11-14', 2),
('2017-11-16', 2),
('2017-11-17', 1),
('2017-11-18', 3),
('2017-11-20', 1),
('2017-11-21', 1),
('2017-11-22', 1),
('2017-11-23', 2),
('2017-12-02', 1),
('2017-12-04', 1),
('2017-12-08', 2),
('2017-12-10', 1),
('2017-12-13', 1),
('2017-12-14', 1),
('2017-12-18', 2),
('2017-12-19', 1),
('2017-12-21', 1),
('2017-12-23', 1),
('2017-12-27', 1),
('2018-01-02', 1),
('2018-01-04', 1),
('2018-01-11', 2),
('2018-01-15', 1),
('2018-01-17', 1),
('2018-01-18', 2),
('2018-01-19', 1),
('2018-01-20', 1),
('2018-01-21', 1),
('2018-01-23', 2),
('2018-01-25', 1),
('2018-01-30', 1),
('2018-02-03', 1),
('2018-02-09', 1),
('2018-02-20', 1),
('2018-02-21', 1),
('2018-02-26', 1),
('2018-02-27', 2),
('2018-02-28', 1),
('2018-03-06', 1),
('2018-03-07', 2),
('2018-03-11', 2),
('2018-03-12', 1),
('2018-03-13', 1),
('2018-03-17', 1),
('2018-03-22', 2),
('2018-03-24', 2),
('2018-03-27', 1),
('2018-04-01', 2),
('2018-04-06', 1),
('2018-04-09', 1),
('2018-04-10', 1),
('2018-04-16', 1),
('2018-04-18', 3),
('2018-04-20', 1),
('2018-04-21', 2),
('2018-04-24', 1),
('2018-05-06', 1),
('2018-05-09', 1),
('2018-05-21', 1),
('2018-05-25', 1),
('2018-05-28', 1),
('2018-07-02', 1),
('2018-07-07', 1),
('2018-07-18', 1),
('2018-07-19', 1),
('2018-07-20', 1),
('2018-07-21', 3),
('2018-08-16', 1),
('2018-09-05', 1),
('2018-09-10', 1),
('2018-09-27', 1),
('2018-09-30', 1),
('2018-10-04', 1),
('2018-10-09', 1),
('2018-10-23', 1),
('2018-11-06', 1),
('2018-11-14', 1),
('2018-11-16', 1),
('2018-11-19', 1),
('2018-11-20', 1),
('2018-11-23', 1),
('2018-12-02', 1),
('2018-12-03', 1),
('2018-12-04', 1),
('2018-12-05', 9),
('2018-12-06', 2),
('2018-12-07', 2),
('2018-12-09', 1),
('2018-12-11', 1),
('2018-12-12', 2),
('2018-12-15', 1),
('2018-12-17', 1),
('2018-12-23', 1),
('2019-01-11', 1),
('2019-01-23', 1),
('2019-02-01', 1),
('2019-02-04', 1),
('2019-03-04', 1),
('2019-03-05', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_contact`
--

CREATE TABLE `g5_write_contact` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `g5_write_portfolio`
--

CREATE TABLE `g5_write_portfolio` (
  `wr_id` int(11) NOT NULL,
  `wr_num` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(10) NOT NULL,
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `wr_is_comment` tinyint(4) NOT NULL DEFAULT '0',
  `wr_comment` int(11) NOT NULL DEFAULT '0',
  `wr_comment_reply` varchar(5) NOT NULL,
  `ca_name` varchar(255) NOT NULL,
  `wr_option` set('html1','html2','secret','mail') NOT NULL,
  `wr_subject` varchar(255) NOT NULL,
  `wr_content` text NOT NULL,
  `wr_link1` text NOT NULL,
  `wr_link2` text NOT NULL,
  `wr_link1_hit` int(11) NOT NULL DEFAULT '0',
  `wr_link2_hit` int(11) NOT NULL DEFAULT '0',
  `wr_hit` int(11) NOT NULL DEFAULT '0',
  `wr_good` int(11) NOT NULL DEFAULT '0',
  `wr_nogood` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL,
  `wr_password` varchar(255) NOT NULL,
  `wr_name` varchar(255) NOT NULL,
  `wr_email` varchar(255) NOT NULL,
  `wr_homepage` varchar(255) NOT NULL,
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_file` tinyint(4) NOT NULL DEFAULT '0',
  `wr_last` varchar(19) NOT NULL,
  `wr_ip` varchar(255) NOT NULL,
  `wr_facebook_user` varchar(255) NOT NULL,
  `wr_twitter_user` varchar(255) NOT NULL,
  `wr_1` varchar(255) NOT NULL,
  `wr_2` varchar(255) NOT NULL,
  `wr_3` varchar(255) NOT NULL,
  `wr_4` varchar(255) NOT NULL,
  `wr_5` varchar(255) NOT NULL,
  `wr_6` varchar(255) NOT NULL,
  `wr_7` varchar(255) NOT NULL,
  `wr_8` varchar(255) NOT NULL,
  `wr_9` varchar(255) NOT NULL,
  `wr_10` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `g5_write_portfolio`
--

INSERT INTO `g5_write_portfolio` (`wr_id`, `wr_num`, `wr_reply`, `wr_parent`, `wr_is_comment`, `wr_comment`, `wr_comment_reply`, `ca_name`, `wr_option`, `wr_subject`, `wr_content`, `wr_link1`, `wr_link2`, `wr_link1_hit`, `wr_link2_hit`, `wr_hit`, `wr_good`, `wr_nogood`, `mb_id`, `wr_password`, `wr_name`, `wr_email`, `wr_homepage`, `wr_datetime`, `wr_file`, `wr_last`, `wr_ip`, `wr_facebook_user`, `wr_twitter_user`, `wr_1`, `wr_2`, `wr_3`, `wr_4`, `wr_5`, `wr_6`, `wr_7`, `wr_8`, `wr_9`, `wr_10`) VALUES
(61, -45, '', 61, 0, 0, '', '', 'html1', '\서�\��JM가정의학과', '<p>\ㅁ</p>', 'http://scjm.co.kr/', '', 4, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2018-12-04 18:11:48', 1, '2018-12-04 18:11:48', '218.239.156.159', '', '', '#PC #MOBILE', '', '', '', '', '', '', '', '', ''),
(45, -29, '', 45, 0, 0, '', '', 'html1', '\덕소엔�\��', '<p>a</p>', 'http://www.nbcare.co.kr/', '', 16, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:51:11', 1, '2017-07-29 18:51:11', '218.239.156.159', '', '', '#반응형 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(42, -26, '', 42, 0, 0, '', '', 'html1', '\홍대�\��약\떡볶이 \수원여\대점', '<p>\ㅁ</p>', 'base.mayak1suwon.cafe24.com', '', 6, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:48:03', 1, '2017-07-29 18:48:03', '218.239.156.159', '', '', '#반응형 #\쇼\핑몰', '', '', '', '', '', '', '', '', ''),
(43, -27, '', 43, 0, 0, '', '', 'html1', '\오\피\아 \어\학원', '<p>a</p>', 'http://opia4u.co.kr/', '', 7, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:49:26', 1, '2017-07-29 18:49:26', '218.239.156.159', '', '', '#반응형 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(19, -3, '', 19, 0, 0, '', '', 'html1', '\임플란티\스치과 \랜딩\페이지', '<p>a</p>', 'http://www.implanteeth.co.kr/landing2/', '', 6, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:10:19', 1, '2017-07-29 18:10:19', '218.239.156.159', '', '', '#\랜딩\페이지', '', '', '', '', '', '', '', '', ''),
(20, -4, '', 20, 0, 0, '', '', 'html1', '벤�\��아 \인\트로 \페이지', '<p>a</p>', 'http://venziamall.com/', '', 9, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:12:39', 1, '2017-07-29 18:12:39', '218.239.156.159', '', '', '#\인\트로페이지', '', '', '', '', '', '', '', '', ''),
(21, -5, '', 21, 0, 0, '', '', 'html1', '\픽\스\앤\샵', '<p>\ㅁ</p>', 'http://fixnshopsh.com/', '', 9, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:14:36', 1, '2017-07-29 18:14:36', '218.239.156.159', '', '', '#PC #모�\��일', '', '', '', '', '', '', '', '', ''),
(24, -8, '', 24, 0, 0, '', '', 'html1', '\연\세\엔서울 모�\��일', '<p>\ㅁ</p>', 'http://ynsdent.com/m/', '', 4, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:25:24', 1, '2017-07-29 18:25:24', '218.239.156.159', '', '', '#모�\��일', '', '', '', '', '', '', '', '', ''),
(25, -9, '', 25, 0, 0, '', '', 'html1', '\연\세\엔서울 \랜딩\페이지', '<p>\ㅁ</p>', 'http://ynsdent.com/landing1/', '', 5, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:26:53', 1, '2017-07-29 18:26:53', '218.239.156.159', '', '', '#\디자인 #\랜딩\페이지', '', '', '', '', '', '', '', '', ''),
(26, -10, '', 26, 0, 0, '', '', 'html1', '\도깨비', '<p>\ㅁ</p>', 'http://dogaebi.co.kr/', '', 6, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:28:42', 1, '2017-07-29 18:28:42', '218.239.156.159', '', '', '#\홈페이지', '', '', '', '', '', '', '', '', ''),
(27, -11, '', 27, 0, 0, '', '', 'html1', '\속�\���\��앙새�\��을�\���\��', '<p>\ㅁ</p>', 'jungangbank.cafe24.com', '', 4, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:29:54', 1, '2017-07-29 18:29:54', '218.239.156.159', '', '', '#\홈페이지', '', '', '', '', '', '', '', '', ''),
(28, -12, '', 28, 0, 0, '', '', 'html1', '\피부미\남 \랜딩\페이지', '<p>\ㅁ</p>', 'http://pibuminam.com/', '', 7, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:30:50', 1, '2017-07-29 18:30:50', '218.239.156.159', '', '', '#\랜딩\페이지', '', '', '', '', '', '', '', '', ''),
(31, -15, '', 31, 0, 0, '', '', 'html1', 'hue', '<p>\ㅁ</p>', 'cyberl22.cafe24.com', '', 7, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:34:13', 1, '2017-07-29 18:34:13', '218.239.156.159', '', '', '#PC #모�\��일 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(33, -17, '', 33, 0, 0, '', '', 'html1', 'best friend plush', '<p>\ㅁ</p>', 'http://bestfriendplush.com', '', 4, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:35:50', 1, '2017-07-29 18:35:50', '218.239.156.159', '', '', '#\홈페이지', '', '', '', '', '', '', '', '', ''),
(34, -18, '', 34, 0, 0, '', '', 'html1', '창신대학�\�� \음악학과', '<p>\ㅁ</p>', 'piano820202.cafe24.com', '', 8, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:36:40', 1, '2017-07-29 18:36:40', '218.239.156.159', '', '', '#PC #모�\��일 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(35, -19, '', 35, 0, 0, '', '', 'html1', '\알�\��르\단\자', '<p>\ㅁ</p>', 'semperfides.co.kr', '', 6, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:39:05', 1, '2017-07-29 18:39:05', '218.239.156.159', '', '', '#백엔드 별도 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(38, -22, '', 38, 0, 0, '', '', 'html1', 'gmr materials', '<p>\ㅁ</p>', 'http://gmrmaterials.com/', '', 8, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:42:11', 1, '2017-07-29 18:42:11', '218.239.156.159', '', '', '#\홈페이지', '', '', '', '', '', '', '', '', ''),
(62, -46, '', 62, 0, 0, '', '', 'html1', '\도도성\형외�\�', '<p>\ㅁ</p>', 'http://www.dodoclinic.com/', '', 5, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2018-12-04 18:12:32', 1, '2018-12-04 18:12:32', '218.239.156.159', '', '', '#PC #MOBILE', '', '', '', '', '', '', '', '', ''),
(41, -25, '', 41, 0, 0, '', '', 'html1', '\클\레오\파인', '<p>\ㅁ</p>', 'http://skin-skin13.pine2017.cafe24.com/', '', 7, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:46:18', 1, '2017-07-29 18:46:18', '218.239.156.159', '', '', '#\쇼\핑몰', '', '', '', '', '', '', '', '', ''),
(57, -41, '', 57, 0, 0, '', '', 'html1', '\통증의학과 \템플릿', '<p>\ㅁ</p>', 'http://coremnc.com/pc/pc17co01/', '', 3, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2018-12-04 16:50:43', 1, '2018-12-04 16:50:43', '218.239.156.159', '', '', '\통증의학과 \템플릿 \홈페이지', '', '', '', '', '', '', '', '', ''),
(46, -30, '', 46, 0, 0, '', '', 'html1', '\에스\피부과', '<p>\ㅁ</p>', 'myskinforu.cafe24.com', '', 17, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:52:26', 1, '2017-07-29 18:52:26', '218.239.156.159', '', '', '#반응형 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(49, -33, '', 49, 0, 0, '', '', 'html1', '\동원펌프', '<p>\ㅁ</p>', 'http://dwpump.hya.kr/index/', '', 19, 0, 3, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:55:02', 1, '2017-07-29 18:55:02', '218.239.156.159', '', '', '#백엔드 별도 #반응형 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(60, -44, '', 60, 0, 0, '', '', 'html1', '브래덤병원', '<p>\ㅁ</p>', 'http://www.braddom.co.kr/main/main2.html', '', 2, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2018-12-04 18:10:40', 1, '2018-12-04 18:10:40', '218.239.156.159', '', '', '#PC', '', '', '', '', '', '', '', '', ''),
(51, -35, '', 51, 0, 0, '', '', 'html1', '\라\이\또PC�\�', '<p>\ㅁ</p>', 'http://xn--961bz0ao46a.com/', '', 16, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:56:53', 1, '2017-07-29 18:56:53', '218.239.156.159', '', '', '#PC #모�\��일 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(52, -36, '', 52, 0, 0, '', '', 'html1', '브레스\트버거', '<p>\ㅁ</p>', 'http://edoedo.dothome.co.kr/', '', 27, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:58:23', 1, '2017-07-29 18:58:23', '218.239.156.159', '', '', '#반응형 #\포\트\폴리오\용 \홈페이지', '', '', '', '', '', '', '', '', ''),
(53, -37, '', 53, 0, 0, '', '', 'html1', '\아루\스', '<p>\ㅁ</p>', 'http://arus2323.cafe24.com/', '', 15, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 18:59:00', 1, '2017-07-29 18:59:00', '218.239.156.159', '', '', '#\쇼\핑몰', '', '', '', '', '', '', '', '', ''),
(63, -47, '', 63, 0, 0, '', '', 'html1', '치과 \템플릿', '<p>\ㅁ</p>', 'http://coremnc.com/hd/hd18my01/', '', 8, 0, 3, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2018-12-04 18:13:50', 1, '2018-12-04 18:13:50', '218.239.156.159', '', '', '#치과 \템플릿 \홈페이지', '', '', '', '', '', '', '', '', ''),
(59, -43, '', 59, 0, 0, '', '', 'html1', '청담고운\세\상 \아그\네\스', '<p>\ㅁ</p>', '', '', 0, 0, 1, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2018-12-04 18:06:03', 1, '2018-12-04 18:06:03', '218.239.156.159', '', '', '#PC #MOBILE', '', '', '', '', '', '', '', '', ''),
(55, -39, '', 55, 0, 0, '', '', 'html1', '\손큰', '<p>\ㅁ</p>', 'http://sonkun7653.cafe24.com/', '', 33, 0, 3, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 19:01:00', 1, '2017-07-29 19:01:00', '218.239.156.159', '', '', '#반응형 #\홈페이지', '', '', '', '', '', '', '', '', ''),
(56, -40, '', 56, 0, 0, '', '', 'html1', '\아임의원 \성\형외�\�', '<p>\ㅁ</p>', 'http://sufam.cafe24.com/', '', 45, 0, 2, 0, 0, 'admin', '*71E3D50C7DC58ACB3026EBE8A4C2984E04863090', '최�\���\��리\자', 'admin@domain.com', '', '2017-07-29 19:03:08', 1, '2017-07-29 19:03:08', '218.239.156.159', '', '', '#PC #모�\��일 #\홈페이지', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_book`
--

CREATE TABLE `sms5_book` (
  `bk_no` int(11) NOT NULL,
  `bg_no` int(11) NOT NULL DEFAULT '0',
  `mb_no` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_name` varchar(255) NOT NULL DEFAULT '',
  `bk_hp` varchar(255) NOT NULL DEFAULT '',
  `bk_receipt` tinyint(4) NOT NULL DEFAULT '0',
  `bk_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bk_memo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_book_group`
--

CREATE TABLE `sms5_book_group` (
  `bg_no` int(11) NOT NULL,
  `bg_name` varchar(255) NOT NULL DEFAULT '',
  `bg_count` int(11) NOT NULL DEFAULT '0',
  `bg_member` int(11) NOT NULL DEFAULT '0',
  `bg_nomember` int(11) NOT NULL DEFAULT '0',
  `bg_receipt` int(11) NOT NULL DEFAULT '0',
  `bg_reject` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `sms5_book_group`
--

INSERT INTO `sms5_book_group` (`bg_no`, `bg_name`, `bg_count`, `bg_member`, `bg_nomember`, `bg_receipt`, `bg_reject`) VALUES
(1, '미�\���\��', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_config`
--

CREATE TABLE `sms5_config` (
  `cf_phone` varchar(255) NOT NULL DEFAULT '',
  `cf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_form`
--

CREATE TABLE `sms5_form` (
  `fo_no` int(11) NOT NULL,
  `fg_no` tinyint(4) NOT NULL DEFAULT '0',
  `fg_member` char(1) NOT NULL DEFAULT '0',
  `fo_name` varchar(255) NOT NULL DEFAULT '',
  `fo_content` text NOT NULL,
  `fo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_form_group`
--

CREATE TABLE `sms5_form_group` (
  `fg_no` int(11) NOT NULL,
  `fg_name` varchar(255) NOT NULL DEFAULT '',
  `fg_count` int(11) NOT NULL DEFAULT '0',
  `fg_member` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_history`
--

CREATE TABLE `sms5_history` (
  `hs_no` int(11) NOT NULL,
  `wr_no` int(11) NOT NULL DEFAULT '0',
  `wr_renum` int(11) NOT NULL DEFAULT '0',
  `bg_no` int(11) NOT NULL DEFAULT '0',
  `mb_no` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bk_no` int(11) NOT NULL DEFAULT '0',
  `hs_name` varchar(30) NOT NULL DEFAULT '',
  `hs_hp` varchar(255) NOT NULL DEFAULT '',
  `hs_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hs_flag` tinyint(4) NOT NULL DEFAULT '0',
  `hs_code` varchar(255) NOT NULL DEFAULT '',
  `hs_memo` varchar(255) NOT NULL DEFAULT '',
  `hs_log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `sms5_write`
--

CREATE TABLE `sms5_write` (
  `wr_no` int(11) NOT NULL DEFAULT '1',
  `wr_renum` int(11) NOT NULL DEFAULT '0',
  `wr_reply` varchar(255) NOT NULL DEFAULT '',
  `wr_message` varchar(255) NOT NULL DEFAULT '',
  `wr_booking` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_total` int(11) NOT NULL DEFAULT '0',
  `wr_re_total` int(11) NOT NULL DEFAULT '0',
  `wr_success` int(11) NOT NULL DEFAULT '0',
  `wr_failure` int(11) NOT NULL DEFAULT '0',
  `wr_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wr_memo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `g5_auth`
--
ALTER TABLE `g5_auth`
  ADD PRIMARY KEY (`mb_id`,`au_menu`);

--
-- 테이블의 인덱스 `g5_autosave`
--
ALTER TABLE `g5_autosave`
  ADD PRIMARY KEY (`as_id`),
  ADD UNIQUE KEY `as_uid` (`as_uid`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_board`
--
ALTER TABLE `g5_board`
  ADD PRIMARY KEY (`bo_table`);

--
-- 테이블의 인덱스 `g5_board_file`
--
ALTER TABLE `g5_board_file`
  ADD PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`);

--
-- 테이블의 인덱스 `g5_board_good`
--
ALTER TABLE `g5_board_good`
  ADD PRIMARY KEY (`bg_id`),
  ADD UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`);

--
-- 테이블의 인덱스 `g5_board_new`
--
ALTER TABLE `g5_board_new`
  ADD PRIMARY KEY (`bn_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
  ADD PRIMARY KEY (`cr_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_content`
--
ALTER TABLE `g5_content`
  ADD PRIMARY KEY (`co_id`);

--
-- 테이블의 인덱스 `g5_faq`
--
ALTER TABLE `g5_faq`
  ADD PRIMARY KEY (`fa_id`),
  ADD KEY `fm_id` (`fm_id`);

--
-- 테이블의 인덱스 `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
  ADD PRIMARY KEY (`fm_id`);

--
-- 테이블의 인덱스 `g5_group`
--
ALTER TABLE `g5_group`
  ADD PRIMARY KEY (`gr_id`);

--
-- 테이블의 인덱스 `g5_group_member`
--
ALTER TABLE `g5_group_member`
  ADD PRIMARY KEY (`gm_id`),
  ADD KEY `gr_id` (`gr_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_login`
--
ALTER TABLE `g5_login`
  ADD PRIMARY KEY (`lo_ip`);

--
-- 테이블의 인덱스 `g5_mail`
--
ALTER TABLE `g5_mail`
  ADD PRIMARY KEY (`ma_id`);

--
-- 테이블의 인덱스 `g5_member`
--
ALTER TABLE `g5_member`
  ADD PRIMARY KEY (`mb_no`),
  ADD UNIQUE KEY `mb_id` (`mb_id`),
  ADD KEY `mb_today_login` (`mb_today_login`),
  ADD KEY `mb_datetime` (`mb_datetime`);

--
-- 테이블의 인덱스 `g5_memo`
--
ALTER TABLE `g5_memo`
  ADD PRIMARY KEY (`me_id`),
  ADD KEY `me_recv_mb_id` (`me_recv_mb_id`);

--
-- 테이블의 인덱스 `g5_menu`
--
ALTER TABLE `g5_menu`
  ADD PRIMARY KEY (`me_id`);

--
-- 테이블의 인덱스 `g5_new_win`
--
ALTER TABLE `g5_new_win`
  ADD PRIMARY KEY (`nw_id`);

--
-- 테이블의 인덱스 `g5_point`
--
ALTER TABLE `g5_point`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  ADD KEY `index2` (`po_expire_date`);

--
-- 테이블의 인덱스 `g5_poll`
--
ALTER TABLE `g5_poll`
  ADD PRIMARY KEY (`po_id`);

--
-- 테이블의 인덱스 `g5_poll_etc`
--
ALTER TABLE `g5_poll_etc`
  ADD PRIMARY KEY (`pc_id`);

--
-- 테이블의 인덱스 `g5_popular`
--
ALTER TABLE `g5_popular`
  ADD PRIMARY KEY (`pp_id`),
  ADD UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`);

--
-- 테이블의 인덱스 `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
  ADD PRIMARY KEY (`qa_id`),
  ADD KEY `qa_num_parent` (`qa_num`,`qa_parent`);

--
-- 테이블의 인덱스 `g5_scrap`
--
ALTER TABLE `g5_scrap`
  ADD PRIMARY KEY (`ms_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `g5_uniqid`
--
ALTER TABLE `g5_uniqid`
  ADD PRIMARY KEY (`uq_id`);

--
-- 테이블의 인덱스 `g5_visit`
--
ALTER TABLE `g5_visit`
  ADD PRIMARY KEY (`vi_id`),
  ADD UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  ADD KEY `index2` (`vi_date`);

--
-- 테이블의 인덱스 `g5_visit_sum`
--
ALTER TABLE `g5_visit_sum`
  ADD PRIMARY KEY (`vs_date`),
  ADD KEY `index1` (`vs_count`);

--
-- 테이블의 인덱스 `g5_write_contact`
--
ALTER TABLE `g5_write_contact`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `g5_write_portfolio`
--
ALTER TABLE `g5_write_portfolio`
  ADD PRIMARY KEY (`wr_id`),
  ADD KEY `wr_num_reply_parent` (`wr_num`,`wr_reply`,`wr_parent`),
  ADD KEY `wr_is_comment` (`wr_is_comment`,`wr_id`);

--
-- 테이블의 인덱스 `sms5_book`
--
ALTER TABLE `sms5_book`
  ADD PRIMARY KEY (`bk_no`),
  ADD KEY `bk_name` (`bk_name`),
  ADD KEY `bk_hp` (`bk_hp`),
  ADD KEY `mb_no` (`mb_no`),
  ADD KEY `bg_no` (`bg_no`,`bk_no`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `sms5_book_group`
--
ALTER TABLE `sms5_book_group`
  ADD PRIMARY KEY (`bg_no`),
  ADD KEY `bg_name` (`bg_name`);

--
-- 테이블의 인덱스 `sms5_form`
--
ALTER TABLE `sms5_form`
  ADD PRIMARY KEY (`fo_no`),
  ADD KEY `fg_no` (`fg_no`,`fo_no`);

--
-- 테이블의 인덱스 `sms5_form_group`
--
ALTER TABLE `sms5_form_group`
  ADD PRIMARY KEY (`fg_no`),
  ADD KEY `fg_name` (`fg_name`);

--
-- 테이블의 인덱스 `sms5_history`
--
ALTER TABLE `sms5_history`
  ADD PRIMARY KEY (`hs_no`),
  ADD KEY `wr_no` (`wr_no`),
  ADD KEY `mb_no` (`mb_no`),
  ADD KEY `bk_no` (`bk_no`),
  ADD KEY `hs_hp` (`hs_hp`),
  ADD KEY `hs_code` (`hs_code`),
  ADD KEY `bg_no` (`bg_no`),
  ADD KEY `mb_id` (`mb_id`);

--
-- 테이블의 인덱스 `sms5_write`
--
ALTER TABLE `sms5_write`
  ADD KEY `wr_no` (`wr_no`,`wr_renum`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `g5_autosave`
--
ALTER TABLE `g5_autosave`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 테이블의 AUTO_INCREMENT `g5_board_good`
--
ALTER TABLE `g5_board_good`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_board_new`
--
ALTER TABLE `g5_board_new`
  MODIFY `bn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- 테이블의 AUTO_INCREMENT `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_faq`
--
ALTER TABLE `g5_faq`
  MODIFY `fa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
  MODIFY `fm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `g5_group_member`
--
ALTER TABLE `g5_group_member`
  MODIFY `gm_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_mail`
--
ALTER TABLE `g5_mail`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_member`
--
ALTER TABLE `g5_member`
  MODIFY `mb_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `g5_menu`
--
ALTER TABLE `g5_menu`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_new_win`
--
ALTER TABLE `g5_new_win`
  MODIFY `nw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_point`
--
ALTER TABLE `g5_point`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `g5_poll`
--
ALTER TABLE `g5_poll`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_popular`
--
ALTER TABLE `g5_popular`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_scrap`
--
ALTER TABLE `g5_scrap`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `g5_write_contact`
--
ALTER TABLE `g5_write_contact`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `g5_write_portfolio`
--
ALTER TABLE `g5_write_portfolio`
  MODIFY `wr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 테이블의 AUTO_INCREMENT `sms5_book`
--
ALTER TABLE `sms5_book`
  MODIFY `bk_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `sms5_book_group`
--
ALTER TABLE `sms5_book_group`
  MODIFY `bg_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `sms5_form`
--
ALTER TABLE `sms5_form`
  MODIFY `fo_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `sms5_form_group`
--
ALTER TABLE `sms5_form_group`
  MODIFY `fg_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `sms5_history`
--
ALTER TABLE `sms5_history`
  MODIFY `hs_no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
