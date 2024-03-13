CREATE DATABASE IF NOT EXISTS `spotitip`;
USE `spotitip`;

CREATE TABLE IF NOT EXISTS `pengguna` (
  `email_user` varchar(50) NOT NULL,
  `nama_akun` varchar(50) DEFAULT NULL,
  `password_user` varchar(50) DEFAULT NULL,
  `mengikuti` int(12) DEFAULT 0,
  PRIMARY KEY (`email_user`)
);

CREATE TABLE IF NOT EXISTS `album` (
  `id_album` varchar(50) NOT NULL,
  `nama_album` varchar(50) DEFAULT NULL,
  `jmlh_lagu_album` int(12) DEFAULT NULL,
  `durasi_album` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_album`)
);

CREATE TABLE IF NOT EXISTS `lagu` (
  `id_lagu` varchar(50) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `jmlh_pendengar` int(12) DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_lagu`)
);

CREATE TABLE IF NOT EXISTS `artis` (
  `email_artis` varchar(50) NOT NULL,
  `nama_artis` varchar(50) DEFAULT NULL,
  `password_artis` varchar(50) DEFAULT NULL,
  `pengikut` int(12) DEFAULT NULL,
  PRIMARY KEY (`email_artis`)
);

CREATE TABLE IF NOT EXISTS `playlist` (
  `id_playlist` varchar(50) NOT NULL,
  `nama_playlist` varchar(50) DEFAULT NULL,
  `jmlh_lagu_playlist` int(12) DEFAULT NULL,
  `durasi_playlist` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_playlist`)
);

CREATE TABLE IF NOT EXISTS `single` (
  `id_single` varchar(50) NOT NULL,
  `nama_single` varchar(50) DEFAULT NULL,
  `jmlh_lagu_single` int(12) DEFAULT NULL,
  `durasi_single` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_single`)
);

CREATE TABLE IF NOT EXISTS `berisikan` (
  `id_playlist` varchar(50) DEFAULT NULL,
  `id_lagu` varchar(50) DEFAULT NULL,
  KEY `FK_berisikan_playlist` (`id_playlist`),
  KEY `FK_berisikan_lagu` (`id_lagu`),
  CONSTRAINT `FK_berisikan_lagu` FOREIGN KEY (`id_lagu`) REFERENCES `lagu` (`id_lagu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_berisikan_playlist` FOREIGN KEY (`id_playlist`) REFERENCES `playlist` (`id_playlist`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `dikelompokkan` (
  `id_lagu` varchar(50) DEFAULT NULL,
  `id_single` varchar(50) DEFAULT NULL,
  `id_album` varchar(50) DEFAULT NULL,
  KEY `FK__single` (`id_single`),
  KEY `FK_dikelompokkan_album` (`id_album`),
  KEY `FK_dikelompokkan_lagu` (`id_lagu`),
  CONSTRAINT `FK__single` FOREIGN KEY (`id_single`) REFERENCES `single` (`id_single`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_dikelompokkan_album` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_dikelompokkan_lagu` FOREIGN KEY (`id_lagu`) REFERENCES `lagu` (`id_lagu`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `membuat` (
  `id_playlist` varchar(50) DEFAULT NULL,
  `email_user` varchar(50) DEFAULT NULL,
  `tgl_pembuatan` timestamp NULL DEFAULT current_timestamp(),
  KEY `FK_membuat_playlist` (`id_playlist`),
  KEY `FK_membuat_user` (`email_user`),
  CONSTRAINT `FK_membuat_playlist` FOREIGN KEY (`id_playlist`) REFERENCES `playlist` (`id_playlist`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_membuat_user` FOREIGN KEY (`email_user`) REFERENCES `pengguna` (`email_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `merilis` (
  `email_artis` varchar(50) DEFAULT NULL,
  `id_lagu` varchar(50) DEFAULT NULL,
  KEY `FK__artis` (`email_artis`),
  KEY `FK__lagu` (`id_lagu`),
  CONSTRAINT `FK__artis` FOREIGN KEY (`email_artis`) REFERENCES `artis` (`email_artis`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__lagu` FOREIGN KEY (`id_lagu`) REFERENCES `lagu` (`id_lagu`) ON DELETE NO ACTION ON UPDATE NO ACTION
);