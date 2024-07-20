select p.firstName,
    p.lastName,
    asd.city,
    asd.state
from Person as p
    left join Address as asd on p.PersonId = asd.personId