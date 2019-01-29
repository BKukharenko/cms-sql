/* Get list of users with all data connected to them */
SELECT * FROM `user` u
LEFT JOIN `user_data_first_name` ufn ON u.id = ufn.user_id
LEFT JOIN `user_data_phone` udp ON u.id = udp.user_id

/* Get list of users who has articles created after 2019-01-24T13:00:00+00:00 */
SELECT * FROM `user` u
LEFT JOIN `article` a ON u.id = a.author_id
WHERE a.created_at > '2019-01-24T13:00:00+00:00'

/* Get list of articles connected to not top level categories */
SELECT * FROM `article` a
LEFT JOIN `category` c ON a.category_id = c.id
WHERE (c.parent_id != 0)

/* Get list of users whose first name starts with letter 'V' */
SELECT * FROM `user` u
LEFT JOIN `user_data_first_name` ufn ON u.id = ufn.user_id
WHERE ufn.value LIKE 'V%'
