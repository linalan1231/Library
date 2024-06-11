# Library Management System

## Introduction
This project provides a database system solution for a College Library. The system is designed to handle the rental and return of books and electronic devices, ensuring efficient management and tracking of resources. The solution was built upon the conversion process, ERD (Entity Relationship Diagram), and Relational Models. Then, from Relational Models to Normalized models. The physical database system was built in Azure Database for PostgreSQL using SQL commands. The normalization process shows that the database system satisfies the first, second, and third normal forms, avoiding data anomalies and simplifying data management. 

## Requirements 
- Availability of individual books and devices 
- Lateness of return
- List of books and devices borrowed in a given time period 
- Books and devices that a certain librarian manages
- Price of books and devices 
- Publisher details
- Reservation cancellation status

## ERD using UML Notation
![ERD](https://github.com/linalan1231/Library/assets/70352593/e5b66acf-6b54-4ede-adcd-ad6e199de6f1)

## Relational Models 
- **Faculty**(`memberID`, `position`)
- **Students**(`memberID`, `year`)
- **Member**(`memberID`, `firstName`, `lastName`, `phone`, `address`)
- **Reservation**(`reservationID`, `memberID(fk)`, `dateReserved`, `dateRedeem`, `redeemed`)
- **Borrowing**(`borrowingID`, `memberID(fk)`, `dateBorrowed`, `dateDue`, `dateReturned`, `borrowKiosk`, `returnKiosk`)
- **IndividualDevice**(`deviceID`, `modelName(fk)`, `status`)
- **Device**(`modelName`, `maker`, `price`, `availability`)
- **Librarian**(`librarianID`, `firstName`, `lastName`, `phone`, `address`)
- **IndividualBook**(`bookID`, `bookTitle(fk)`, `edition`, `status`)
- **Book**(`bookTitle`, `author`, `publisherID(fk)`, `price`, `availability`)
- **Publisher**(`publisherID`, `publisherName`, `address`)
- **Borrowing_IndividualDevice**(`borrowingID(fk)`, `deviceID(fk)`, `dateBorrowed`, `dateDue`, `dateReturned`, `borrowKiosk`, `returnKiosk`, `modelName`, `status`)
- **Borrowing_IndividualBook**(`borrowingID(fk)`, `bookID(fk)`, `memberID`, `dateBorrowed`, `dateDue`, `dateReturned`, `borrowKiosk`, `returnKiosk`, `bookTitle`, `edition`, `status`)
- **IndividualDevice_Librarian**(`deviceID(fk)`, `librarianID(fk)`, `modelName`, `status`, `firstName`, `lastName`, `phone`, `address`)
- **IndividualBook_Librarian**(`bookID(fk)`, `librarianID(fk)`, `bookTitle`, `firstName`, `lastName`, `phone`, `address`, `edition`, `status`)
- **Reservation_Device**(`reservationID(fk)`, `modelName(fk)`, `memberID`, `dateReserved`, `dateRedeem`, `redeemed`, `maker`, `price`, `availability`)
- **Reservation_Book**(`reservationID(fk)`, `bookTitle(fk)`, `memberID`, `dateReserved`, `dateRedeem`, `redeemed`, `author`, `price`, `availability`)
