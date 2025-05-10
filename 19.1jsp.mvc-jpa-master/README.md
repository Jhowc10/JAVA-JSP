# jsp.mvc-jpa
Projeto MVC+JPA

Utilizar o script a seguir para a criação da tabela

Criar o Database: `exemplo_bd`

Estrutura da tabela `aluno`

CREATE TABLE IF NOT EXISTS `aluno` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`ra` varchar(50) NOT NULL,
`nome` varchar(50) DEFAULT NULL,
`curso` varchar(50) DEFAULT NULL,
`disciplina` varchar(50) DEFAULT NULL,
`email` varchar(50) DEFAULT NULL,
PRIMARY KEY (`id`))
ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;
