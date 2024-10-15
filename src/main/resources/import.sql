INSERT INTO users (created_at, updated_at, id, email, first_name, last_name, password, phone, username)
VALUES ('2024-07-01 08:00:00+00', '2024-07-01 08:00:00+00', '123e4567-e89b-12d3-a456-426614174000',
        'john.doe@example.com', 'John', 'Doe', 'hashed_password_1', '555-0101', 'johnd'),
       ('2024-07-01 09:15:00+00', '2024-07-01 09:15:00+00', '223e4567-e89b-12d3-a456-426614174001',
        'jane.smith@example.com', 'Jane', 'Smith', 'hashed_password_2', '555-0102', 'janes'),
       ('2024-07-01 10:30:00+00', '2024-07-01 10:30:00+00', '323e4567-e89b-12d3-a456-426614174002',
        'bob.johnson@example.com', 'Bob', 'Johnson', 'hashed_password_3', '555-0103', 'bobj'),
       ('2024-07-01 11:45:00+00', '2024-07-01 11:45:00+00', '423e4567-e89b-12d3-a456-426614174003',
        'alice.williams@example.com', 'Alice', 'Williams', 'hashed_password_4', '555-0104', 'alicew'),
       ('2024-07-01 13:00:00+00', '2024-07-01 13:00:00+00', '523e4567-e89b-12d3-a456-426614174004',
        'charlie.brown@example.com', 'Charlie', 'Brown', 'hashed_password_5', '555-0105', 'charlieb'),
       ('2024-07-01 14:15:00+00', '2024-07-01 14:15:00+00', '623e4567-e89b-12d3-a456-426614174005',
        'diana.clark@example.com', 'Diana', 'Clark', 'hashed_password_6', '555-0106', 'dianac'),
       ('2024-07-01 15:30:00+00', '2024-07-01 15:30:00+00', '723e4567-e89b-12d3-a456-426614174006',
        'edward.taylor@example.com', 'Edward', 'Taylor', 'hashed_password_7', '555-0107', 'edwardt'),
       ('2024-07-01 16:45:00+00', '2024-07-01 16:45:00+00', '823e4567-e89b-12d3-a456-426614174007',
        'fiona.anderson@example.com', 'Fiona', 'Anderson', 'hashed_password_8', '555-0108', 'fionaa'),
       ('2024-07-01 18:00:00+00', '2024-07-01 18:00:00+00', '923e4567-e89b-12d3-a456-426614174008',
        'george.wilson@example.com', 'George', 'Wilson', 'hashed_password_9', '555-0109', 'georgew'),
       ('2024-07-01 19:15:00+00', '2024-07-01 19:15:00+00', 'a23e4567-e89b-12d3-a456-426614174009',
        'hannah.moore@example.com', 'Hannah', 'Moore', 'hashed_password_10', '555-0110', 'hannahm'),
       ('2024-07-02 08:00:00+00', '2024-07-02 08:00:00+00', 'b23e4567-e89b-12d3-a456-426614174010',
        'ian.baker@example.com', 'Ian', 'Baker', 'hashed_password_11', '555-0111', 'ianb'),
       ('2024-07-02 09:15:00+00', '2024-07-02 09:15:00+00', 'c23e4567-e89b-12d3-a456-426614174011',
        'julia.cook@example.com', 'Julia', 'Cook', 'hashed_password_12', '555-0112', 'juliac'),
       ('2024-07-02 10:30:00+00', '2024-07-02 10:30:00+00', 'd23e4567-e89b-12d3-a456-426614174012',
        'kevin.hill@example.com', 'Kevin', 'Hill', 'hashed_password_13', '555-0113', 'kevinh'),
       ('2024-07-02 11:45:00+00', '2024-07-02 11:45:00+00', 'e23e4567-e89b-12d3-a456-426614174013',
        'laura.young@example.com', 'Laura', 'Young', 'hashed_password_14', '555-0114', 'lauray'),
       ('2024-07-02 13:00:00+00', '2024-07-02 13:00:00+00', 'f23e4567-e89b-12d3-a456-426614174014',
        'michael.evans@example.com', 'Michael', 'Evans', 'hashed_password_15', '555-0115', 'michaele'),
       ('2024-07-02 14:15:00+00', '2024-07-02 14:15:00+00', '033e4567-e89b-12d3-a456-426614174015',
        'natalie.king@example.com', 'Natalie', 'King', 'hashed_password_16', '555-0116', 'nataliek'),
       ('2024-07-02 15:30:00+00', '2024-07-02 15:30:00+00', '133e4567-e89b-12d3-a456-426614174016',
        'oliver.wright@example.com', 'Oliver', 'Wright', 'hashed_password_17', '555-0117', 'oliverw'),
       ('2024-07-02 16:45:00+00', '2024-07-02 16:45:00+00', '233e4567-e89b-12d3-a456-426614174017',
        'patricia.scott@example.com', 'Patricia', 'Scott', 'hashed_password_18', '555-0118', 'patricias'),
       ('2024-07-02 18:00:00+00', '2024-07-02 18:00:00+00', '333e4567-e89b-12d3-a456-426614174018',
        'quentin.adams@example.com', 'Quentin', 'Adams', 'hashed_password_19', '555-0119', 'quentina'),
       ('2024-07-02 19:15:00+00', '2024-07-02 19:15:00+00', '433e4567-e89b-12d3-a456-426614174019',
        'rachel.green@example.com', 'Rachel', 'Green', 'hashed_password_20', '555-0120', 'rachelg');

INSERT INTO orders (amount, created_at, order_items, id, user_id)
VALUES (199.99, '2024-07-01 10:00:00+00', 3, '533e4567-e89b-12d3-a456-426614174020',
        '123e4567-e89b-12d3-a456-426614174000'),
       (59.99, '2024-07-01 11:30:00+00', 1, '633e4567-e89b-12d3-a456-426614174021',
        '223e4567-e89b-12d3-a456-426614174001'),
       (149.95, '2024-07-01 13:00:00+00', 2, '733e4567-e89b-12d3-a456-426614174022',
        '323e4567-e89b-12d3-a456-426614174002'),
       (299.99, '2024-07-01 14:30:00+00', 4, '833e4567-e89b-12d3-a456-426614174023',
        '423e4567-e89b-12d3-a456-426614174003'),
       (79.99, '2024-07-01 16:00:00+00', 1, '933e4567-e89b-12d3-a456-426614174024',
        '523e4567-e89b-12d3-a456-426614174004'),
       (249.95, '2024-07-01 17:30:00+00', 3, 'a33e4567-e89b-12d3-a456-426614174025',
        '623e4567-e89b-12d3-a456-426614174005'),
       (129.99, '2024-07-01 19:00:00+00', 2, 'b33e4567-e89b-12d3-a456-426614174026',
        '723e4567-e89b-12d3-a456-426614174006'),
       (399.99, '2024-07-02 09:00:00+00', 15, 'c33e4567-e89b-12d3-a456-426614174027',
        '823e4567-e89b-12d3-a456-426614174007'),
       (89.99, '2024-07-02 10:30:00+00', 1, 'd33e4567-e89b-12d3-a456-426614174028',
        '923e4567-e89b-12d3-a456-426614174008'),
       (179.95, '2024-07-02 12:00:00+00', 2, 'e33e4567-e89b-12d3-a456-426614174029',
        'a23e4567-e89b-12d3-a456-426614174009'),
       (349.99, '2024-07-02 13:30:00+00', 4, 'f33e4567-e89b-12d3-a456-426614174030',
        'b23e4567-e89b-12d3-a456-426614174010'),
       (99.99, '2024-07-02 15:00:00+00', 1, '043e4567-e89b-12d3-a456-426614174031',
        'c23e4567-e89b-12d3-a456-426614174011'),
       (279.95, '2024-07-02 16:30:00+00', 3, '143e4567-e89b-12d3-a456-426614174032',
        'd23e4567-e89b-12d3-a456-426614174012'),
       (159.99, '2024-07-02 18:00:00+00', 2, '243e4567-e89b-12d3-a456-426614174033',
        'e23e4567-e89b-12d3-a456-426614174013'),
       (449.99, '2024-07-03 09:00:00+00', 25, '343e4567-e89b-12d3-a456-426614174034',
        'f23e4567-e89b-12d3-a456-426614174014'),
       (109.99, '2024-07-03 10:30:00+00', 1, '443e4567-e89b-12d3-a456-426614174035',
        '033e4567-e89b-12d3-a456-426614174015'),
       (219.95, '2024-07-03 12:00:00+00', 2, '543e4567-e89b-12d3-a456-426614174036',
        '133e4567-e89b-12d3-a456-426614174016'),
       (389.99, '2024-07-03 13:30:00+00', 4, '643e4567-e89b-12d3-a456-426614174037',
        '233e4567-e89b-12d3-a456-426614174017'),
       (129.99, '2024-07-03 15:00:00+00', 1, '743e4567-e89b-12d3-a456-426614174038',
        '333e4567-e89b-12d3-a456-426614174018'),
       (299.95, '2024-07-03 16:30:00+00', 3, '843e4567-e89b-12d3-a456-426614174039',
        '433e4567-e89b-12d3-a456-426614174019');
