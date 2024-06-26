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

## Relational Models
- Faculty(memberID, position)
- Students(memberID, year)
- Member(memberID, firstName, lastName, phone, address)
- Reservation(reservationID, memberID(fk), dateReserved, dateRedeem, redeemed)
- Borrowing(borrowingID, memberID(fk), dateBorrowed, dateDue, dateReturned, borrowKiosk, returnKiosk)
- IndividualDevice(deviceID, modelName(fk), status)
- Device(modelName, maker, price, availability)
- Librarian(librarianID, firstname, lastname, phone, address)
- IndividualBook(bookID, bookTitle,(fk), edition, status)
- Book(bookTitle, author, publisherID(fk), price, availability)
- Publisher(publisherID, publisherName, address)
- Borrowing_IndividualDevice(borrowingID(fk), deviceID(fk),  dateBorrowed, dateDue, dateReturned, borrowKiosk, returnKiosk, modelName, status)
- Borrowing_IndividualBook(borrowingID(fk), bookID(fk), memberID, dateBorrowed, dateDue, dateReturned, borrowKiosk, returnKiosk, bookTitle, edition, status) 
- IndividualDevice_Librarian(deviceID(fk), librarianID(fk), modelName, status, firstname, lastname, phone, address)
- IndividualBook_Librarian(bookID(fk), librarianID(fk), bookTitle, firstname, lastname, phone, address, edition, status)
- Reservation_Device(reservationID(fk), modelName(fk), memberID, dateReserved, dateRedeem, redeemed, maker, price, availability)
- Reservation_Book(reservationID(fk), bookTitle(fk), memberID, dateReserved, dateRedeem, redeemed, author, price, availability)

## Normalization process 
To view the normalizaiton process please click on the following [link](https://docs.google.com/document/d/1qNn-ezOscPhXTCPTxsCDHZOlyxFJ7y-WYI4Td_BJdP8/edit?usp=sharing)

## Relationship Sentences
- One Member may be one Student
- One Student may be one Member
- One Member may be one Faculty
- One Faculty may be one Member
- One Member may have one or many Borrowings.
- One Borrowing must have only one Member
- One Member may have one or many Reservations.
- One Reservation must have only one Member
- One Borrowing may include many IndividualDevice
- One individualDevice may be included by many Borrowing.
- One Borrowing may include one or many IndividualBooks
- One IndividualBook may be included by many Borrowing.
- One Reservation may have one or many Devices.
- One Device may be included by one or many Reservations.
- One Reservation may have one or many Books.
- One Book may be included by one or many Reservations.
- One Device must have one or many IndividualDevices
- One IndividualDevice must have only one Device
- One Book must have one or many IndividualBooks
- One IndividualBooks must have only one Book
- One Librarian must manage one or many IndividualBooks
- One IndividualBook must be managed by one or many Librarians
- One Librarian must manage one or many IndividualDevices
- One IndividualDevice must be managed by one or many Librarians
- One Book must be published by Publisher
- One Publisher must publish one or many Books

## ERD using UML Notation
<img width="914" alt="Screenshot 2024-06-17 at 12 44 12 PM" src="https://github.com/linalan1231/Library/assets/70352593/a715f633-b311-4840-a974-56346c5a912f">

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

## Database Application 
To view an sample of the database application please click on the [link](https://docs.google.com/document/d/1PAoRvmLOBDyAuRQuYiFCg5Dwm8mqn03mPnCfEqxlACg/edit?usp=sharing)
