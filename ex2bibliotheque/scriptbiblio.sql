
#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: bookType
#------------------------------------------------------------

CREATE TABLE bookType(
        id   Int  Auto_increment  NOT NULL ,
        type Varchar (50) NOT NULL
	,CONSTRAINT bookType_PK PRIMARY KEY (id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: clients
#------------------------------------------------------------

CREATE TABLE clients(
        id          Int  Auto_increment  NOT NULL ,
        lastname    Varchar (50) NOT NULL ,
        firstname   Varchar (50) NOT NULL ,
        birthdate   Date NOT NULL ,
        mail        Varchar (50) NOT NULL ,
        id_bookType Int NOT NULL
	,CONSTRAINT clients_PK PRIMARY KEY (id)

	,CONSTRAINT clients_bookType_FK FOREIGN KEY (id_bookType) REFERENCES bookType(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: books
#------------------------------------------------------------

CREATE TABLE books(
        id              Int  Auto_increment  NOT NULL ,
        bookTitle       Varchar (50) NOT NULL ,
        authorLastname  Varchar (50) NOT NULL ,
        authorFirstname Varchar (50) NOT NULL ,
        id_bookType     Int NOT NULL
	,CONSTRAINT books_PK PRIMARY KEY (id)

	,CONSTRAINT books_bookType_FK FOREIGN KEY (id_bookType) REFERENCES bookType(id)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: register
#------------------------------------------------------------

CREATE TABLE register(
        id         Int  Auto_increment  NOT NULL ,
        borrowDate Date NOT NULL ,
        backDate   Date NOT NULL ,
        id_books   Int NOT NULL ,
        id_clients Int NOT NULL
	,CONSTRAINT register_PK PRIMARY KEY (id)

	,CONSTRAINT register_books_FK FOREIGN KEY (id_books) REFERENCES books(id)
	,CONSTRAINT register_clients0_FK FOREIGN KEY (id_clients) REFERENCES clients(id)
)ENGINE=InnoDB;

