-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.34-MariaDB
-- PHP Version: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magic_coach`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `data_view`
--

CREATE TABLE `data_view` (
  `view_code` int(11) NOT NULL,
  `view_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `data_view`
--

INSERT INTO `data_view` (`view_code`, `view_name`, `supplement_code`) VALUES
(1, 'picture', 1),
(2, 'pic', 1),
(3, 'ture', 1),
(4, 'situation', 1),
(5, 'situ', 1),
(6, 'ation', 1),
(7, 'spaghetti', 1),
(8, 'spa', 1),
(9, 'ghe', 1),
(10, 'tti', 1),
(11, 'foreigner', 1),
(12, 'fo', 1),
(13, 'rei', 1),
(14, 'gner', 1),
(15, 'photograph', 1),
(16, 'pho', 1),
(17, 'to', 1),
(18, 'graph', 1),
(19, 'January', 1),
(20, 'Ja', 1),
(23, 'nu', 1),
(24, 'ary', 1),
(25, 'February', 1),
(26, 'Fe', 1),
(27, 'bru', 1),
(28, 'ary', 1),
(29, 'Tuesday', 1),
(30, 'Tu', 1),
(31, 'es', 1),
(32, 'day', 1),
(33, 'Wednesday', 1),
(34, 'We', 1),
(35, 'dn', 1),
(36, 'es', 1),
(37, 'day', 1),
(38, 'government', 1),
(39, 'go', 1),
(40, 'vern', 1),
(41, 'ment', 1),
(42, 'instrument', 1),
(43, 'in', 1),
(44, 'stru', 1),
(45, 'ment', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `data_voice`
--

CREATE TABLE `data_voice` (
  `voice_code` int(11) NOT NULL,
  `voice_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `data_voice`
--

INSERT INTO `data_voice` (`voice_code`, `voice_name`, `supplement_code`) VALUES
(1, 'picture.mp3', 1),
(2, 'pic.mp3', 1),
(3, 'ture.mp3', 1),
(4, 'situation.mp3', 1),
(5, 'situ.mp3', 1),
(6, 'ation.mp3', 1),
(7, 'spaghetti.mp3', 1),
(8, 'spa.mp3', 1),
(9, 'ghe.mp3', 1),
(10, 'tti.mp3', 1),
(11, 'foreigner.mp3', 1),
(12, 'fo.mp3', 1),
(13, 'rei.mp3', 1),
(14, 'gner.mp3', 1),
(15, 'photograph.mp3', 1),
(16, 'pho.mp3', 1),
(17, 'to.mp3', 1),
(18, 'graph.mp3', 1),
(19, 'January.mp3', 1),
(20, 'Ja.mp3', 1),
(23, 'nu.mp3', 1),
(24, 'ary.mp3', 1),
(25, 'February.mp3', 1),
(26, 'Fe.mp3', 1),
(27, 'bru.mp3', 1),
(28, 'ary.mp3', 1),
(29, 'Tuesday.mp3', 1),
(30, 'Tu.mp3', 1),
(31, 'es.mp3', 1),
(32, 'day.mp3', 1),
(33, 'Wednesday.mp3', 1),
(34, 'We.mp3', 1),
(35, 'dn.mp3', 1),
(36, 'es.mp3', 1),
(37, 'day.mp3', 1),
(38, 'government.mp3', 1),
(39, 'go.mp3', 1),
(40, 'vern.mp3', 1),
(41, 'ment.mp3', 1),
(42, 'instrument.mp3', 1),
(43, 'in.mp3', 1),
(44, 'stru.mp3', 1),
(45, 'ment.mp3', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_grammar`
--

CREATE TABLE `mst_grammar` (
  `grammar_code` int(11) NOT NULL,
  `grammar_name` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_item`
--

CREATE TABLE `mst_item` (
  `item_code` int(11) NOT NULL,
  `item_idiom_p` int(11) NOT NULL,
  `mean_code` int(11) NOT NULL,
  `part_of_speech_code` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_item`
--

INSERT INTO `mst_item` (`item_code`, `item_idiom_p`, `mean_code`, `part_of_speech_code`, `supplement_code`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 1, 1),
(3, 3, 3, 1, 1),
(4, 4, 4, 1, 1),
(5, 5, 5, 1, 1),
(6, 6, 6, 1, 1),
(7, 7, 7, 1, 1),
(8, 8, 8, 1, 1),
(9, 9, 9, 1, 1),
(10, 10, 10, 1, 1),
(11, 11, 11, 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_mean`
--

CREATE TABLE `mst_mean` (
  `mean_code` int(11) NOT NULL,
  `mean_name` text COLLATE utf8_unicode_ci NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_mean`
--

INSERT INTO `mst_mean` (`mean_code`, `mean_name`, `supplement_code`) VALUES
(1, '写真、絵', 1),
(2, '状況、状態、情勢', 1),
(3, 'スパゲティ', 1),
(4, '外国人', 1),
(5, '写真', 1),
(6, '1月', 1),
(7, '2月', 1),
(8, '火曜日', 1),
(9, '水曜日', 1),
(10, '政府', 1),
(11, '楽器', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_part_of_speech`
--

CREATE TABLE `mst_part_of_speech` (
  `part_of_speech_code` int(11) NOT NULL,
  `part_of_speech_name` text COLLATE utf8_unicode_ci NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_part_of_speech`
--

INSERT INTO `mst_part_of_speech` (`part_of_speech_code`, `part_of_speech_name`, `supplement_code`) VALUES
(1, '名', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_school_year`
--

CREATE TABLE `mst_school_year` (
  `school_year_code` int(11) NOT NULL,
  `school_year_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_school_year`
--

INSERT INTO `mst_school_year` (`school_year_code`, `school_year_name`, `supplement_code`) VALUES
(1, 'test_graduation', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_sentence`
--

CREATE TABLE `mst_sentence` (
  `sentence_code` int(11) NOT NULL,
  `sentence_name` text COLLATE utf8_unicode_ci NOT NULL,
  `mean_code` int(11) NOT NULL,
  `grammar_code` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_sound`
--

CREATE TABLE `mst_sound` (
  `sound_code` int(11) NOT NULL,
  `chapter_p` int(11) NOT NULL,
  `chr_position_p` int(11) NOT NULL,
  `accent_mute_chr_p` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_sound`
--

INSERT INTO `mst_sound` (`sound_code`, `chapter_p`, `chr_position_p`, `accent_mute_chr_p`, `supplement_code`) VALUES
(1, 1, 2, 1, 1),
(2, 1, 5, 1, 1),
(3, 1, 5, 2, 1),
(4, 1, 6, 1, 1),
(5, 1, 2, 1, 1),
(6, 1, 6, 2, 1),
(7, 1, 3, 1, 1),
(8, 1, 2, 1, 1),
(9, 1, 2, 1, 1),
(10, 1, 4, 2, 1),
(11, 1, 2, 1, 1),
(12, 1, 2, 1, 1),
(13, 1, 3, 2, 1),
(14, 1, 2, 1, 1),
(15, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_text`
--

CREATE TABLE `mst_text` (
  `text_code` int(11) NOT NULL,
  `text_name` text COLLATE utf8_unicode_ci NOT NULL,
  `school_year_code` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_text`
--

INSERT INTO `mst_text` (`text_code`, `text_name`, `school_year_code`, `supplement_code`) VALUES
(1, 'test', 1, 1),
(2, 'demo', 1, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `mst_user`
--

CREATE TABLE `mst_user` (
  `user_code` int(11) NOT NULL,
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `authority_p` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mst_user`
--

INSERT INTO `mst_user` (`user_code`, `user_name`, `authority_p`, `supplement_code`) VALUES
(1, 'Guest', 0, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `rlt_colors`
--

CREATE TABLE `rlt_colors` (
  `colors_code` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `sound_code` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `rlt_colors`
--

INSERT INTO `rlt_colors` (`colors_code`, `item_code`, `sound_code`, `supplement_code`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 3, 4, 1),
(5, 4, 5, 1),
(6, 4, 6, 1),
(7, 5, 7, 1),
(8, 6, 8, 1),
(9, 7, 9, 1),
(10, 7, 10, 1),
(11, 8, 11, 1),
(12, 9, 12, 1),
(13, 9, 13, 1),
(14, 10, 14, 1),
(15, 11, 15, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `rlt_items`
--

CREATE TABLE `rlt_items` (
  `items_code` int(11) NOT NULL,
  `show_p` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `voice_code` int(11) NOT NULL,
  `view_code` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `rlt_items`
--

INSERT INTO `rlt_items` (`items_code`, `show_p`, `item_code`, `voice_code`, `view_code`, `supplement_code`) VALUES
(1, 0, 1, 1, 1, 1),
(2, 1, 1, 2, 2, 1),
(3, 2, 1, 3, 3, 1),
(4, 0, 2, 4, 4, 1),
(5, 1, 2, 5, 5, 1),
(6, 2, 2, 6, 6, 1),
(7, 0, 3, 7, 7, 1),
(8, 1, 3, 8, 8, 1),
(9, 2, 3, 9, 9, 1),
(10, 3, 3, 10, 10, 1),
(11, 0, 4, 11, 11, 1),
(12, 1, 4, 12, 12, 1),
(13, 2, 4, 13, 13, 1),
(14, 3, 4, 14, 14, 1),
(15, 0, 5, 15, 15, 1),
(16, 1, 5, 16, 16, 1),
(17, 2, 5, 17, 17, 1),
(18, 3, 5, 18, 18, 1),
(19, 0, 6, 19, 19, 1),
(20, 1, 6, 20, 20, 1),
(21, 2, 6, 23, 23, 1),
(22, 3, 6, 24, 24, 1),
(23, 0, 7, 25, 25, 1),
(24, 1, 7, 26, 26, 1),
(25, 2, 7, 27, 27, 1),
(26, 3, 7, 28, 28, 1),
(27, 0, 8, 29, 29, 1),
(28, 1, 8, 30, 30, 1),
(29, 2, 8, 31, 31, 1),
(30, 3, 8, 32, 32, 1),
(31, 0, 9, 33, 33, 1),
(32, 1, 9, 34, 34, 1),
(33, 2, 9, 35, 35, 1),
(34, 3, 9, 36, 36, 1),
(35, 4, 9, 37, 37, 1),
(36, 0, 10, 38, 38, 1),
(37, 1, 10, 39, 39, 1),
(38, 2, 10, 40, 40, 1),
(39, 3, 10, 41, 41, 1),
(40, 0, 11, 42, 42, 1),
(41, 1, 11, 43, 43, 1),
(42, 2, 11, 44, 44, 1),
(43, 3, 11, 45, 45, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `rlt_sentences`
--

CREATE TABLE `rlt_sentences` (
  `sentences_code` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `sentence_code` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `rlt_serializations`
--

CREATE TABLE `rlt_serializations` (
  `serializations_code` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `lesson` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit_p` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `text_code` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `rlt_serializations`
--

INSERT INTO `rlt_serializations` (`serializations_code`, `page`, `lesson`, `unit_p`, `item_code`, `text_code`, `supplement_code`) VALUES
(1, 0, 'LESSON1', 1, 1, 2, 1),
(2, 0, 'LESSON1', 1, 2, 2, 1),
(3, 0, 'LESSON1', 1, 3, 2, 1),
(4, 0, 'LESSON1', 1, 4, 2, 1),
(5, 0, 'LESSON1', 1, 5, 2, 1),
(6, 0, 'LESSON1', 1, 6, 2, 1),
(7, 0, 'LESSON1', 1, 7, 2, 1),
(8, 0, 'LESSON1', 1, 8, 2, 1),
(9, 0, 'LESSON1', 1, 9, 2, 1),
(10, 0, 'LESSON1', 1, 10, 2, 1),
(11, 0, 'LESSON1', 1, 11, 2, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `rlt_user_memories`
--

CREATE TABLE `rlt_user_memories` (
  `user_memories_code` int(11) NOT NULL,
  `memory_level_p` int(11) NOT NULL,
  `item_code` int(11) NOT NULL,
  `user_code` int(11) NOT NULL,
  `supplement_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `supplement`
--

CREATE TABLE `supplement` (
  `supplement_code` int(11) NOT NULL,
  `supplement_name` text COLLATE utf8_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `edited` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `supplement`
--

INSERT INTO `supplement` (`supplement_code`, `supplement_name`, `created`, `edited`) VALUES
(1, 'test', '2018-10-26 16:37:49', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_view`
--
ALTER TABLE `data_view`
  ADD PRIMARY KEY (`view_code`),
  ADD KEY `supplement_code` (`supplement_code`);

--
-- Indexes for table `data_voice`
--
ALTER TABLE `data_voice`
  ADD PRIMARY KEY (`voice_code`),
  ADD KEY `supplement_code` (`supplement_code`);

--
-- Indexes for table `mst_grammar`
--
ALTER TABLE `mst_grammar`
  ADD PRIMARY KEY (`grammar_code`),
  ADD KEY `supplement_code` (`supplement_code`);

--
-- Indexes for table `mst_item`
--
ALTER TABLE `mst_item`
  ADD PRIMARY KEY (`item_code`),
  ADD KEY `supplement_code` (`supplement_code`),
  ADD KEY `mean_code` (`mean_code`),
  ADD KEY `part_of_speech_code` (`part_of_speech_code`);

--
-- Indexes for table `mst_mean`
--
ALTER TABLE `mst_mean`
  ADD PRIMARY KEY (`mean_code`),
  ADD KEY `supplement_code` (`supplement_code`);

--
-- Indexes for table `mst_part_of_speech`
--
ALTER TABLE `mst_part_of_speech`
  ADD PRIMARY KEY (`part_of_speech_code`),
  ADD KEY `supplement_code` (`supplement_code`);

--
-- Indexes for table `mst_school_year`
--
ALTER TABLE `mst_school_year`
  ADD PRIMARY KEY (`school_year_code`),
  ADD KEY `supplement_code` (`supplement_code`);

--
-- Indexes for table `mst_sentence`
--
ALTER TABLE `mst_sentence`
  ADD PRIMARY KEY (`sentence_code`),
  ADD KEY `supplement_code` (`supplement_code`),
  ADD KEY `mean_code` (`mean_code`),
  ADD KEY `grammar_code` (`grammar_code`);

--
-- Indexes for table `mst_sound`
--
ALTER TABLE `mst_sound`
  ADD PRIMARY KEY (`sound_code`),
  ADD KEY `supplement_code` (`supplement_code`);

--
-- Indexes for table `mst_text`
--
ALTER TABLE `mst_text`
  ADD PRIMARY KEY (`text_code`),
  ADD KEY `supplement_code` (`supplement_code`),
  ADD KEY `school_year_code` (`school_year_code`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_code`),
  ADD KEY `supplement_code` (`supplement_code`);

--
-- Indexes for table `rlt_colors`
--
ALTER TABLE `rlt_colors`
  ADD PRIMARY KEY (`colors_code`),
  ADD KEY `supplement_code` (`supplement_code`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `sound_code` (`sound_code`);

--
-- Indexes for table `rlt_items`
--
ALTER TABLE `rlt_items`
  ADD PRIMARY KEY (`items_code`),
  ADD KEY `supplement_code` (`supplement_code`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `view_code` (`view_code`),
  ADD KEY `voice_code` (`voice_code`);

--
-- Indexes for table `rlt_sentences`
--
ALTER TABLE `rlt_sentences`
  ADD PRIMARY KEY (`sentences_code`),
  ADD KEY `supplement_code` (`supplement_code`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `sentence_code` (`sentence_code`);

--
-- Indexes for table `rlt_serializations`
--
ALTER TABLE `rlt_serializations`
  ADD PRIMARY KEY (`serializations_code`),
  ADD KEY `supplement_code` (`supplement_code`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `text_code` (`text_code`);

--
-- Indexes for table `rlt_user_memories`
--
ALTER TABLE `rlt_user_memories`
  ADD PRIMARY KEY (`user_memories_code`),
  ADD KEY `supplement_code` (`supplement_code`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `user_code` (`user_code`);

--
-- Indexes for table `supplement`
--
ALTER TABLE `supplement`
  ADD PRIMARY KEY (`supplement_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_view`
--
ALTER TABLE `data_view`
  MODIFY `view_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `data_voice`
--
ALTER TABLE `data_voice`
  MODIFY `voice_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `mst_grammar`
--
ALTER TABLE `mst_grammar`
  MODIFY `grammar_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_item`
--
ALTER TABLE `mst_item`
  MODIFY `item_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mst_mean`
--
ALTER TABLE `mst_mean`
  MODIFY `mean_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mst_part_of_speech`
--
ALTER TABLE `mst_part_of_speech`
  MODIFY `part_of_speech_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_school_year`
--
ALTER TABLE `mst_school_year`
  MODIFY `school_year_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_sentence`
--
ALTER TABLE `mst_sentence`
  MODIFY `sentence_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_sound`
--
ALTER TABLE `mst_sound`
  MODIFY `sound_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mst_text`
--
ALTER TABLE `mst_text`
  MODIFY `text_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rlt_colors`
--
ALTER TABLE `rlt_colors`
  MODIFY `colors_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rlt_items`
--
ALTER TABLE `rlt_items`
  MODIFY `items_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `rlt_sentences`
--
ALTER TABLE `rlt_sentences`
  MODIFY `sentences_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlt_serializations`
--
ALTER TABLE `rlt_serializations`
  MODIFY `serializations_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rlt_user_memories`
--
ALTER TABLE `rlt_user_memories`
  MODIFY `user_memories_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplement`
--
ALTER TABLE `supplement`
  MODIFY `supplement_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `data_view`
--
ALTER TABLE `data_view`
  ADD CONSTRAINT `data_view_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`);

--
-- テーブルの制約 `data_voice`
--
ALTER TABLE `data_voice`
  ADD CONSTRAINT `data_voice_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`);

--
-- テーブルの制約 `mst_grammar`
--
ALTER TABLE `mst_grammar`
  ADD CONSTRAINT `mst_grammar_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`);

--
-- テーブルの制約 `mst_item`
--
ALTER TABLE `mst_item`
  ADD CONSTRAINT `mst_item_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`),
  ADD CONSTRAINT `mst_item_ibfk_2` FOREIGN KEY (`mean_code`) REFERENCES `mst_mean` (`mean_code`),
  ADD CONSTRAINT `mst_item_ibfk_3` FOREIGN KEY (`part_of_speech_code`) REFERENCES `mst_part_of_speech` (`part_of_speech_code`);

--
-- テーブルの制約 `mst_mean`
--
ALTER TABLE `mst_mean`
  ADD CONSTRAINT `mst_mean_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`);

--
-- テーブルの制約 `mst_part_of_speech`
--
ALTER TABLE `mst_part_of_speech`
  ADD CONSTRAINT `mst_part_of_speech_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`);

--
-- テーブルの制約 `mst_school_year`
--
ALTER TABLE `mst_school_year`
  ADD CONSTRAINT `mst_school_year_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`);

--
-- テーブルの制約 `mst_sentence`
--
ALTER TABLE `mst_sentence`
  ADD CONSTRAINT `mst_sentence_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`),
  ADD CONSTRAINT `mst_sentence_ibfk_2` FOREIGN KEY (`mean_code`) REFERENCES `mst_mean` (`mean_code`),
  ADD CONSTRAINT `mst_sentence_ibfk_3` FOREIGN KEY (`grammar_code`) REFERENCES `mst_grammar` (`grammar_code`);

--
-- テーブルの制約 `mst_sound`
--
ALTER TABLE `mst_sound`
  ADD CONSTRAINT `mst_sound_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`);

--
-- テーブルの制約 `mst_text`
--
ALTER TABLE `mst_text`
  ADD CONSTRAINT `mst_text_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`),
  ADD CONSTRAINT `mst_text_ibfk_2` FOREIGN KEY (`school_year_code`) REFERENCES `mst_school_year` (`school_year_code`);

--
-- テーブルの制約 `mst_user`
--
ALTER TABLE `mst_user`
  ADD CONSTRAINT `mst_user_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`);

--
-- テーブルの制約 `rlt_colors`
--
ALTER TABLE `rlt_colors`
  ADD CONSTRAINT `rlt_colors_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`),
  ADD CONSTRAINT `rlt_colors_ibfk_2` FOREIGN KEY (`item_code`) REFERENCES `mst_item` (`item_code`),
  ADD CONSTRAINT `rlt_colors_ibfk_3` FOREIGN KEY (`sound_code`) REFERENCES `mst_sound` (`sound_code`);

--
-- テーブルの制約 `rlt_items`
--
ALTER TABLE `rlt_items`
  ADD CONSTRAINT `rlt_items_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`),
  ADD CONSTRAINT `rlt_items_ibfk_2` FOREIGN KEY (`item_code`) REFERENCES `mst_item` (`item_code`),
  ADD CONSTRAINT `rlt_items_ibfk_3` FOREIGN KEY (`view_code`) REFERENCES `data_view` (`view_code`),
  ADD CONSTRAINT `rlt_items_ibfk_4` FOREIGN KEY (`voice_code`) REFERENCES `data_voice` (`voice_code`);

--
-- テーブルの制約 `rlt_sentences`
--
ALTER TABLE `rlt_sentences`
  ADD CONSTRAINT `rlt_sentences_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`),
  ADD CONSTRAINT `rlt_sentences_ibfk_2` FOREIGN KEY (`item_code`) REFERENCES `mst_item` (`item_code`),
  ADD CONSTRAINT `rlt_sentences_ibfk_3` FOREIGN KEY (`sentence_code`) REFERENCES `mst_sentence` (`sentence_code`);

--
-- テーブルの制約 `rlt_serializations`
--
ALTER TABLE `rlt_serializations`
  ADD CONSTRAINT `rlt_serializations_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`),
  ADD CONSTRAINT `rlt_serializations_ibfk_2` FOREIGN KEY (`item_code`) REFERENCES `mst_item` (`item_code`),
  ADD CONSTRAINT `rlt_serializations_ibfk_3` FOREIGN KEY (`text_code`) REFERENCES `mst_text` (`text_code`);

--
-- テーブルの制約 `rlt_user_memories`
--
ALTER TABLE `rlt_user_memories`
  ADD CONSTRAINT `rlt_user_memories_ibfk_1` FOREIGN KEY (`supplement_code`) REFERENCES `supplement` (`supplement_code`),
  ADD CONSTRAINT `rlt_user_memories_ibfk_2` FOREIGN KEY (`item_code`) REFERENCES `mst_item` (`item_code`),
  ADD CONSTRAINT `rlt_user_memories_ibfk_3` FOREIGN KEY (`user_code`) REFERENCES `mst_user` (`user_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
