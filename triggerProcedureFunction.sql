# Trigger for updating rating of provider

DELIMITER //

CREATE TRIGGER UpdateProviderRating
AFTER INSERT ON review
FOR EACH ROW
BEGIN
    DECLARE new_rating DECIMAL(4, 2);

    -- Retrieve the provider id associated with the inserted review
    DECLARE provider_id_var INT;
    SELECT provider_id INTO provider_id_var FROM booking WHERE booking_id = NEW.booking_id;

    -- Calculate the new rating
    SET new_rating = (NEW.rating + (SELECT rating FROM provider WHERE provider_id = provider_id_var)) / 2;

    -- Update the provider's rating
    UPDATE provider
    SET rating = new_rating
    WHERE provider_id = provider_id_var;
END//

DELIMITER ;


# procedure for finding all the bookings of a corresponding

DELIMITER //

CREATE PROCEDURE GetUserBookings(IN input_user_id INT)
BEGIN
    SELECT * FROM booking WHERE user_id = input_user_id;
END//

DELIMITER ;

# CALL GetUserBookings(5);

# function that return average acceptance rate of bids

DELIMITER //

CREATE FUNCTION GetAverageAcceptanceRate()
RETURNS DECIMAL(5, 2)
DETERMINISTIC
BEGIN
    DECLARE total_bids INT;
    DECLARE accepted_bids INT;
    DECLARE avg_acceptance_rate DECIMAL(5, 2);

    -- Get total number of bids
    SELECT COUNT(*) INTO total_bids FROM bid;

    -- Get number of accepted bids
    SELECT COUNT(*) INTO accepted_bids FROM bid WHERE acceptance_status = 1;

    -- Calculate average acceptance rate
    IF total_bids = 0 THEN
        SET avg_acceptance_rate = 0;
    ELSE
        SET avg_acceptance_rate = (accepted_bids / total_bids) * 100;
    END IF;

    RETURN avg_acceptance_rate;
END//

DELIMITER ;

# SELECT GetAverageAcceptanceRate() AS average_acceptance_rate;
