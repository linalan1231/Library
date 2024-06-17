# Library Management System

## Introduction
This project provides a database system solution for a College Library. The system is designed to handle the rental and return of books and electronic devices, ensuring efficient management and tracking of resources. The solution was built upon the conversion process, ERD (Entity Relationship Diagram), and Relational Models. Then, from Relational Models to Normalized models. Applications such as Microsoft Access, DB Schema, were used to create the physical database system as well as manage the database. The normalization process shows that the database system satisfies the first, second, and third normal forms, avoiding data anomalies and simplifying data management. 

## Requirements 
- Availability of individual books and devices 
- Lateness of return
- List of books and devices borrowed in a given time period 
- Books and devices that a certain librarian manages
- Price of books and devices 
- Publisher details
- Reservation cancellation status

## ERD using UML Notation
<img width="1140" alt="Screenshot 2024-06-17 at 12 41 19 PM" src="https://github.com/linalan1231/Library/assets/70352593/0d66b7b3-31c1-4177-824d-7152d931060b">

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
