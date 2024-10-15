create table students (
  id bigint primary key generated always as identity,
  full_name text not null,
  birth_date date not null,
  gender text,
  address text,
  phone text,
  email text not null unique,
  identification_number text unique,
  consent_data_use boolean not null,
  terms_accepted boolean not null
);

create table courses (
  id bigint primary key generated always as identity,
  name text not null,
  start_date date not null,
  end_date date not null,
  status text not null check (status in ('active', 'inactive', 'graduated'))
);

create table enrollments (
  id bigint primary key generated always as identity,
  student_id bigint references not null students (id),
  course_id bigint references not null courses (id),
  enrollment_date date not null,
  expected_completion_date date
);

create table grades (
  id bigint primary key generated always as identity,
  enrollment_id bigint references not null enrollments (id),
  grade numeric check (
    grade >= 0
    and grade <= 100
  ),
  evaluation_date date not null
);

create table projects (
  id bigint primary key generated always as identity,
  enrollment_id bigint references not null enrollments (id),
  project_name text not null,
  submission_date date,
  grade numeric check (
    grade >= 0
    and grade <= 100
  )
);

create table instructor_comments (
  id bigint primary key generated always as identity,
  enrollment_id bigint references not null enrollments (id),
  comment text not null,
  comment_date date not null
);

create table payments (
  id bigint primary key generated always as identity,
  student_id bigint references not null students (id),
  method text not null,
  amount numeric not null,
  payment_date date not null
);

create table scholarships (
  id bigint primary key generated always as identity,
  student_id bigint references not null students (id),
  discount_percentage numeric check (
    discount_percentage >= 0
    and discount_percentage <= 100
  ),
  description text
);

create table additional_info (
  id bigint primary key generated always as identity,
  student_id bigint references noy null students (id),
  schedule_preferences text,
  previous_experience text,
  academic_goals text,
  event_participation text,
  interests_skills text
);
