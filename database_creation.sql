create database serviceProviderConnect;

use serviceProviderConnect;

#drop database serviceProviderConnect;

create table admin(
    admin_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) not null,
    password VARCHAR(30) not null
);

create table services(
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30),
    description VARCHAR(250),
    average_hourly_rate INT
);

create table provider(
    provider_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) not null,
    service_id INT not null,
    foreign key(service_id) references services(service_id),
    primary_contact_no VARCHAR(11) UNIQUE,
    secondary_contact_no VARCHAR(11) UNIQUE,
    password VARCHAR(15) not null,
    status BOOLEAN default true,
    rating DECIMAL(4, 2),
    bio VARCHAR(250),
    longitude DECIMAL(11, 8),
    latitude DECIMAL(10, 8)
);

create table user(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) not null,
    profile_image_path varchar(1024),
    primary_contact_no VARCHAR(11) UNIQUE,
    secondary_contact_no VARCHAR(11),
    password VARCHAR(15) not null,
    rating DECIMAL(4, 2),
    longitude DECIMAL(11, 8),
    latitude DECIMAL(10, 8),
    bio VARCHAR(200),
    status BOOLEAN
);

# alter table provider drop index secondary_contact_no;
# alter table user
# modify primary_contact_no varchar(11) not null;

CREATE TABLE Status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(50) NOT NULL
);

INSERT INTO Status (status_name) VALUES
('Pending'),
('Confirmed'),
('Cancelled');



CREATE TABLE booking (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    provider_id INT,
    status_id INT,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (provider_id) REFERENCES provider(provider_id),
    FOREIGN KEY (status_id) REFERENCES Status(status_id)
);


create table review(
    booking_id INT,
    FOREIGN KEY(booking_id) references booking(booking_id),
    text_review VARCHAR(200),
    rating INT not null
);

CREATE TABLE bid (
    bid_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    provider_id INT,
    FOREIGN KEY (booking_id) REFERENCES booking(booking_id),
    FOREIGN KEY (provider_id) REFERENCES provider(provider_id),
    bid_amount INT NOT NULL,
    acceptance_status BOOLEAN DEFAULT FALSE, -- New column to track bid acceptance
    date DATE
);


create table gallary(
    booking_id INT,
    foreign key(booking_id) references booking(booking_id),
    photo_url VARCHAR(1024) not null
);

