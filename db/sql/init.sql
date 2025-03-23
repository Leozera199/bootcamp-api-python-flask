BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Aluno" (
	"cpf"	INTEGER,
	"matricula"	VARCHAR NOT NULL,
	"nome"	VARCHAR NOT NULL,
	"data_nascimento"	VARCHAR NOT NULL,
	"telefone"	VARCHAR NOT NULL,
	"email"	VARCHAR NOT NULL,
	"status"	INTEGER NOT NULL DEFAULT (1),
	PRIMARY KEY("cpf")
);
CREATE TABLE IF NOT EXISTS "Curso" (
	"id"	INTEGER,
	"nome"	VARCHAR NOT NULL,
	"turno"	VARCHAR NOT NULL,
	"carga_horaria"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "AlunoCurso" (
	"id"		INTEGER,
	"aluno_cpf"	INTEGER NOT NULL,
	"curso_id"	INTEGER NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("aluno_cpf") REFERENCES "Aluno"("cpf"),
	FOREIGN KEY("curso_id") REFERENCES "Curso"("id")
);
INSERT INTO "Aluno" VALUES (12345678912,'2312024156716','Mauro Carvalho dos Santos','09/08/2000','14991238911','mauro2013@gmail.com',1);
INSERT INTO "Aluno" VALUES (39481220012,'2312024159235','Ana Carla do Amaral','30/07/2003','14982120031','anacm23@outlook.com',1);
INSERT INTO "Aluno" VALUES (92188123931,'2312023154544','Pedro Soares Santos','06/10/1998','21992341077','pedrosantos5@yahoo.com.br',0);
INSERT INTO "Aluno" VALUES (82001289110,'2312025901123','Bianca Azevedo da Costa','14/09/2005','18220120011','bibiac05@hotmail.com',1);
INSERT INTO "Aluno" VALUES (98200100236,'2312025880112','Valdemar Gomes Galego','01/01/2000','88921781177','valdemarggalego@gmail.com',1);
INSERT INTO "Aluno" VALUES (55900478213,'2312013445001','Joana Prado','09/08/1995','11882910801','joanaprado95@yahoo.com.br',0);
INSERT INTO "Aluno" VALUES (15629991700,'2312019445888','Enzo Batista Magalhaes','10/11/2002','11991821399','enzinbm02@gmail.com',1);
INSERT INTO "Aluno" VALUES (99288222211,'2312018992134','Cleide Paiva Morgado','28/02/1998','14992813499','cleidemorgado98@hotmail.com',1);
INSERT INTO "Aluno" VALUES (93003200278,'2312025998136','Denis Teixeira Moreira','11/09/2006','14981721377','denis_teix@gmail.com',1);
INSERT INTO "Aluno" VALUES (78199209266,'2312023889002','Sabrina Alves Correa','24/05/2003','14993780011','sabricorrea@outlook.com',1);
INSERT INTO "Curso" VALUES (55691,'Inteligencia Artificial','vespertino',80);
INSERT INTO "Curso" VALUES (83999,'Design de Interfaces','noturno',450);
INSERT INTO "Curso" VALUES (91108,'Manutencao de Computadores','matutino',500);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (12345678912,55691);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (12345678912,91108);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (39481220012,55691);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (39481220012,83999);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (92188123931,83999);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (82001289110,55691);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (82001289110,91108);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (98200100236,55691);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (55900478213,91108);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (15629991700,83999);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (99288222211,83999);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (93003200278,55691);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (93003200278,83999);
INSERT INTO "AlunoCurso"("aluno_cpf", "curso_id") VALUES (78199209266,91108);
COMMIT;
