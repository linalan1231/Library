CREATE TABLE member(
memberID VARCHAR(8) NOT NULL,
firstName VARCHAR(20) NOT NULL,
lastName VARCHAR(20) NOT NULL,
phone  VARCHAR(15) NOT NULL,
address VARCHAR(50) NOT NULL
);
ALTER TABLE member
ADD CONSTRAINT PK_member PRIMARY KEY(memberID);


CREATE TABLE reservation(
reservationID VARCHAR(10) NOT NULL,
memberID VARCHAR(8) NOT NULL,
dateReserved DATE NOT NULL,

dateRedeem DATE NOT NULL,
Redeemed YESNO
);
ALTER TABLE reservation
ADD CONSTRAINT PK_reservation PRIMARY KEY(reservationID);

ALTER TABLE reservation
ADD CONSTRAINT FK_memberReservation
FOREIGN KEY(memberID) REFERENCES member(memberID);


CREATE TABLE borrowing(
borrowingID VARCHAR(12) NOT NULL,
memberID VARCHAR(8) NOT NULL,
dateBorrowed DATE NOT NULL,
dateDue DATE NOT NULL,
dateReturned DATE,
borrowKiosk VARCHAR(10) NOT NULL,
returnKiosk VARCHAR(10)
);


ALTER TABLE borrowing
ADD CONSTRAINT PK_borrowing PRIMARY KEY(borrowingID);

ALTER TABLE borrowing
ADD CONSTRAINT FK_membe​​rBorrowing
FOREIGN KEY(memberID) REFERENCES member(memberID);


CREATE TABLE device(
modelName VARCHAR(20) NOT NULL,
maker VARCHAR(15) NOT NULL,
price FLOAT NOT NULL
);
ALTER TABLE device
ADD CONSTRAINT PK_device PRIMARY KEY(modelName);


CREATE TABLE individualDevice(
deviceID VARCHAR(10) NOT NULL,
modelName VARCHAR(20) NOT NULL,
status VARCHAR(20) NOT NULL
);

ALTER TABLE individualDevice
ADD CONSTRAINT PK_individualDevice PRIMARY KEY(deviceID);

ALTER TABLE individualDevice
ADD CONSTRAINT FK_deviceIndividual
FOREIGN KEY(modelName) REFERENCES device(modelName);


CREATE TABLE librarian(
librarianID VARCHAR(4) NOT NULL,
firstName VARCHAR(20) NOT NULL,
lastName VARCHAR(20) NOT NULL,
phone  VARCHAR(15) NOT NULL,
address VARCHAR(50)
);

ALTER TABLE librarian
ADD CONSTRAINT PK_librarian PRIMARY KEY(librarianID);


CREATE TABLE publisher(
publisherID VARCHAR(6) NOT NULL,
publisherName VARCHAR(40) NOT NULL,
Address VARCHAR(50)
);

ALTER TABLE publisher
ADD CONSTRAINT PK_publisher PRIMARY KEY(publisherID);


CREATE TABLE book(
bookTitle VARCHAR(50) NOT NULL,
publisherID VARCHAR (6) NOT NULL,
author VARCHAR(100) NOT NULL,
price FLOAT NOT NULL
);

ALTER TABLE book
ADD CONSTRAINT PK_book PRIMARY KEY(bookTitle);

ALTER TABLE book
ADD CONSTRAINT FK_publisherBook
FOREIGN KEY (publisherID) REFERENCES publisher(publisherID);


CREATE TABLE individualBook(
bookID VARCHAR(12) NOT NULL,
bookTitle VARCHAR(50) NOT NULL,
Edition VARCHAR(5) NOT NULL,
Status VARCHAR(20) NOT NULL
);

ALTER TABLE individualBook
ADD CONSTRAINT PK_individualBook PRIMARY KEY(bookID );

ALTER TABLE individualBook
ADD CONSTRAINT FK_individualBook
FOREIGN KEY (bookTitle) REFERENCES book(bookTitle);



CREATE TABLE borrowing_IndividualDevice (
	borrowingID VARCHAR(12) NOT NULL,
	deviceID VARCHAR(10) NOT NULL
);

ALTER TABLE borrowing_IndividualDevice 
ADD CONSTRAINT PK_borrowing_IndividualDevice PRIMARY KEY(borrowingID , deviceID);

ALTER TABLE borrowing_IndividualDevice 
ADD CONSTRAINT FK_borrowing
FOREIGN KEY(borrowingID) REFERENCES borrowing(borrowingID);

ALTER TABLE borrowing_IndividualDevice 
ADD CONSTRAINT FK_IndividualDevice
FOREIGN KEY(deviceID) REFERENCES IndividualDevice(deviceID);



CREATE TABLE Borrowing_IndividualBook(
	borrowingID VARCHAR(12) NOT NULL,
	bookID VARCHAR(12) NOT NULL
);

ALTER TABLE Borrowing_IndividualBook
ADD CONSTRAINT PK_Borrowing_IndividualBook PRIMARY KEY(borrowingID, bookID);

ALTER TABLE Borrowing_IndividualBook
ADD CONSTRAINT FK_borrowingBorrowing_IndividualBook
FOREIGN KEY(borrowingID) REFERENCES borrowing(borrowingID);

ALTER TABLE Borrowing_IndividualBook
ADD CONSTRAINT FK_IndividualDeviceBorrowing_IndividualBook
FOREIGN KEY(bookID) REFERENCES individualBook(bookID);


CREATE TABLE IndividualDevice_Librarian( 
	deviceID VARCHAR(10) NOT NULL,
	librarianID VARCHAR(4) NOT NULL
);

ALTER TABLE IndividualDevice_Librarian
ADD CONSTRAINT PK_IndividualDevice_Librarian PRIMARY KEY(deviceID, librarianID);

ALTER TABLE IndividualDevice_Librarian
ADD CONSTRAINT FK_deviceIndividualDevice_Librarian
FOREIGN KEY(deviceID) REFERENCES IndividualDevice(deviceID);

ALTER TABLE IndividualDevice_Librarian
ADD CONSTRAINT FK_librarianIndividualDevice_Librarian
FOREIGN KEY(librarianID) REFERENCES librarian(librarianID);


CREATE TABLE IndividualBook_Librarian(
	bookID VARCHAR(12) NOT NULL,
	LibrarianID VARCHAR(4) NOT NULL
);    

ALTER TABLE IndividualBook_Librarian
ADD CONSTRAINT PK_IndividualBook_Librarian PRIMARY KEY(bookID, LibrarianID)

ALTER TABLE IndividualBook_Librarian
ADD CONSTRAINT FK_bookIndividualBook_Librarian
FOREIGN KEY(bookID) REFERENCES IndividualBook(bookID)

ALTER TABLE IndividualBook_Librarian
ADD CONSTRAINT FK_librarianIndividualBook_Librarian
FOREIGN KEY(librarianID) REFERENCES librarian(librarianID)


CREATE TABLE Reservation_Device(
	reservationID VARCHAR(10) NOT NULL,
	modelName VARCHAR(20) NOT NULL,
);

ALTER TABLE Reservation_Device
ADD CONSTRAINT PK_Reservation_Device PRIMARY KEY(reservationID, modelName)

ALTER TABLE Reservation_Device
ADD CONSTRAINT FK_deviceReservation_Device
FOREIGN KEY(modelName) REFERENCES device(modelName)

ALTER TABLE Reservation_Device
ADD CONSTRAINT FK_reservationReservation_Device
FOREIGN KEY(reservationID) REFERENCES reservation(reservationID)


CREATE TABLE Reservation_Book(
	reservationID VARCHAR(10) NOT NULL,
	bookTitle VARCH1AR(50) NOT NULL
);

ALTER TABLE Reservation_Book
ADD CONSTRAINT PK_Reservation_Book PRIMARY KEY(reservationID, bookTitle)

ALTER TABLE Reservation_Book
ADD CONSTRAINT FK_bookReservation_Book
FOREIGN KEY(bookTitle) REFERENCES Book(bookTitle)

ALTER TABLE Reservation_Book
ADD CONSTRAINT FK_reservationReservation_Book
FOREIGN KEY(reservationID) REFERENCES reservation(reservationID)
