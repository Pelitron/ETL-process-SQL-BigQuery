-- Insert sample students
insert into
  students (
    full_name,
    birth_date,
    gender,
    address,
    phone,
    email,
    identification_number,
    consent_data_use,
    terms_accepted
  )
values
  (
    'Juan Pérez',
    '1995-04-23',
    'M',
    'Calle Falsa 123, Ciudad',
    '555-1234',
    'juan.perez@example.com',
    '12345678A',
    true,
    true
  ),
  (
    'María López',
    '1998-07-15',
    'F',
    'Avenida Siempre Viva 742, Ciudad',
    '555-5678',
    'maria.lopez@example.com',
    '87654321B',
    true,
    true
  ),
  (
    'Carlos García',
    '1992-11-30',
    'M',
    'Calle Luna 456, Ciudad',
    '555-8765',
    'carlos.garcia@example.com',
    '11223344C',
    true,
    true
  ),
  (
    'Ana Torres',
    '1997-02-18',
    'F',
    'Calle Sol 789, Ciudad',
    '555-4321',
    'ana.torres@example.com',
    '44332211D',
    true,
    true
  ),
  (
    'Luis Fernández',
    '1994-09-05',
    'M',
    'Calle Estrella 101, Ciudad',
    '555-6789',
    'luis.fernandez@example.com',
    '55667788E',
    true,
    true
  ),
  (
    'Laura Martínez',
    '1996-12-12',
    'F',
    'Calle Cometa 202, Ciudad',
    '555-9876',
    'laura.martinez@example.com',
    '66778899F',
    true,
    true
  ),
  (
    'Jorge Ramírez',
    '1993-06-25',
    'M',
    'Calle Meteorito 303, Ciudad',
    '555-3456',
    'jorge.ramirez@example.com',
    '77889900G',
    true,
    true
  ),
  (
    'Sofía González',
    '1999-01-10',
    'F',
    'Calle Asteroide 404, Ciudad',
    '555-6543',
    'sofia.gonzalez@example.com',
    '88990011H',
    true,
    true
  ),
  (
    'Miguel Sánchez',
    '1991-08-20',
    'M',
    'Calle Planeta 505, Ciudad',
    '555-7890',
    'miguel.sanchez@example.com',
    '99001122I',
    true,
    true
  ),
  (
    'Elena Ruiz',
    '1995-03-14',
    'F',
    'Calle Galaxia 606, Ciudad',
    '555-0123',
    'elena.ruiz@example.com',
    '00112233J',
    true,
    true
  );

-- Insert sample courses
insert into
  courses (name, start_date, end_date, status)
values
  (
    'Full Stack Development',
    '2023-01-10',
    '2023-06-10',
    'active'
  ),
  (
    'Data Science Bootcamp',
    '2023-02-15',
    '2023-07-15',
    'active'
  ),
  (
    'Cybersecurity Essentials',
    '2023-03-01',
    '2023-08-01',
    'active'
  );

-- Insert sample enrollments
insert into
  enrollments (
    student_id,
    course_id,
    enrollment_date,
    expected_completion_date
  )
values
  (1, 1, '2023-01-10', '2023-06-10'),
  (2, 2, '2023-02-15', '2023-07-15'),
  (3, 3, '2023-03-01', '2023-08-01'),
  (4, 1, '2023-01-10', '2023-06-10'),
  (5, 2, '2023-02-15', '2023-07-15'),
  (6, 3, '2023-03-01', '2023-08-01'),
  (7, 1, '2023-01-10', '2023-06-10'),
  (8, 2, '2023-02-15', '2023-07-15'),
  (9, 3, '2023-03-01', '2023-08-01'),
  (10, 1, '2023-01-10', '2023-06-10');

-- Insert sample grades
insert into
  grades (enrollment_id, grade, evaluation_date)
values
  (1, 85, '2023-03-15'),
  (2, 90, '2023-04-20'),
  (3, 78, '2023-05-25'),
  (4, 88, '2023-03-15'),
  (5, 92, '2023-04-20'),
  (6, 80, '2023-05-25'),
  (7, 87, '2023-03-15'),
  (8, 91, '2023-04-20'),
  (9, 79, '2023-05-25'),
  (10, 86, '2023-03-15');

-- Insert sample projects
insert into
  projects (
    enrollment_id,
    project_name,
    submission_date,
    grade
  )
values
  (1, 'Web Application', '2023-04-01', 90),
  (2, 'Data Analysis', '2023-05-01', 95),
  (3, 'Security Audit', '2023-06-01', 85),
  (4, 'E-commerce Site', '2023-04-01', 88),
  (5, 'Machine Learning Model', '2023-05-01', 93),
  (6, 'Network Security Plan', '2023-06-01', 82),
  (7, 'Portfolio Website', '2023-04-01', 89),
  (8, 'Data Visualization', '2023-05-01', 94),
  (9, 'Penetration Test', '2023-06-01', 84),
  (10, 'API Development', '2023-04-01', 87);

-- Insert sample instructor comments
insert into
  instructor_comments (enrollment_id, comment, comment_date)
values
  (
    1,
    'Excellent progress in web development.',
    '2023-03-20'
  ),
  (
    2,
    'Great understanding of data science concepts.',
    '2023-04-25'
  ),
  (
    3,
    'Needs improvement in cybersecurity practices.',
    '2023-05-30'
  ),
  (
    4,
    'Shows creativity in project design.',
    '2023-03-20'
  ),
  (5, 'Strong analytical skills.', '2023-04-25'),
  (
    6,
    'Good grasp of security protocols.',
    '2023-05-30'
  ),
  (7, 'Consistent performance.', '2023-03-20'),
  (
    8,
    'Impressive data handling skills.',
    '2023-04-25'
  ),
  (
    9,
    'Attention to detail in security measures.',
    '2023-05-30'
  ),
  (
    10,
    'Solid understanding of API structures.',
    '2023-03-20'
  );

-- Insert sample payments
insert into
  payments (student_id, method, amount, payment_date)
values
  (1, 'Credit Card', 1500, '2023-01-15'),
  (2, 'Bank Transfer', 2000, '2023-02-20'),
  (3, 'PayPal', 1800, '2023-03-25'),
  (4, 'Credit Card', 1500, '2023-01-15'),
  (5, 'Bank Transfer', 2000, '2023-02-20'),
  (6, 'PayPal', 1800, '2023-03-25'),
  (7, 'Credit Card', 1500, '2023-01-15'),
  (8, 'Bank Transfer', 2000, '2023-02-20'),
  (9, 'PayPal', 1800, '2023-03-25'),
  (10, 'Credit Card', 1500, '2023-01-15');

-- Insert sample scholarships
insert into
  scholarships (student_id, discount_percentage, description)
values
  (1, 10, 'Early bird discount'),
  (2, 15, 'Merit-based scholarship'),
  (3, 5, 'Referral discount'),
  (4, 10, 'Early bird discount'),
  (5, 15, 'Merit-based scholarship'),
  (6, 5, 'Referral discount'),
  (7, 10, 'Early bird discount'),
  (8, 15, 'Merit-based scholarship'),
  (9, 5, 'Referral discount'),
  (10, 10, 'Early bird discount');

-- Insert sample additional info
insert into
  additional_info (
    student_id,
    schedule_preferences,
    previous_experience,
    academic_goals,
    event_participation,
    interests_skills
  )
values
  (
    1,
    'Evenings',
    'Basic HTML/CSS',
    'Become a full-stack developer',
    'Hackathon 2023',
    'Web development, JavaScript'
  ),
  (
    2,
    'Weekends',
    'Python for Data Science',
    'Work in data analysis',
    'Data Science Meetup',
    'Data analysis, Python'
  ),
  (
    3,
    'Mornings',
    'Network Security Basics',
    'Enhance cybersecurity skills',
    'Security Conference',
    'Cybersecurity, Networking'
  ),
  (
    4,
    'Evenings',
    'JavaScript',
    'Develop web applications',
    'Web Dev Workshop',
    'JavaScript, React'
  ),
  (
    5,
    'Weekends',
    'Machine Learning',
    'Build ML models',
    'AI Expo',
    'Machine Learning, Python'
  ),
  (
    6,
    'Mornings',
    'Linux Administration',
    'Improve security protocols',
    'Cybersecurity Summit',
    'Linux, Security'
  ),
  (
    7,
    'Evenings',
    'Front-end Development',
    'Create interactive websites',
    'Tech Fair',
    'HTML, CSS, JavaScript'
  ),
  (
    8,
    'Weekends',
    'Data Visualization',
    'Visualize complex data',
    'Data Viz Conference',
    'Data visualization, R'
  ),
  (
    9,
    'Mornings',
    'Ethical Hacking',
    'Conduct security audits',
    'Hacker Fest',
    'Ethical hacking, Security'
  ),
  (
    10,
    'Evenings',
    'API Development',
    'Develop robust APIs',
    'API Workshop',
    'API development, Node.js'
  );