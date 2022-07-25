/*
1. Створити БД на тему - "Бібліотека".
*/
CREATE DATABASE lib;

/*
2. Створити таблицю "книжка" з полями(
-  Id not null primary key auto_increment
-  назва книги(не null, до 120 символів),
- опис(потрібно подумати який тип даних),
- дата публікації(не null, default значення "2018-01-01"),#date
- категорія(не null, до 30 символів),
- isbn (не null, до 20 символів, унікальний),
- кількість сторінок(не null)
- ім"я автора (не null, до 45 символів),
- прізвище автора (не null, до 45 символів),
- email автора (не null, до 50 символів)
- вік автора(не null),
- дата народження автора(не null),
- нагороди автора(до 120 символів, якщо нема - то NULL)
*/
CREATE TABLE books (
    id serial PRIMARY KEY,
    bookName varchar(120) NOT NULL,
    bookDescription text,
    datePublication date NOT NULL,
    bookCategory varchar(30) NOT NULL,
    bookISBN varchar(20) UNIQUE,
    bookSize int NOT NULL,
    bookAuthorName varchar(45) NOT NULL,
    bookAuthorSurname varchar(45) NOT NULL,
    bookAuthorEmail varchar(50) NOT NULL,
    bookAuthorAge int NOT NULL,
    bookAuthorBirthday date NOT NULL,
    bookAuthorPrizes varchar(120)
);

/*
3. Добавити в цю таблицю 10 записів.
*/
INSERT INTO books (bookName,bookDescription,datePublication,bookCategory,bookISBN,bookSize,bookAuthorName,bookAuthorSurname,bookAuthorEmail,bookAuthorAge,bookAuthorBirthday,bookAuthorPrizes)
    VALUES
    ('Core Java Volume I – Fundamentals','Core Java Volume I – Fundamentals is a Java reference book (Best book for Java)that offers a detailed explanation of various features of Core Java, including exception handling, interfaces, and lambda expressions. Significant highlights of the book include simple language, conciseness, and detailed examples. The latest edition of the Core Java Volume I – Fundamentals comprehensively updated for covering Java SE 9, 10 & 11. The book helps Java programmers develop an ability to write highly robust and maintainable code.', '27.08.2018','Programming','0135166306',889,'Cay','Horstmann','horstmann@books.com',35,'25.09.1975',''),
    ('Effective Java','A must-have book for every Java programmer and Java aspirant, Effective Java makes up for an excellent complementary read with other Java books or learning material. The book offers 78 best practices to follow for making the code better. Effective Java divides all the mentioned best practices into 11 distinct sections, such as Concurrency, Generics, and Methods, to make it easier for the reader to grasp it all. The book offers something to Java programmers of any skill level.', '27.11.2017','Coding','0134685997',412,'Joshua','Bloch','bloch@books.com',42,'25.09.1971',''),
    ('Java: A Beginner’s Guide','If you are a seasoned Java programmer looking to enhance your Java knowledge, don’t be averted by the title of the book, Java: A Beginner’s Guide. It is, in fact, one of the most comprehensive books for learning Java. Anyone with basic programming knowledge can easily benefit from the Java: A Beginner’s Guide. The Java book covers all concepts pertaining to Core Java. The latest edition of the Java: A Beginner’s Guide is fully revised to include Java 11 SE. The book offers several hands-on exercises as well as a quiz section at the end of every chapter.', '02.10.2018','Programming','1260440214',684,'Herbert','Schildt','schildt@books.com',55,'25.09.1968',''),
    ('Java - The Complete Reference','Java - The Complete Reference is a convenient Java reference book with over 1000 pages. It contains every aspect of Java that you need to master. In addition to examining essential portions of the Java API library, Java - The Complete Reference covers fundamental programming principles, Java language syntax, and keywords. The book is full of discussions and apt examples to better Java learning.', '12.12.2018','Coding','1260440230',1208,'Herbert','Schildt','schildt@books.com',55,'25.09.1968',''),
    ('Head First Java: A Brain-friendly Guide','The most important selling points of Head First Java is its simplicity and super-effective real-life analogies that pertain to the Java programming concepts. It is also the best book to learn java and to start your learning journey with Java Development. Head First Java covers almost all OOPS concepts and fascinatingly explains them. Despite several readers claiming it to be a dated book, as it covers nothing beyond Java 5.0, Head First Java is still found on the shelves of numerous Java veterans. Thus, it a must-have book for every Java pursuer and developer.', '05.02.2005','Programming','0596009208',720,'Kathy','Sierra','sierra@books.com',25,'01.01.1998',''),
    ('Java Concurrency in Practice','Java Concurrency in Practice is one of the best Java programming books to develop a rich understanding of concurrency and multithreading. Don’t be fooled by the book’s coverage of Java 5.0, as it is still relevant and essential for any ardent Java developer. The only issue with the Java Concurrency in Practice is that some sections might be challenging to comprehend at first. However, you need to understand that the topics covered by the book, i.e. concurrency and multithreading, are tricky in themselves. Hence, you will realize later that the strenuous task of going through the book is worth the effort.', '09.05.2006','Programming','0321349601',424,'Brian','Goetz','goetz@books.com',29,'01.01.1994',''),
    ('Test-Driven: TDD and Acceptance TDD for Java Developers','Test-Driven is an excellent book for learning how to write unique automation testing programs. It is a must-have book for those Java developers that prioritize code quality as well as have a knack for writing unit, integration, and automation tests. Test-Driven: TDD and Acceptance TDD for Java Developers offers hands-on examples to test drive Java code. Further, the book covers acceptance test-driven development, the Fit framework, and testing Java EE components - JSPs, Servlets, and Spring Controllers.', '22.10.2007','Programming','9781932394856',470,'Lasse','Koskela','koskela@books.com',24,'01.05.1998',''),
    ('Head First Object-Oriented Analysis Design','Head First is one of the most beautiful finest book series ever written on Java programming language. Another gem in the series is the Head First Object-Oriented Analysis Design. It is part of the Head First Java trilogy, the other two being Head First Java and Head First Design Patterns. Head First Object-Oriented Analysis Design details different techniques used in object-oriented programming and design. The list includes coding for interfaces as well as how to encapsulate what changes. Head First OOAD is an excellent book to know how to write Java code better.', '01.12.2006','Programming','0596008678',634,'Brett','McLaughlin','mclaughlin@books.com',20,'15.11.2002',''),
    ('Java Performance: The Definite Guide','Garbage collection, JVM, and performance tuning are some of the most favorable aspects of the Java programming language. Java Performance: The Definite Guide covers all three of these Java topics in a simple yet effective manner. Java Performance: The Definite Guide educates readers about maximizing Java threading and synchronization performance features, improve Java-driven database application performance, tackle performance issues in Java EE and Java SE APIs, and much more.', '29.04.2014','Coding','1449358454',423,'Scott','Oaks','oaks@books.com',33,'26.07.1989',''),
    ('Head First Design Patterns','Good hold on the OOP and design patterns is essential for writing immaculate Java applications. Head First Design Patterns is one of the leading books to build that particular understanding of the Java programming language. Head First Design Patterns provides answers to several commonly asked questions about Java, including why Composition is better than Inheritance and how to change the runtime behavior of a class without stirring the already tried and tested code.', '01.01.2014','Coding','9780596007126',650,'Eric','Freeman','freeman@books.com',38,'26.07.1984','');

/*
4. Потрібно написати наступні запити:
*/

/* - витягнути всі книги */
SELECT * FROM books

/* - витягнути книги з id 5, 10, 13 */
SELECT * FROM books WHERE id IN (5,10,13)

/* - витягнути всі книги де кількість сторінок більше 150 */
SELECT * FROM books WHERE booksize > 150

/* - витягнути книги, де автори старше 30 років */
SELECT * FROM books WHERE bookauthorage > 30

/* - витягнути книги, в яких автори не мають нагород */
SELECT * FROM books WHERE bookauthorprizes = ''

/* - витягнути книгу по email автора */
SELECT * FROM books WHERE bookauthoremail = 'schildt@books.com'

/* - витягнути книгу по isbn */
SELECT * FROM books WHERE bookisbn = '1260440214'

/* - витягнути всіх книги які належать до певної категорії */
SELECT * FROM books WHERE bookcategory = 'Programming'

/* - витягнути книги в яких кількість сторінок більше 200 та вік автора більше 25 */
SELECT * FROM (SELECT *,date_part('year', age(bookauthorbirthday))::int AS age FROM books) as t WHERE booksize > 200 AND t.age > 25

/* - витягнути книги, в яких категорія "комедія" або "драма"(назви категорії можете змінити) */
SELECT * FROM books WHERE bookcategory = 'Programming' OR bookcategory = 'Coding'
SELECT * FROM books WHERE bookcategory IN ('Programming','Coding')
SELECT * FROM books WHERE bookcategory SIMILAR TO '(Programming|Coding)'
SELECT * FROM books WHERE bookcategory ~ 'Programming|Coding'
SELECT * FROM books WHERE bookcategory LIKE ANY (ARRAY['Programming','Coding'])
SELECT * FROM books WHERE bookcategory LIKE ANY (VALUES('Programming'),('Coding'))
SELECT * FROM books WHERE bookcategory LIKE ANY ('{"Programming","Coding"}')
SELECT * FROM books WHERE bookcategory ~~ ANY ('{"Programming","Coding"}')

/* - витягнути книги та посортувати за назвою */
SELECT * FROM books ORDER BY bookname

/* - витягнути книги та посортувати за email автора */
SELECT * FROM books ORDER BY bookauthoremail

/* - витягнути книги та посортувати за кількістю сторінок(проти алфавіту) */
SELECT * FROM books ORDER BY booksize DESC

/* - витягнути унікальні значення категорій */
SELECT DISTINCT(bookcategory) FROM books

/* - витягнути унікальні імена авторів */
SELECT DISTINCT(bookauthorname) FROM books

/* - витягнути книги які було написано після "2000-01-01' */
SELECT * FROM books WHERE datepublication > '2015-01-01'

/* - витягнути книги які було написано до '2010-01-01' */
SELECT * FROM books WHERE datepublication < '2015-01-01'