# #Create Houses

# House.create(
#     name: 'Stark',
#     seat: 'Winterfell',
#     motto: 'Winter is Coming',
#     photo: 'https://goo.gl/images/SxQGyP',
#     colors: 'Grey on white/grey white',
#     sigil: 'A grey direwolf on a white field',
# )

# House.create(
#     name: 'Lannister',
#     seat: "King's Landing",
#     motto: 'Hear Me Roar',
#     photo: 'https://goo.gl/images/QEqGHx',
#     colors: 'Gold on red/gold red',
#     sigil: 'A golden lion rampant on a crimson field',
# )

# House.create(
#     name: 'Targaryen',
#     seat: 'Dragonstone',
#     motto: 'Fire and Blood',
#     photo: 'https://goo.gl/images/z3fAKn',
#     colors: 'Red on black/red black',
#     sigil: 'A red three-headed dragon, on a black field',
# )

# House.create(
#     name: 'Tyrell',
#     seat: 'Highgarden',
#     motto: 'Growing Strong',
#     photo: 'https://goo.gl/images/sYuYzp',
#     colors: 'Gold on green/gold green',
#     sigil: 'A golden rose on a green field',
# )

# House.create(
#     name: 'Baratheon',
#     seat: "Storm's End",
#     motto: 'Ours Is the Fury',
#     photo: 'https://goo.gl/images/QKT8xZ',
#     colors: 'Black on gold/black gold',
#     sigil: 'A crowned black stag rampant on a gold field',
# )

# House.create(
#     name: 'Martell',
#     seat: 'Sunspear',
#     motto: 'Ours Is the Fury',
#     photo: 'https://goo.gl/images/jTeXRj',
#     colors: 'Red and gold/red gold',
#     sigil: 'A red sun pierced by a gold spear, on an orange field',
# )

# House.create(
#     name: 'Greyjoy',
#     seat: 'Pyke',
#     motto: 'What is Dead May Never',
#     photo: 'https://goo.gl/images/jTeXRj',
#     colors: 'Gold on black/gold black',
#     sigil: 'A golden kraken on a black field',
# )






# # Create STUDENTS

# Student.create
# User.create!(
#     first_name: 'Arya', 
#     last_name: 'Stark',
#     gender: 'Female',
#     username: 'ihavenoname', 
#     email: 'aryastark@westeros.com', 
#     password: '123456',
#     house_id: 1,
#     userable_type: 'Student', 
#     userable_id: 1
# )


# # Creaate INSTRUCTORS

# Instructor.create
# User.create(
#     first_name: 'Jon', 
#     last_name: 'Snow',
#     gender: 'male',
#     username: 'iknownothing', 
#     email: 'jonsnow@westeros.com', 
#     password: '123456',
#     house_id: 1,
#     userable_type: 'Instructor', 
#     userable_id: 1,
#     )

# Instructor.create
# User.create(
#     first_name: 'Daenerys', 
#     last_name: 'Targaryen',
#     gender: 'female',
#     username: 'dragonqueen', 
#     email: 'daenerystargaryen@westeros.com', 
#     password: '123456',
#     house_id: 3,
#     userable_type: 'Instructor', 
#     userable_id: 2,
#     )






# # # Create PARENTS -> Post-MVP
# # Parent.create
# # User.create(
# #     first_name: 'Eddard', 
# #     last_name: 'Stark',
# #     gender: 'male',
# #     photo: 'https://goo.gl/images/rj2Cw7', 
# #     username: 'lordofthenorth', 
# #     email: 'eddardstark@winterfell.com', 
# #     password: '1234',
# #     house_id: 1,
# #     userable_type: 'Parent', 
# #     userable_id: 1,
# #     )







# # Create COURSES

# Course.create(
#     name: 'Combat', 
#     total_hours: 5,
#     syllabus: 'Learn to fight... to the death!',
#     )

# Course.create(
#     name: 'Science', 
#     total_hours: 5,
#     syllabus: 'A course that teaches you to builds and organize knowledge, with rather interesting experimentation lab assignments!',
# )

# Course.create(
#     name: 'Love 101', 
#     total_hours: 3,
#     syllabus: 'War is one thing. In this course, we will not choose sides when it come to love.',
# )

# Course.create(
#     name: 'Dragons 101', 
#     total_hours: 5,
#     syllabus: 'In this course, you will learn how and why I was born to rule the Seven Kingdoms... dragons!',
# )






# # Create ENROLLMENTS

# Enrollment.create(
#     grade: 100, 
#     user_id: 1,
#     course_id: 1,
# )

# Enrollment.create(
#     user_id: 2,
#     course_id: 1,
# )

# Enrollment.create(
#     grade: 95, 
#     user_id: 1,
#     course_id: 4,
# )

# Enrollment.create(
#     user_id: 4,
#     course_id: 4,
# )

# Admin.create
# User.create(
#     first_name: 'Jazmine', 
#     last_name: 'Chung',
#     gender: 'female',
#     username: 'cake-boss', 
#     email: 'chung.jazmine@westeros.com', 
#     password: '123456',
#     house_id: 1,
#     userable_type: 'Admin', 
#     userable_id: 1,
#     )

# Admin.create
User.create(
    first_name: 'David', 
    last_name: 'Patlut',
    gender: 'male',
    username: 'dpatlut', 
    email: 'chung.jazmine@westeros.com', 
    password: '123456',
    house_id: 7,
    userable_type: 'Admin', 
    userable_id: 2,
    )