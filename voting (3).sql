-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 12:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar`
--

CREATE TABLE `aadhar` (
  `ad_id` int(11) NOT NULL,
  `aadharnumber` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aadhar`
--

INSERT INTO `aadhar` (`ad_id`, `aadharnumber`, `age`) VALUES
(1, '987654321321', '20'),
(2, '123456789456', '30'),
(3, '654321258741', '24'),
(4, '963741258456', '32'),
(5, '6565344323', '20');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(24, 'Can view session', 6, 'view_session');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bchain`
--

CREATE TABLE `bchain` (
  `ind` int(11) NOT NULL,
  `chdata` varchar(200) NOT NULL,
  `hashv` varchar(200) NOT NULL,
  `phashv` varchar(200) NOT NULL,
  `tstamp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bchain`
--

INSERT INTO `bchain` (`ind`, `chdata`, `hashv`, `phashv`, `tstamp`) VALUES
(2, 'b\'P4ZS\'', '75c124fae7a8b8b89183d4de196613b3', '0', '2022/06/25'),
(3, 'b\'P4ZS\'', '75c124fae7a8b8b89183d4de196613b3', '75c124fae7a8b8b89183d4de196613b3', '2022/06/25'),
(4, 'b\'P4ZS\'', '75c124fae7a8b8b89183d4de196613b3', '75c124fae7a8b8b89183d4de196613b3', '2022/06/25'),
(5, 'b\'P4ZX\'', '6f56517a024c64526d52b0cfdf038dfa', '75c124fae7a8b8b89183d4de196613b3', '2022/06/25'),
(6, 'b\'P4ZW\'', 'f33ab8fdcadaa7121953df3af4c25259', '6f56517a024c64526d52b0cfdf038dfa', '2022/06/25'),
(7, 'b\'OIZb\'', '23458db7dcb05c4361707778140eac87', 'f33ab8fdcadaa7121953df3af4c25259', '2022/06/25');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candid_id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `party` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candid_id`, `name`, `party`, `address`, `gender`, `password`, `status`) VALUES
(1, 'rahul', 'bjp', 'kunnil house', 'male', '123', 'withdraw'),
(2, 'athil', 'aaa', 'abc', 'male', 'athil', 'withdraw'),
(3, 'abc', 'abc', 'ajnnas', 'male', 'aaaa', 'withdraw'),
(4, 'shu', 'abc', 'lkoi', 'male', '123', 'approve'),
(5, 'ds', 're', 'fdds', 'male', '123', 'approve'),
(6, 'arun', 'bj', 'aaaa', 'male', 'arun', 'approve');

-- --------------------------------------------------------

--
-- Table structure for table `caste_vote`
--

CREATE TABLE `caste_vote` (
  `cv_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `candid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caste_vote`
--

INSERT INTO `caste_vote` (`cv_id`, `u_id`, `candid_id`) VALUES
(12, 1, 1),
(13, 2, 1),
(15, 4, 1),
(16, 5, 1),
(17, 8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-06-01 08:47:37.617702'),
(2, 'auth', '0001_initial', '2022-06-01 08:47:37.929586'),
(3, 'admin', '0001_initial', '2022-06-01 08:47:38.005501'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-06-01 08:47:38.015447'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-01 08:47:38.022799'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-06-01 08:47:38.061713'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-06-01 08:47:38.074522'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-06-01 08:47:38.087945'),
(9, 'auth', '0004_alter_user_username_opts', '2022-06-01 08:47:38.096335'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-06-01 08:47:38.138034'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-06-01 08:47:38.140602'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-01 08:47:38.148842'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-06-01 08:47:38.161843'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-01 08:47:38.175943'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-06-01 08:47:38.192901'),
(16, 'auth', '0011_update_proxy_permissions', '2022-06-01 08:47:38.205863'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-01 08:47:38.219825'),
(18, 'sessions', '0001_initial', '2022-06-01 08:47:38.242763');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('000wjsof4xmjizyd4zm4sjbr2j6rxvqm', 'eyJ1aWQiOjF9:1o3VBv:Blk1JChDlJMsFEo5N0ONvcX5yVbeCwZ_m-e4b35PeQM', '2022-07-05 04:08:39.349437'),
('111osa6xv8toma7uacn1s2twyv5pzzqm', 'eyJ1aWQiOjEsIm90cCI6IjYxMjQiLCJjaWQiOiIxIn0:1o4nqt:YCecitj0AjeJg7tJouOe7UjOCfKg5oDPVVu-1x3obyo', '2022-07-08 18:16:19.026490'),
('63pgfpvih1qo8llxrox8x3ot8qomsfbw', 'eyJ1aWQiOjUsIm90cCI6IjQwNzAiLCJjaWQiOiI0In0:1oCbQ3:iXsyJ8-uKMKtiTe7_3BJ6MzkhapSopUsesTpVs6tZG0', '2022-07-30 06:36:51.838907'),
('87aahik1vg94ms5syau6vv2zdywb0o89', 'eyJ1aWQiOjF9:1nyWJL:-onuxWwLlkvElmAtupVuEZ5GO0T14Nm5ckhS5yR2tEk', '2022-06-21 10:19:43.070595'),
('mwv8rphtj5mootu6m5lvhxc7cj9idgam', 'eyJ1aWQiOjF9:1nwKjH:ZT-w0KWAcsAr-1rGEE-j5SS9cKSGdtJXj_jQz9U5B9Y', '2022-06-15 09:33:27.034708'),
('oesz17frz3bwquoe2qkspjkryi9z9mgg', 'eyJ1aWQiOjgsIm90cCI6Ijk1OTMiLCJjaWQiOiI2In0:1oPiDW:b-Su35xPVQE4vEgZlCVnky8Dk8QxIsoGtkvTreV_Khg', '2022-09-04 10:30:06.781468');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `u_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`, `u_id`) VALUES
(1, 'admin', 'admin', 'admin', 1),
(2, 'shibu', '123', 'user', 1),
(3, 'rahul', '123', 'candidate', 1),
(5, 'shibu', 'ss', 'user', 4),
(6, 'ajnas', 'aj', 'user', 5),
(7, 'athil', 'athil', 'candidate', 2),
(8, 'abc', 'aaaa', 'candidate', 3),
(9, 'shu', '123', 'candidate', 4),
(10, 'ds', '123', 'candidate', 5),
(11, 'ajnas', '123', 'user', 6),
(12, 'ajnass', '1234', 'user', 7),
(13, 'amal', 'amal', 'user', 8),
(14, 'arun', 'arun', 'user', 9),
(15, 'arun', 'arun', 'candidate', 6);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notifi_id` int(50) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notifi_id`, `notification`, `date`, `time`) VALUES
(1, 'hi', '0000-00-00', '00:00:00'),
(2, 'hi', '0000-00-00', '00:00:00'),
(3, 'hello', '2022-06-07', '13:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `p_id` int(50) NOT NULL,
  `date` date NOT NULL,
  `from_time` time NOT NULL,
  `to_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `r_id` int(50) NOT NULL,
  `result` varchar(100) NOT NULL,
  `candid_id` varchar(11) NOT NULL,
  `remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`r_id`, `result`, `candid_id`, `remark`) VALUES
(22, '4', '1', ''),
(23, '1', '6', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_no` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `phone_no`, `email`, `gender`, `address`) VALUES
(1, 'shibu', '123', '9746524011', 'akash5847a@gmail.com', 'male', 'kunnil house'),
(2, 'shibu', 'ss', '8921599909', 'shibu@gmail.com', 'male', 'kjjdjjdj'),
(3, 'shibu', 'ss', '8921599909', 'shibu@gmail.com', 'male', 'kjjdjjdj'),
(4, 'shibu', 'ss', '8921599909', 'shibu@gmail.com', 'male', 'kjjdjjdj'),
(6, 'ajnas', '123', '9876543210', 'ak@gmail.com', 'male', 'lkoi'),
(7, 'ajnass', '1234', '9020909438', 'ak@gmail.com', 'male', 'aaaa'),
(8, 'amal', 'amal', '9020909438', 'amal@2020', 'male', 'nhv'),
(9, 'arun', 'arun', '9895984212', 'admin@2001', 'male', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `votingstatus`
--

CREATE TABLE `votingstatus` (
  `vs_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votingstatus`
--

INSERT INTO `votingstatus` (`vs_id`, `status`) VALUES
(1, 'START');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `w_id` int(50) NOT NULL,
  `candid_name` varchar(100) NOT NULL,
  `party` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`w_id`, `candid_name`, `party`) VALUES
(1, 'abhi', 'bjp'),
(2, 'rahul', 'bjp'),
(3, 'athil', 'aaa'),
(4, 'abc', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawstatus`
--

CREATE TABLE `withdrawstatus` (
  `ws_id` int(11) NOT NULL,
  `withrawstatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawstatus`
--

INSERT INTO `withdrawstatus` (`ws_id`, `withrawstatus`) VALUES
(1, 'START');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aadhar`
--
ALTER TABLE `aadhar`
  ADD PRIMARY KEY (`ad_id`);

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
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bchain`
--
ALTER TABLE `bchain`
  ADD PRIMARY KEY (`ind`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candid_id`);

--
-- Indexes for table `caste_vote`
--
ALTER TABLE `caste_vote`
  ADD PRIMARY KEY (`cv_id`);

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
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notifi_id`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `votingstatus`
--
ALTER TABLE `votingstatus`
  ADD PRIMARY KEY (`vs_id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`w_id`);

--
-- Indexes for table `withdrawstatus`
--
ALTER TABLE `withdrawstatus`
  ADD PRIMARY KEY (`ws_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aadhar`
--
ALTER TABLE `aadhar`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bchain`
--
ALTER TABLE `bchain`
  MODIFY `ind` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candid_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `caste_vote`
--
ALTER TABLE `caste_vote`
  MODIFY `cv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `r_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `votingstatus`
--
ALTER TABLE `votingstatus`
  MODIFY `vs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `w_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdrawstatus`
--
ALTER TABLE `withdrawstatus`
  MODIFY `ws_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
