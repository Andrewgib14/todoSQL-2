INSERT INTO todos
    (title, details, priority, created_at, completed_at)
values
    ('shop', 'need pants and socks', 3, '2017-08-12 05:57:12', '2017-09-15 06:12:12'),
    ('sleep', 'go to bed early', 1, '2017-08-20 19:57:12', null),
    ('clean house', 'clean windows and mirrors', 4, '2017-05-16 05:57:12', '2017-05-19 05:57:12'),
    ('call friend', 'Beth ask to visit in October', 2, '2017-08-25 05:57:12', null),
    ('exercise', 'weights', 5, '2017-08-14 05:57:12', '2017-08-24 05:57:12'),
    ('eat', 'fruit', 3, '2017-08-06 05:57:12', '2017-08-07 06:12:12'),
    ('study javascript', 'learn functions', 1, '2017-08-27 19:57:12', null),
    ('study sql', 'practice joining tables', 4, '2017-07-16 05:57:12', '2017-08-19 05:57:12'),
    ('call sister', 'Ask about dinner', 2, '2017-08-21 05:57:12', null),
    ('read', 'a book', 5, '2017-08-13 05:57:12', '2017-08-20 05:57:12'),
    ('drink', '64 ounces of water', 3, '2017-08-12 05:57:12', '2017-08-15 06:12:12'),
    ('go to concert', 'Pearl Jam', 1, '2017-08-20 19:57:12', null),
    ('buy tickets to show', 'AMC movie theater', 4, '2017-04-16 05:57:12', '2017-04-19 05:57:12'),
    ('write a book', 'get details from Beth', 2, '2017-08-28 05:57:12', null),
    ('read email', 'respond to aunt', 5, '2017-03-14 05:57:12', '2017-03-24 05:57:12'),
    ('golf', 'bring golf clubs', 3, '2017-05-12 05:57:12', '2017-05-15 06:12:12'),
    ('jump rope', 'get ropes from school', 1, '2017-06-20 19:57:12', null),
    ('take pictures of family', 'near the lake', 4, '2017-07-23 05:57:12', '2017-07-24 05:57:12'),
    ('watch tv', 'HGTV', 2, '2017-08-26 07:57:12', null),
    ('sell furniture', 'post on craigslist', 5, '2017-08-01 05:57:12', '2017-08-05 05:57:12');
SELECT *
FROM todos
WHERE completed_at IS NULL AND priority > 3;
SELECT priority, count(priority)
FROM todos
GROUP BY priority
ORDER BY priority ASC;
SELECT priority, count(priority), created_at
FROM todos
WHERE created_at >= '2017-07-30 0:00:00'
GROUP BY priority, created_at
ORDER BY priority ASC;
SELECT *
FROM todos
WHERE priority = 1 AND created_at = (SELECT MIN(created_at)
    FROM todos
    WHERE priority = 1);

