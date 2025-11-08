
CREATE DATABASE library_database;
USE library_database;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_year INT
);



CREATE TABLE Members(
	member_id_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(150) NOT NULL ,
    last_name VARCHAR(150) NOT NULL ,
    address VARCHAR(250),
    phone VARCHAR(20)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(255),
    phone VARCHAR(20)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    publication_year INT,
    ISBN VARCHAR(20) UNIQUE,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);


CREATE TABLE Loans(
	loan_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    loan_date DATE NOT NULL,
    due_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
 
 -- Insert Data

INSERT INTO Authors (first_name, last_name ,  birth_year)
 VALUES ('Ahmed', 'Mohamed' , 1985 ), ('Ali' , 'Adim' , 1990 ),( 'Osama', 'Sayed', 1975);
 
 INSERT INTO Members (first_name,last_name, address, phone)
 VALUES ('Mwafg','Gumma' , 'Omdurman-Al Nahda area' ,'987-103-642') ,
 ('Khaled' ,'Moahmed','Khartoum-AL Riyadh area', '291-539-053'),
  ('Aisha' ,'Omer','Omdurman Wad-Nubawi area', '981-402-656'),
   ('Alaa' ,'Yousef','Khartoum-AL maamoura', '772-191-025');
   
INSERT INTO Books (title,publication_year,ISBN, author_id)
VALUES ('Our Neighborhood Kids',1959,'978-0123456789',1),
('Beirut',1975 ,'978-1122334455',1),
('Heart Of The Night',1975,'978-9876543210',2),
('The Blue Elephant',2012,'978-6655443322',3);


INSERT INTO Loans (Book_id, member_id, loan_date, due_date)
VALUES 
(1,1,'2022-10-1', '2025-10-15'),
(4,2,'2020-6-20','2021-9-10');