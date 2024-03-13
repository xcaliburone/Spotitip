INSERT IGNORE INTO `album` (`id_album`, `nama_album`, `jmlh_lagu_album`, `durasi_album`) VALUES
	('AL01', 'mahagita', 4, '00hr 20min'),
	('AL02', 'saka agari', 10, '00hr 50min'),
	('AL03', 'seishun girls', 12, '01hr 00min');

INSERT IGNORE INTO `artis` (`email_artis`, `nama_artis`, `password_artis`, `pengikut`) VALUES
	('florashafiq@gmail.com', 'flora shafiqa', 'florisen321', 14744),
	('siscasaras@gmail.com', 'sisca saras', 'phisisca123', 42000),
	('zeeshafa@gmail.com', 'azizi shafa', 'zee1234', 15257);

INSERT IGNORE INTO `playlist` (`id_playlist`, `nama_playlist`, `jmlh_lagu_playlist`, `durasi_playlist`) VALUES
	('PL01', 'get you off', 5, '00hr 25min'),
	('PL02', 'the sky is pretty isn’t it', 6, '00hr 30min'),
	('PL03', 'sayonara crawl', 7, '00hr 35min'),
	('PL04', 'what for?', 12, '01hr 00min');

INSERT IGNORE INTO `single` (`id_single`, `nama_single`, `jmlh_lagu_single`, `durasi_single`) VALUES
	('SL01', 'flying high', 1, '00hr 05min'),
	('SL02', 'ilusi', 1, '00hr 05min'),
	('SL03', 'punkish', 1, '00hr 05min');

INSERT IGNORE INTO `berisikan` (`id_playlist`, `id_lagu`) VALUES
	('PL01', 'LG02'),
	('PL01', 'LG01'),
	('PL02', 'LG09'),
	('PL01', 'LG03'),
	('PL01', 'LG04'),
	('PL01', 'LG05'),
	('PL02', 'LG06'),
	('PL02', 'LG07'),
	('PL02', 'LG08'),
	('PL02', 'LG11'),
	('PL02', 'LG10'),
	('PL03', 'LG17'),
	('PL03', 'LG13'),
	('PL03', 'LG14'),
	('PL03', 'LG15'),
	('PL03', 'LG16'),
	('PL03', 'LG18'),
	('PL03', 'LG12'),
	('PL04', 'LG19'),
	('PL04', 'LG06'),
	('PL04', 'LG20'),
	('PL04', 'LG21'),
	('PL04', 'LG22'),
	('PL04', 'LG23'),
	('PL04', 'LG24'),
	('PL04', 'LG25'),
	('PL04', 'LG26'),
	('PL04', 'LG27'),
	('PL04', 'LG28'),
	('PL04', 'LG29');
    
INSERT IGNORE INTO `membuat` (`id_playlist`, `email_user`, `tgl_pembuatan`) VALUES
	('PL01', 'pengguna1@gmail.com', '2023-10-30 16:00:00'),
	('PL02', 'pengguna2@gmail.com', '2021-07-11 16:00:00'),
	('PL03', 'pengguna3@gmail.com', '2022-03-04 16:00:00'),
	('PL04', 'pengguna4@gmail.com', '2022-12-31 16:00:00');

INSERT IGNORE INTO `dikelompokkan` (`id_lagu`, `id_single`, `id_album`) VALUES
	('LG02', NULL, 'AL01'),
	('LG03', NULL, 'AL01'),
	('LG01', 'SL01', NULL),
	('LG04', NULL, 'AL01'),
	('LG05', NULL, 'AL01'),
	('LG06', 'SL02', NULL),
	('LG07', NULL, 'AL02'),
	('LG08', NULL, 'AL02'),
	('LG09', NULL, 'AL02'),
	('LG10', NULL, 'AL02'),
	('LG11', NULL, 'AL02'),
	('LG12', NULL, 'AL02'),
	('LG13', NULL, 'AL02'),
	('LG14', NULL, 'AL02'),
	('LG15', NULL, 'AL02'),
	('LG16', NULL, 'AL02'),
	('LG17', 'SL03', NULL),
	('LG18', NULL, 'AL03'),
	('LG19', NULL, 'AL03'),
	('LG20', NULL, 'AL03'),
	('LG21', NULL, 'AL03'),
	('LG22', NULL, 'AL03'),
	('LG23', NULL, 'AL03'),
	('LG24', NULL, 'AL03'),
	('LG25', NULL, 'AL03'),
	('LG26', NULL, 'AL03'),
	('LG27', NULL, 'AL03'),
	('LG28', NULL, 'AL03'),
	('LG29', NULL, 'AL03');

INSERT IGNORE INTO `merilis` (`email_artis`, `id_lagu`) VALUES
	('zeeshafa@gmail.com', 'LG02'),
	('florashafiq@gmail.com', 'LG22'),
	('florashafiq@gmail.com', 'LG23'),
	('zeeshafa@gmail.com', 'LG03'),
	('zeeshafa@gmail.com', 'LG04'),
	('zeeshafa@gmail.com', 'LG05'),
	('zeeshafa@gmail.com', 'LG07'),
	('zeeshafa@gmail.com', 'LG08'),
	('zeeshafa@gmail.com', 'LG09'),
	('zeeshafa@gmail.com', 'LG10'),
	('zeeshafa@gmail.com', 'LG01'),
	('siscasaras@gmail.com', 'LG12'),
	('siscasaras@gmail.com', 'LG13'),
	('siscasaras@gmail.com', 'LG14'),
	('siscasaras@gmail.com', 'LG15'),
	('siscasaras@gmail.com', 'LG16'),
	('siscasaras@gmail.com', 'LG17'),
	('siscasaras@gmail.com', 'LG18'),
	('siscasaras@gmail.com', 'LG19'),
	('siscasaras@gmail.com', 'LG20'),
	('siscasaras@gmail.com', 'LG11'),
	('florashafiq@gmail.com', 'LG24'),
	('florashafiq@gmail.com', 'LG25'),
	('florashafiq@gmail.com', 'LG26'),
	('florashafiq@gmail.com', 'LG27'),
	('florashafiq@gmail.com', 'LG28'),
	('florashafiq@gmail.com', 'LG29'),
	('florashafiq@gmail.com', 'LG21');