CREATE TABLE alumno (
	mat_alu INT PRIMARY KEY AUTO_INCREMENT,
	nom_alu varchar(30) NOT NULL,
	edad_alu INT NOT NULL,
	gen_alu varchar(30) NOT NULL,
	clave_c1 INT NOT NULL,
	clave_p1 INT NOT NULL,
	clave_s1 INT NOT NULL
);

CREATE TABLE curso (
	clave_c INT PRIMARY KEY AUTO_INCREMENT,
	nom_c varchar(30) NOT NULL,
	durac_c date NOT NULL
);

ALTER TABLE alumno ADD FOREIGN KEY (clave_c1) REFERENCES curso(clave_c);

CREATE TABLE profesor (
        clave_p INT PRIMARY KEY AUTO_INCREMENT,
        nom_p varchar(30) NOT NULL,
        dir_p varchar(30) NOT NULL,
	tel_p INT NOT NULL,
	hor_p TIME NOT NULL,
	mat_alu1 INT NOT NULL,
	clave_s2 INT NOT NULL
);

ALTER TABLE alumno ADD FOREIGN KEY (clave_p1) REFERENCES profesor (clave_p);
ALTER TABLE profesor ADD FOREIGN KEY (mat_alu1) REFERENCES alumno (mat_alu);

CREATE TABLE sesion_de_formacion (
	clave_s INT PRIMARY KEY AUTO_INCREMENT,
	nom_s varchar(30) NOT NULL,
	cred_s INT NOT NULL,
	mat_alu2 INT NOT NULL,
	clave_p2 INT NOT NULL
);

ALTER TABLE sesion_de_formacion ADD FOREIGN KEY (mat_alu2) REFERENCES alumno (mat_alu);
ALTER TABLE alumno ADD FOREIGN KEY (clave_s1) REFERENCES sesion_de_formacion (clave_s);

ALTER TABLE sesion_de_formacion ADD FOREIGN KEY (clave_p2) REFERENCES profesor (clave_p);
ALTER TABLE profesor ADD FOREIGN KEY (clave_s2) REFERENCES sesion_de_formacion (clave_s);