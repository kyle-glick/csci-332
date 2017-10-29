CREATE VIEW TicketInformation AS
SELECT ticks.id AS ticket_id, ticks.account_id, ticks.purchase_date, shows.show_time, shows.price, thetrs.number as theater_number, cins.name as cinema_name, FullAddress(adds.id) AS address, movs.title AS movie_title, movs.genre, movs.run_time
FROM Tickets ticks
INNER JOIN Showings shows
ON ticks.showing_id = shows.id
INNER JOIN Theaters thetrs
ON shows.theater_id = thetrs.id
INNER JOIN Cinemas cins
ON thetrs.cinema_id = cins.id
INNER JOIN Addresses adds
ON cins.address_id = adds.id
INNER JOIN Movies movs
ON shows.movie_id = movs.id