# Service Provider Connect

Service Provider Connect is a web application designed to provide an easy and convenient way for users to hire service providers for their emergency needs. This platform allows users to find their desired service provider based on various parameters and orders, including location, provider type, name, and rating. Our focus extends beyond mere service hiring; we prioritize building trust and transparency through a robust rating and review system for both providers and users. This system empowers users to share their experiences, enabling others to make informed decisions when selecting a service provider.

## Table of Contents
- [Features](#features)
- [Database Design](#database-design)
- [ER Diagram](#er-diagram)
- [Database Schema](#database-schema)
- [Conclusion](#conclusion)

## Features
- **User-Friendly Search**: Easily search for service providers by location, type, name, and rating.
- **Dynamic Bidding System**: Service providers can bid on service requests posted by users.
- **Robust Rating and Review System**: Both users and service providers can rate and review each other, fostering a community of trust and accountability.
- **Comprehensive Booking Management**: Track and manage bookings and bids efficiently.


## Database Design
The database schema is designed to handle the dynamic and iterative process of service requests, bidding, and booking, while maintaining data integrity. Below are the core tables and their relationships:

### Entities
- **Users**: Stores user information.
- **Providers**: Stores service provider information.
- **Requests**: Stores service requests made by users.
- **Bids**: Stores bids made by providers for service requests.
- **Bookings**: Stores confirmed bookings.
- **Reviews**: Stores ratings and reviews for users and providers.

### Relationships
- Each **Request** can have multiple **Bids**.
- Each **Bid** is linked to a specific **Provider** and **Request**.
- Each **Booking** references one **Bid**.
- Each **Review** is linked to either a **User** or **Provider**.

###  ER Diagram

![ER Diagram](sevice_provider_project_er_diagram)

###  Database Schema 

![Database Schema](schema_diagram)

# Conclusion

The Service Provider Connect project provided us with valuable experience in creating ER diagrams, designing database schemas, and writing comprehensive SQL code. We learned to identify and define relationships between entities, structure tables effectively, and ensure data integrity through constraints and foreign keys. Additionally, we gained practical skills in writing SQL queries, triggers, procedures, and functions, enhancing our overall understanding of database design and management. This project has equipped us with the necessary skills to develop robust and efficient database systems for real-world applications.

