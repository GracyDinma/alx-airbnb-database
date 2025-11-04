** Writing a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.

SELECT *
FROM Booking
INNER JOIN User
ON Booking.user_id = User.user_id;

## Writing a query using a LEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews

SELECT *
FROM Property
LEFT JOIN Review
ON Review.property_id = Property.property_id
ORDER BY Property.property_id;

## Write a query using FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not to a user.

SELECT *
FROM User
FULL OUTER JOIN Booking
ON Booking.user_id = User.user_id;
