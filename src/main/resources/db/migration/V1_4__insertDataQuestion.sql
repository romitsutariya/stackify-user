-- Insert Dummy Data for Questions
INSERT INTO questions (userID, title, body, tags, score, creation_date) VALUES
(1, 'How to use Java Streams effectively?', 'I''m trying to understand how to use Java Streams properly. Can anyone provide some examples?', 'java, streams', 5, '2024-05-01 10:15:00'),
(2, 'Best practices for RESTful API design?', 'What are some best practices for designing RESTful APIs? Any recommendations or resources?', 'rest, api, design', 8, '2024-05-02 11:30:00'),
(3, 'How to optimize database queries?', 'I''m working on a project and need to optimize some database queries. Any tips or techniques?', 'database, optimization', 3, '2024-05-03 12:45:00'),
(4, 'Understanding OOP concepts in Python', 'Can someone explain the key object-oriented programming concepts in Python? I''m new to the language.', 'python, oop', 6, '2024-05-04 13:00:00'),
(5, 'React vs Angular: Which one to choose?', 'I''m planning to start a new project and can''t decide between React and Angular. Any insights?', 'react, angular', 10, '2024-05-05 14:15:00');

-- Insert Dummy Data for Answers
INSERT INTO answers (questionID, userID, body, score, creation_date) VALUES
(1, 6, 'Here''s an example of using Java Streams to filter a list of integers:', 3, '2024-05-01 10:30:00'),
(2, 7, 'Some best practices for RESTful API design include: using HTTP methods correctly, versioning your APIs, and implementing proper error handling.', 5, '2024-05-02 11:45:00'),
(3, 8, 'To optimize database queries, you can use techniques like indexing, denormalization, and query optimization.', 2, '2024-05-03 13:00:00'),
(4, 9, 'In Python, key OOP concepts include encapsulation, inheritance, polymorphism, and abstraction. Here''s a simple explanation of each...', 4, '2024-05-04 13:30:00'),
(5, 10, 'Choosing between React and Angular depends on factors like project requirements, developer familiarity, and community support.', 7, '2024-05-05 14:30:00');
