
# insertion of data

INSERT INTO admin (username, password) VALUES
('khalid', 'admin123'),
('minhaj', 'admin456'),
('sharif', 'admin789');

INSERT INTO services (title, description, average_hourly_rate) VALUES
('Plumbing', 'Fixing pipes and fittings for residential and commercial properties', 60),
('Electrical', 'Installation and repair of electrical systems', 70),
('Cleaning', 'Professional cleaning services for homes and offices', 40),
('Landscaping', 'Design and maintenance of outdoor spaces', 50),
('Painting', 'Interior and exterior painting services', 80);

INSERT INTO provider (name, service_id, primary_contact_no, secondary_contact_no, password, status, rating, bio, longitude, latitude) VALUES
('John Smith Plumbing', 1, '12345678900', '98765432100', 'plumber123', 1, 4.5, 'Certified plumber with 10+ years of experience', -73.935242, 40.730610),
('Emma''s Electrical Services', 2, '23456789010', '87654321090', 'electrician456', 1, 4.2, 'Licensed electrician specializing in residential projects', -118.243683, 34.052235),
('Green Clean Solutions', 3, '34567890120', '76543210980', 'cleaner789', 1, 4.8, 'Eco-friendly cleaning company serving the local community', -0.1276, 51.5074),
('Nature''s Best Landscaping', 4, '45678901230', '65432109870', 'landscaper101', 1, 4.0, 'Creating beautiful outdoor spaces for over 15 years', -2.2426, 53.4808),
('Color Splash Painting', 5, '56789012340', '54321098760', 'painter202', 1, 4.3, 'Providing high-quality painting services with attention to detail', -118.3570, 34.0522);
INSERT INTO user (name, profile_image_path, primary_contact_no, secondary_contact_no, password, rating, longitude, latitude, bio, status) VALUES
('Alice Johnson', '/profile_images/alice.jpg', '78901234560', '21098765430', 'user123', 4.2, -87.6298, 41.8781, 'Homeowner looking for reliable service providers', 1),
('Michael Brown', '/profile_images/michael.jpg', '89012345670', '10987654320', 'user456', 3.8, -73.9866, 40.7306, 'Frequent user of home services with high standards', 1),
('Emily Davis', '/profile_images/emily.jpg', '90123456780', '98765432100', 'user789', 4.5, -0.1276, 51.5074, 'New user excited to explore various service options', 1),
('Daniel Martinez', '/profile_images/daniel.jpg', '12345678900', '87654321090', 'user101', 4.0, -2.2426, 53.4808, 'Gardening enthusiast seeking expert advice and assistance', 1),
('Sophia Wilson', '/profile_images/sophia.jpg', '23456789010', '76543210980', 'user202', 4.7, -118.2437, 34.0522, 'Busy professional looking for convenient home services', 1);

INSERT INTO booking (user_id, provider_id, status_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 2),
(5, 5, 1);

INSERT INTO review (booking_id, text_review, rating) VALUES
(1, 'Great service! John fixed the issue quickly.', 5),
(2, 'Emma was professional and efficient.', 4),
(3, 'The team from Green Clean did an amazing job.', 4),
(4, 'Very happy with the landscaping work.', 5),
(5, 'Color Splash Painting transformed my home!', 4);

INSERT INTO bid (booking_id, provider_id, bid_amount, date) VALUES
(1, 1, 70, '2024-05-12'),
(2, 2, 80, '2024-05-13'),
(3, 3, 60, '2024-05-14'),
(4, 4, 90, '2024-05-15'),
(5, 5, 75, '2024-05-16');

INSERT INTO  gallary (booking_id, photo_url) VALUES
(1, '/booking_photos/plumbing1.jpg'),
(2, '/booking_photos/electrical1.jpg'),
(3, '/booking_photos/cleaning1.jpg'),
(4, '/booking_photos/landscaping1.jpg'),
(5, '/booking_photos/painting1.jpg');

