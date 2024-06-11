# Library Management System 

Introduction
This project provides a database system solution for a College Library. The system is designed to handle the rental and return of books and electronics devices, ensuring efficient management and tracking of resources. 
The solution was built upon the conversion process, ERD(Entity Relationship Diagram), and Relational Models. Then, again from Relational Models to Normalized models. The physical database system was built in Azure Database for PostgreSQL using SQL commands. The normalization process shows that the database system satisfies the first, second, and third normal forms, avoiding data anomalies and simplified data management. 

Requirements 
  *Availability of individual books and devices 
  *Lateness of return
  *List of books and devices borrowed in a given time period 
  *Book and devices that a certain librarian manages
  *Price of books and devices 
  *Publisher details
  *Reservation cancelation status

ERD using UML Notation
<img width="758" alt="Screenshot 2024-06-11 at 4 22 34 PM" src="https://github.com/linalan1231/Library/assets/70352593/e5b66acf-6b54-4ede-adcd-ad6e199de6f1">

Relational Models 
  Faculty(memberID, position)
  Students(memberID, year)
  Member(memberID, firstName, lastName, phone, address)
  Reservation(reservationID, memberID(fk), dateReserved, dateRedeem, redeemed)
  Borrowing(borrowingID, memberID(fk), dateBorrowed, dateDue, dateReturned, borrowKiosk, returnKiosk)
  IndividualDevice(deviceID, modelName(fk), status)
  Device(modelName, maker, price, availability)
  Librarian(librarianID, firstname, lastname, phone, address)
  IndividualBook(bookID, bookTitle,(fk), edition, status)
  Book(bookTitle, author, publisherID(fk), price, availability)
  Publisher(publisherID, publisherName, address)
  Borrowing_IndividualDevice(borrowingID(fk), deviceID(fk),  dateBorrowed, dateDue, dateReturned, borrowKiosk, returnKiosk, modelName, status)
  Borrowing_IndividualBook(borrowingID(fk), bookID(fk), memberID, dateBorrowed, dateDue, dateReturned, borrowKiosk, returnKiosk, bookTitle, edition, status) 
  IndividualDevice_Librarian(deviceID(fk), librarianID(fk), modelName, status, firstname, lastname, phone, address)
  IndividualBook_Librarian(bookID(fk), librarianID(fk), bookTitle, firstname, lastname, phone, address, edition, status)
  Reservation_Device(reservationID(fk), modelName(fk), memberID, dateReserved, dateRedeem, redeemed, maker, price, availability)
  Reservation_Book(reservationID(fk), bookTitle(fk), memberID, dateReserved, dateRedeem, redeemed, author, price, availability)

