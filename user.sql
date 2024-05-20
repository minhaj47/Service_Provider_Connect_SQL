-- Create the first user 'amjonota'@'%' with read access to all tables
CREATE USER 'amjonota'@'%' IDENTIFIED BY '12345678';
GRANT SELECT ON serviceProviderConnect.* TO 'amjonota'@'%';

-- Create the second user 'sir'@'10.100.32.71' with full access to all tables
CREATE USER 'sir'@'10.100.32.71' IDENTIFIED BY 'iamsir';
GRANT SELECT, INSERT, UPDATE, DELETE ON serviceProviderConnect.* TO 'sir'@'10.100.32.71';
