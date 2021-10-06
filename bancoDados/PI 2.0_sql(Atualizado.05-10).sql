CREATE TABLE `tb_usuario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` varchar(150) NOT NULL,
	`email` varchar(100) NOT NULL UNIQUE,
	`tipoCadastro` INT(1) NOT NULL,
	`senha` varchar(10) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_categoria` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`categoria` varchar(100) NOT NULL,
	`descricao` varchar(500) NOT NULL,
	`valor` DECIMAL(5,2) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_produtos` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idCategoria` INT(1000) NOT NULL,
	`idUser` INT NOT NULL AUTO_INCREMENT,
	`nomeServico` varchar(100) NOT NULL,
	`apresentacao` varchar(1000) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_produtos` ADD CONSTRAINT `tb_produtos_fk0` FOREIGN KEY (`idCategoria`) REFERENCES `tb_categoria`(`id`);

ALTER TABLE `tb_produtos` ADD CONSTRAINT `tb_produtos_fk1` FOREIGN KEY (`idUser`) REFERENCES `tb_usuario`(`id`);




