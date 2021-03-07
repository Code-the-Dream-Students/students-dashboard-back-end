courses = Course.create([
  {
    course_name: "Sunrise",
    description: "Web basics for Front-End or Back-End development"
  },
  {
    course_name: "Phoenix",
    description: "Front-End development with React.JS"
  },
  {
    course_name: "Piranha",
    description: "Back-End development with Ruby on Rails"
  },
  {
    course_name: "High Noon",
    description: "Front-End and Back-End development with React.JS and Ruby on Rails"
  }
])


units = Unit.create([
  {
    unit_name: "Web basics 1",
    description: "Welcome to Web Basics I, the first class in Code the Dream’s six-part Web Development course. Web Basics I serves as an introduction to computer programming. You’ll start with Treehouse’s Digital Literacy track, which covers basic computing principles and introduces you to HTML, CSS, JavaScript, & Git. By the time you finish your final project, you’ll have the foundations every programmer needs.",
    courses: [
      Course.find(1)
    ]
  },
  {
    unit_name: "Web basics 2",
    description: "Now that you have mastered the essentials of programming, it’s time to dive deeper. In Web Basics II, you’ll learn the basics of JavaScript, the most popular programming language. Then, you will learn about databases and SQL, a popular back-end language, and work on some more GitHub. Finally, you’ll apply that knowledge in the final project for Web Basics.",
    courses: [
      Course.find(1)
    ]
  },
  {
    unit_name: "Front-End 1",
    description: "Welcome to Front End 1, the first class in our Front End development track.",
    courses: [
      Course.find(2),
      Course.find(4)
    ]
  },
  {
    unit_name: "Front-End 2",
    description: "Welcome to Front End II, you will be learning the popular and super powerful javascript framework React.",
    courses: [
      Course.find(2),
      Course.find(4)
    ]
  },
  {
    unit_name: "Back-End 1",
    description: "Welcome to Back End I, the first class in our Back End development track.",
    courses: [
      Course.find(3),
      Course.find(4)
    ]
  },
  {
    unit_name: "Back-End 2",
    description: "Welcome to Back End II, the first class in our Back End development track.",
    courses: [
      Course.find(3),
      Course.find(4)
    ]
  }
])


lessons = Lesson.create([
  {
    lesson_name: "Digital Literacy, Intro to Terminal, Intro to Git, Intro to HTML & CSS",
    units: [
      Unit.find(1)
    ]
  },
  {
    lesson_name: "Intro to Wireframing | Intro to JavaScript | HTML Basics",
    units: [
      Unit.find(1)
    ]
  },
  {
    lesson_name: "Beginning JavaScript | Functions | Numbers",
    units: [
      Unit.find(2)
    ]
  },
  {
    lesson_name: "Loops | Arrays | Objects",
    units: [
      Unit.find(2)
    ]
  },
  {
    lesson_name: "Additional JavaScript exercises",
    units: [
      Unit.find(2)
    ]
  },
  {
    lesson_name: "JavaScript and the DOM | CSS Selectors",
    units: [
      Unit.find(2)
    ]
  },
  {
    lesson_name: "DOM Scripting",
    units: [
      Unit.find(2)
    ]
  },
  {
    lesson_name: "Build",
    units: [
      Unit.find(2)
    ]
  },
  {
    lesson_name: "Debugging with CSS, CSS layouts",
    units: [
      Unit.find(3)
    ]
  },
  {
    lesson_name: "Advanced HTML & CSS, CSS selectors, Bootstrap 4 basics",
    units: [
      Unit.find(3)
    ]
  },
  {
    lesson_name: "HTML tables, HTML video & audio, Media-player, Intro to FE optimization ",
    units: [
      Unit.find(3)
    ]
  },
  {
    lesson_name: "AJAX basics, ASync JavaScript, Working with Fetch",
    units: [
      Unit.find(3)
    ]
  },
  {
    lesson_name: "Object-oriented JavaScript, Web Accessibility Compliance, Web optimization",
    units: [
      Unit.find(3)
    ]
  },
  {
    lesson_name: "Practice with reusable components, Intro to React",
    units: [
      Unit.find(4)
    ]
  },
  {
    lesson_name: "Fetching data & creating routes",
    units: [
      Unit.find(4)
    ]
  },
  {
    lesson_name: "Using APIs to fetch data in React. Using Airtable as a lightweight CMS",
    units: [
      Unit.find(4)
    ]
  },
  {
    lesson_name: "Authentication patterns. Using Firebase as a backend for a react app. Reviewing React Concepts.",
    units: [
      Unit.find(4)
    ]
  },
  {
    lesson_name: "React Project.",
    units: [
      Unit.find(4)
    ]
  },
  {
    lesson_name: "SQL Basics",
    units: [
      Unit.find(5)
    ]
  },
  {
    lesson_name: "More SQL, Introduction to Ruby",
    units: [
      Unit.find(5)
    ]
  },
  {
    lesson_name: "Ruby",
    units: [
      Unit.find(5)
    ]
  },
  {
    lesson_name: "Ruby II",
    units: [
      Unit.find(5)
    ]
  },
  {
    lesson_name: "Ruby III",
    units: [
      Unit.find(5)
    ]
  },
  {
    lesson_name: "Ruby & Sinatra",
    units: [
      Unit.find(5)
    ]
  },
  {
    lesson_name: "Ruby on Rails Basics",
    units: [
      Unit.find(6)
    ]
  },
  {
    lesson_name: "Rails Development",
    units: [
      Unit.find(6)
    ]
  },
  {
    lesson_name: "Additional Rails Topics",
    units: [
      Unit.find(6)
    ]
  },
  {
    lesson_name: "Bringing it all together",
    units: [
      Unit.find(6)
    ]
  },
  {
    lesson_name: "Bootstrap 4 Basics; Bootstrap in Rails.",
    units: [
      Unit.find(6)
    ]
  },
  {
    lesson_name: "Building an API, Swagger, Ajax",
    units: [
      Unit.find(6)
    ]
  },
  {
    lesson_name: "Final Project",
    units: [
      Unit.find(6)
    ]
  }
])

assignments = Assignment.create([
  {
    link: "https://learn.codethedream.org/web-basics-1/web-basics-week-1/web-basics-setup-and-first-lesson-instructions/",
    description: "Your assignment for Lesson 1 is to set up your coding environment and push your first code repository to Github.",
    lesson_id: 1
  },
  {
    link: "https://github.com/Code-the-Dream-School/web-basics-1-week-2",
    description: "",
    lesson_id: 2
  },
  {
    link: "https://github.com/Code-the-Dream-School/web-basics-2-week-1/",
    description: "https://learn.codethedream.org/web-basics-ii-week-1-assignment/",
    lesson_id: 3
  },
  {
    link: "https://github.com/Code-the-Dream-School/web-basics-2-week-2",
    description: "",
    lesson_id: 4
  },
  {
    link: "https://classroom.github.com/assignment-invitations/28e039a6e21094351c65f2375fc2c0a2",
    description: "",
    lesson_id: 5
  },
  {
    link: "https://github.com/Code-the-Dream-School/web-basics-2-week-3",
    description: "",
    lesson_id: 6
  },
  {
    link: "https://github.com/Code-the-Dream-School/web-basics-2-week-4",
    description: "",
    lesson_id: 7
  },
  {
    link: "https://github.com/Code-the-Dream-School/Front-End-1-Week-5-Assignment",
    description: "",
    lesson_id: 8
  },
  {
    link: "https://classroom.github.com/assignment-invitations/a6fdb8b63faf4a9cd52e192e1d803a53",
    description: "",
    lesson_id: 9
  },
  {
    link: "https://classroom.github.com/assignment-invitations/ebb943e6e58bb1c6516415194afd2438",
    description: "",
    lesson_id: 10
  },
  {
    link: "https://classroom.github.com/assignment-invitations/86f7a973cc80db4df4fab55bf8a087d3",
    description: "",
    lesson_id: 11
  },
  {
    link: "https://classroom.github.com/assignment-invitations/c9cb2d63fda939291a142e407f50fdf0",
    description: "",
    lesson_id: 12
  },
  {
    link: "https://classroom.github.com/assignment-invitations/787bc76b33eea8f5f81928d26991c552/status",
    description: "",
    lesson_id: 13
  },
  {
    link: "https://classroom.github.com/assignment-invitations/cf65f7e5b827c7bb1d9e894a7de92231",
    description: "",
    lesson_id: 14
  },
  {
    link: "",
    description: "You have no additional assignments for this section. Practice what you’ve learned and try and weave it into your section 1 assignment. ",
    lesson_id: 15
  },
  {
    link: "https://classroom.github.com/assignment-invitations/a6b1056eab3221a7d2750ed51b9cc83e/status",
    description: "",
    lesson_id: 16
  },
  {
    link: "",
    description: "Create an App using firebase that allows users to log-in, sign-up, & reset their passwords. Follow the tutorial above and then submit your code via Squibby. ",
    lesson_id: 17
  },
  {
    link: "",
    description: "Final project.",
    lesson_id: 18
  },
  {
    link: "https://classroom.github.com/assignment-invitations/b68c0be5007b34dcf8f7a679fdf015af/status",
    description: "In addition to this assignment, please set up your machine for Ruby and Rails development. It is quite easy to set up Linux and Mac machines for Ruby and Rails development, but it is harder on Windows.",
    lesson_id: 19
  },
  {
    link: "https://classroom.github.com/assignment-invitations/9d6d06b1cd76e4b4b233597f6df4bc5e/status",
    description: "",
    lesson_id: 20
  },
  {
    link: "https://classroom.github.com/assignment-invitations/bd4ed40b2090e1844f68ebdc6fda5661/status",
    description: "",
    lesson_id: 21
  },
  {
    link: "https://classroom.github.com/assignment-invitations/66bfd62e48f2f4338bc46382b875dda5/status",
    description: "",
    lesson_id: 22
  },
  {
    link: "https://classroom.github.com/assignment-invitations/9fec8653362ca4bca32440ce258fe3d0/status",
    description: "",
    lesson_id: 23
  },
  {
    link: "https://classroom.github.com/assignment-invitations/c71801a77f537ebc699a433361078d52/status",
    description: "",
    lesson_id: 24
  },
  {
    link: "https://classroom.github.com/assignment-invitations/45e116e4b30243a1d115bd6e0fd671d3/status",
    description: "The assignment for this week is to duplicate the instructor’s work on the blog application. You do not need to do rails new to start, because your assignment workspace is in the link. Maintain your blog repository to reflect all changes that the instructor shows. It is important that you continue to make changes as the instructor directs, because otherwise you won’t remember the skills.",
    lesson_id: 25
  },
  {
    link: "https://classroom.github.com/assignment-invitations/7b7f3fc7bec7b7e56658c35081199090/status\nhttps://classroom.github.com/assignment-invitations/416625466d39b18fcba45059d6870199/status\nhttps://classroom.github.com/assignment-invitations/93243b98cf851a0c10e010c9a8f48933/status",
    description: "Maintain your blog repository with the additional changes shown by the instructor in a continuation of assignment 1. In addition, there are three shorter assignments on Active Record associations. You will modify three new Rails applications. and you will have a github repository for each. How you set these these up is in the teacher’s notes, not the videos. You should have a forum application called community: https://teamtreehouse.com/library/has-and-belongs-to-many-associations , for which the starter workspace is assignment 2a. Then you will have a magazine subscription application called periodical: https://teamtreehouse.com/library/has-many-through-associations . The starter workspace for this one is 2b. Finally you will have a movie database called mdb: https://teamtreehouse.com/library/polymorphic-options . The starter workspace is 2c. These are small applications. ",
    lesson_id: 26
  },
  {
    link: "https://classroom.github.com/assignment-invitations/0608305c02a9a172438ea1c4fddbdff7/status",
    description: "The starter workspace for your assignment is in the link. You will also use this workspace in Week 4.

    You will add validations to your model, as well as handling errors with appropriate messages to the user. You will also practice the use of a debugging tool called byebug.
    
    For the second part of your assignment, add Rspec testing to your customer-order application as described in the slides. ",
    lesson_id: 27
  },
  {
    link: "https://docs.google.com/presentation/d/14SYpYdjz9y5gu31fAdwGXtG7wID0arjAxI0_csv7WG4/edit#slide=id.p",
    description: "The assignment is described in detail at the link above. Please review these slides carefully.

    You will continue to use the workspace and application used in Week 3.
    
    At the completion of this assignment, your work will be evaluated. Please try to follow the instructions carefully and complete all elements of the assignment.",
    lesson_id: 28
  },
  {
    link: "https://classroom.github.com/assignment-invitations/4a2ad99f06a6c7f3fe5392b0799aa6c3",
    description: "Complete the Bootstrap Basics course in Treehouse. Try to do as many of the in class exercises as you can, so that you acquire the skills demonstrated by the instructor in the video. Then complete the Bootstrap for Rails homework, starting with the workspace in the link, and push to Github.",
    lesson_id: 29
  },
  {
    link: "https://classroom.github.com/assignment-invitations/518324e5d375e0673e422276b6034fd8/status\nhttps://classroom.github.com/assignment-invitations/3915198f498b5a81937db8f6b51c5e71",
    description: "You will have two starter workspaces for Week 6. The first is the workspace you will use to implement the API and to instrument it for Swagger. That first one is 6a. The second workspace is a very basic Ajax application that calls the API, and the starter is 6b.",
    lesson_id: 30
  },
  {
    link: "",
    description: "You will use your own git repository. There is no git classroom assignment for the final project. By the end of week 1, you should definitely have an assignment described and agreed to by the mentors. The steps in setting up the git repository are:

    rails new <project-name>
    cd <project-name>
    git init
    On github, create a new empty repository. It should be public and should have no README.md
    Copy the URL for the new repository, and then on your workspace do:
    git remote add origin <git-repository-url>
    git add -A
    git commit -m “first commit”
    git push -u origin master
    
    As you develop your application, you should create a feature branch for each feature, using
    
    git checkout -b <feature-name>
    
    and then when it is complete, do:
    
    git add -A
    git commit -m “feature-name”
    git push origin <feature-name>
    
    Then on the git repository, do a pull request, verify it, and merge your own pull request into the master. Then start the next feature with this sequence:
    
    git checkout master
    git pull origin master
    git checkout -b <new-feature>",
    lesson_id: 31
  }
])

weeks = Week.create([
  {
    week_number: 1,
    start_date: "2021-02-03",
    end_date: "2021-02-09",
    course_id: 1,
    unit_id: 1,
    lesson_id: 1 
  },
  {
    week_number: 2,
    start_date: "2021-02-10",
    end_date: "2021-02-16",
    course_id: 1,
    unit_id: 1,
    lesson_id: 2
  },
  {
    week_number: 3,
    start_date: "2021-02-17",
    end_date: "2021-02-23",
    course_id: 1,
    unit_id: 2,
    lesson_id: 3
  },
  {
    week_number: 4,
    start_date: "2021-02-24",
    end_date: "2021-03-02",
    course_id: 1,
    unit_id: 2,
    lesson_id: 4
  },
  {
    week_number: 5,
    start_date: "2021-03-03",
    end_date: "2021-03-09",
    course_id: 1,
    unit_id: 2,
    lesson_id: 5
  },
  {
    week_number: 6,
    start_date: "2021-03-10",
    end_date: "2021-03-16",
    course_id: 1,
    unit_id: 2,
    lesson_id: 6
  },
  {
    week_number: 7,
    start_date: "2021-03-17",
    end_date: "2021-03-23",
    course_id: 1,
    unit_id: 2,
    lesson_id: 7
  },
  {
    week_number: 8,
    start_date: "2021-03-24",
    end_date: "2021-03-30",
    course_id: 1,
    unit_id: 2,
    lesson_id: 8
  },
  {
    week_number: 1,
    start_date: "2021-02-03",
    end_date: "2021-02-09",
    course_id: 2,
    unit_id: 3,
    lesson_id: 9
  },
  {
    week_number: 2,
    start_date: "2021-02-10",
    end_date: "2021-02-16",
    course_id: 2,
    unit_id: 3,
    lesson_id: 10
  },
  {
    week_number: 3,
    start_date: "2021-02-17",
    end_date: "2021-02-23",
    course_id: 2,
    unit_id: 3,
    lesson_id: 11
  },
  {
    week_number: 4,
    start_date: "2021-02-24",
    end_date: "2021-03-02",
    course_id: 2,
    unit_id: 3,
    lesson_id: 12
  },
  {
    week_number: 5,
    start_date: "2021-03-03",
    end_date: "2021-03-09",
    course_id: 2,
    unit_id: 3,
    lesson_id: 13
  },
  {
    week_number: 6,
    start_date: "2021-03-10",
    end_date: "2021-03-16",
    course_id: 2,
    unit_id: 4,
    lesson_id: 14
  },
  {
    week_number: 7,
    start_date: "2021-03-17",
    end_date: "2021-03-23",
    course_id: 2,
    unit_id: 4,
    lesson_id: 15
  },
  {
    week_number: 8,
    start_date: "2021-03-24",
    end_date: "2021-03-30",
    course_id: 2,
    unit_id: 4,
    lesson_id: 16
  },
  {
    week_number: 9,
    start_date: "2021-03-31",
    end_date: "2021-04-06",
    course_id: 2,
    unit_id: 4,
    lesson_id: 17
  },
  {
    week_number: 10,
    start_date: "2021-04-7",
    end_date: "2021-04-13",
    course_id: 2,
    unit_id: 4,
    lesson_id: 18
  },
  {
    week_number: 11,
    start_date: "2021-04-14",
    end_date: "2021-04-20",
    course_id: 2,
    unit_id: 4,
    lesson_id: 18
  },
  {
    week_number: 1,
    start_date: "2021-02-03",
    end_date: "2021-02-09",
    course_id: 3,
    unit_id: 5,
    lesson_id: 19
  },
  {
    week_number: 2,
    start_date: "2021-02-10",
    end_date: "2021-02-16",
    course_id: 3,
    unit_id: 5,
    lesson_id: 20
  },
  {
    week_number: 3,
    start_date: "2021-02-17",
    end_date: "2021-02-23",
    course_id: 3,
    unit_id: 5,
    lesson_id: 21
  },
  {
    week_number: 4,
    start_date: "2021-02-24",
    end_date: "2021-03-02",
    course_id: 3,
    unit_id: 5,
    lesson_id: 22
  },
  {
    week_number: 5,
    start_date: "2021-03-03",
    end_date: "2021-03-09",
    course_id: 3,
    unit_id: 5,
    lesson_id: 23
  },
  {
    week_number: 6,
    start_date: "2021-03-10",
    end_date: "2021-03-16",
    course_id: 3,
    unit_id: 5,
    lesson_id: 24
  },
  {
    week_number: 7,
    start_date: "2021-03-17",
    end_date: "2021-03-23",
    course_id: 3,
    unit_id: 6,
    lesson_id: 25
  },
  {
    week_number: 8,
    start_date: "2021-03-24",
    end_date: "2021-03-30",
    course_id: 3,
    unit_id: 6,
    lesson_id: 26
  },
  {
    week_number: 9,
    start_date: "2021-03-31",
    end_date: "2021-04-06",
    course_id: 3,
    unit_id: 6,
    lesson_id: 27
  },
  {
    week_number: 10,
    start_date: "2021-03-31",
    end_date: "2021-04-06",
    course_id: 3,
    unit_id: 6,
    lesson_id: 28
  },
  {
    week_number: 11,
    start_date: "2021-04-14",
    end_date: "2021-04-20",
    course_id: 3,
    unit_id: 6,
    lesson_id: 29
  },
  {
    week_number: 12,
    start_date: "2021-04-21",
    end_date: "2021-04-27",
    course_id: 3,
    unit_id: 6,
    lesson_id: 30
  },
  {
    week_number: 13,
    start_date: "2021-04-28",
    end_date: "2021-05-04",
    course_id: 3,
    unit_id: 6,
    lesson_id: 31
  },
  {
    week_number: 14,
    start_date: "2021-05-05",
    end_date: "2021-05-11",
    course_id: 3,
    unit_id: 6,
    lesson_id: 31
  },
  {
    week_number: 15,
    start_date: "2021-05-12",
    end_date: "2021-05-18",
    course_id: 3,
    unit_id: 6,
    lesson_id: 31
  },
  {
    week_number: 1,
    start_date: "2021-02-03",
    end_date: "2021-02-09",
    course_id: 4,
    unit_id: 3,
    lesson_id: 9
  },
  {
    week_number: 2,
    start_date: "2021-02-10",
    end_date: "2021-02-16",
    course_id: 4,
    unit_id: 3,
    lesson_id: 10
  },
  {
    week_number: 3,
    start_date: "2021-02-17",
    end_date: "2021-02-23",
    course_id: 4,
    unit_id: 3,
    lesson_id: 11
  },
  {
    week_number: 4,
    start_date: "2021-02-24",
    end_date: "2021-03-02",
    course_id: 4,
    unit_id: 3,
    lesson_id: 12
  },
  {
    week_number: 5,
    start_date: "2021-03-03",
    end_date: "2021-03-09",
    course_id: 4,
    unit_id: 3,
    lesson_id: 13
  },
  {
    week_number: 6,
    start_date: "2021-03-10",
    end_date: "2021-03-16",
    course_id: 4,
    unit_id: 4,
    lesson_id: 14 
  },
  {
    week_number: 7,
    start_date: "2021-03-17",
    end_date: "2021-03-23",
    course_id: 4,
    unit_id: 4,
    lesson_id: 15
  },
  {
    week_number: 8,
    start_date: "2021-03-24",
    end_date: "2021-03-30",
    course_id: 4,
    unit_id: 4,
    lesson_id: 16
  },
  {
    week_number: 9,
    start_date: "2021-03-31",
    end_date: "2021-04-06",
    course_id: 4,
    unit_id: 4,
    lesson_id: 17
  },
  {
    week_number: 10,
    start_date: "2021-04-07",
    end_date: "2021-04-13",
    course_id: 4,
    unit_id: 4,
    lesson_id: 18
  },
  {
    week_number: 11,
    start_date: "2021-04-14",
    end_date: "2021-04-20",
    course_id: 4,
    unit_id: 4,
    lesson_id: 18
  },
  {
    week_number: 12,
    start_date: "2021-04-21",
    end_date: "2021-04-27",
    course_id: 4,
    unit_id: 5,
    lesson_id: 19
  },
  {
    week_number: 13,
    start_date: "2021-04-28",
    end_date: "2021-05-04",
    course_id: 4,
    unit_id: 5,
    lesson_id: 20
  },
  {
    week_number: 14,
    start_date: "2021-05-05",
    end_date: "2021-05-11",
    course_id: 4,
    unit_id: 5,
    lesson_id: 21
  },
  {
    week_number: 15,
    start_date: "2021-05-12",
    end_date: "2021-05-18",
    course_id: 4,
    unit_id: 5,
    lesson_id: 22
  },
  {
    week_number: 16,
    start_date: "2021-05-19",
    end_date: "2021-05-25",
    course_id: 4,
    unit_id: 5,
    lesson_id: 23
  },
  {
    week_number: 17,
    start_date: "2021-05-26",
    end_date: "2021-06-01",
    course_id: 4,
    unit_id: 5,
    lesson_id: 24
  },
  {
    week_number: 18,
    start_date: "2021-06-02",
    end_date: "2021-06-08",
    course_id: 4,
    unit_id: 6,
    lesson_id: 25
  },
  {
    week_number: 19,
    start_date: "2021-06-09",
    end_date: "2021-06-15",
    course_id: 4,
    unit_id: 6,
    lesson_id: 26
  },
  {
    week_number: 20,
    start_date: "2021-06-16",
    end_date: "2021-06-22",
    course_id: 4,
    unit_id: 6,
    lesson_id: 27
  },
  {
    week_number: 21,
    start_date: "2021-06-23",
    end_date: "2021-06-29",
    course_id: 4,
    unit_id: 6,
    lesson_id: 28
  },
  {
    week_number: 22,
    start_date: "2021-06-30",
    end_date: "2021-07-06",
    course_id: 4,
    unit_id: 6,
    lesson_id: 29
  },
  {
    week_number: 23,
    start_date: "2021-07-07",
    end_date: "2021-07-13",
    course_id: 4,
    unit_id: 6,
    lesson_id: 30
  },
  {
    week_number: 24,
    start_date: "2021-07-14",
    end_date: "2021-07-20",
    course_id: 4,
    unit_id: 6,
    lesson_id: 31
  },
  {
    week_number: 25,
    start_date: "2021-07-21",
    end_date: "2021-07-27",
    course_id: 4,
    unit_id: 6,
    lesson_id: 31
  },
  {
    week_number: 26,
    start_date: "2021-07-28",
    end_date: "2021-08-03",
    course_id: 4,
    unit_id: 6,
    lesson_id: 31
  }
])

sources = Source.create([
  {
    source_title: "Computer Basics",
    link: "https://teamtreehouse.com/library/computer-basics",
    lessons: [
      Lesson.find(1)
    ]
  },
  {
    source_title: "How the Internet Works",
    link: "https://teamtreehouse.com/library/how-the-internet-works",
    lessons: [
      Lesson.find(1)
    ]
  },
  {
    source_title: "How the Web Works",
    link: "https://teamtreehouse.com/library/how-the-web-works",
    lessons: [
      Lesson.find(1)
    ]
  },
  {
    source_title: "Introduction to the Terminal",
    link: "https://teamtreehouse.com/library/introduction-to-the-terminal",
    lessons: [
      Lesson.find(1)
    ]
  },
  {
    source_title: "Introduction to Git",
    link: "https://teamtreehouse.com/library/introduction-to-git",
    lessons: [
      Lesson.find(1)
    ]
  },
  {
    source_title: "Introduction to HTML & CSS",
    link: "https://teamtreehouse.com/library/introduction-to-html-and-css",
    lessons: [
      Lesson.find(1)
    ]
  },
  {
    source_title: "Introduction to Wireframing",
    link: "https://teamtreehouse.com/library/introduction-to-wireframing",
    lessons: [
      Lesson.find(2)
    ]
  },
  {
    source_title: "Introducing JavaScript",
    link: "https://teamtreehouse.com/library/introducing-javascript",
    lessons: [
      Lesson.find(2)
    ]
  },
  {
    source_title: "HTML Basics",
    link: "https://teamtreehouse.com/library/html-basics-2",
    lessons: [
      Lesson.find(2)
    ]
  },
  {
    source_title: "JavaScript Basics",
    link: "https://teamtreehouse.com/library/javascript-basics",
    lessons: [
      Lesson.find(3)
    ]
  },
  {
    source_title: "JavaScript Functions",
    link: "https://teamtreehouse.com/library/javascript-functions",
    lessons: [
      Lesson.find(3)
    ]
  },
  {
    source_title: "JavaScript Numbers",
    link: "https://teamtreehouse.com/library/javascript-numbers",
    lessons: [
      Lesson.find(3)
    ]
  },
  {
    source_title: "JavaScript Loops, Arrays, and Objects",
    link: "https://teamtreehouse.com/library/javascript-loops-arrays-and-objects",
    lessons: [
      Lesson.find(4)   
    ]
  },
  {
    source_title: "javaScript reading materials",
    link: "https://learn.codethedream.org/web-basics-ii/web-basics-ii-week-3/",
    lessons: [
      Lesson.find(5)
    ]
  },
  {
    source_title: "Javascript Landscape.",
    link: "https://teamtreehouse.com/library/the-landscape-of-javascript",
    lessons: [
      Lesson.find(6)
    ]
  },
  {
    source_title: "JavaScript and the DOM",
    link: "https://teamtreehouse.com/library/javascript-and-the-dom-2",
    lessons: [
      Lesson.find(6)
    ]
  },
  {
    source_title: "What you need to Know About CSS Selectors",
    link: "https://teamtreehouse.com/library/what-you-need-to-know-about-css-selectors",
    lessons: [
      Lesson.find(6)
    ]
  },
  {
    source_title: "DOM Scripting by Example",
    link: "https://teamtreehouse.com/library/dom-scripting-by-example",
    lessons: [
      Lesson.find(7)
    ]
  },
  {
    source_title: "Explore & understand the concepts being implemented in the week 5 assignment ",
    link: "https://learn.codethedream.org/web-basics-ii/web-basics-ii-week-6/",
    lessons: [
      Lesson.find(8)
    ]
  },
  {
    source_title: "CSS Basic",
    link: "https://teamtreehouse.com/library/css-basics",
    lessons: [
      Lesson.find(9)
    ]
  },
  {
    source_title: "Debugging CSS with Chrome Devtools",
    link: "https://teamtreehouse.com/library/debugging-css-with-chrome-devtools",
    lessons: [
      Lesson.find(9)
    ]
  },
  {
    source_title: "CSS Layout Basics",
    link: "https://teamtreehouse.com/library/css-layout-basics",
    lessons: [
      Lesson.find(9)
    ]
  },
  {
    source_title: "Responsive Layouts",
    link: "https://teamtreehouse.com/library/responsive-layouts",
    lessons: [
      Lesson.find(9)
    ]
  },
  {
    source_title: "Flexbox",
    link: "https://teamtreehouse.com/library/css-flexbox-layout",
    lessons: [
      Lesson.find(9)
    ]
  },
  {
    source_title: "HTML Forms",
    link: "https://teamtreehouse.com/library/html-forms",
    lessons: [
      Lesson.find(10)
    ]
  },
  {
    source_title: "CSS Selectors",
    link: "https://teamtreehouse.com/library/css-selectors",
    lessons: [
      Lesson.find(10)
    ]
  },
  {
    source_title: "Bootstrap Basics",
    link: "https://teamtreehouse.com/library/bootstrap-4-basics-2",
    lessons: [
      Lesson.find(10)
    ]
  },
  {
    source_title: "HTML Tables",
    link: "https://teamtreehouse.com/library/html-tables",
    lessons: [
      Lesson.find(11)
    ]
  },
  {
    source_title: "HTML Video and Audio",
    link: "https://teamtreehouse.com/library/html-video-and-audio-2",
    lessons: [
      Lesson.find(11)
    ]
  },
  {
    source_title: "Create Media Player",
    link: "https://teamtreehouse.com/library/create-a-media-player-with-mediaelementjs",
    lessons: [
      Lesson.find(11)
    ]
  },
  {
    source_title: "Intro to FE Optimization",
    link: "https://teamtreehouse.com/library/introduction-to-front-end-performance-optimization",
    lessons: [
      Lesson.find(11)
    ]
  },
  {
    source_title: "AJAX Basics",
    link: "https://teamtreehouse.com/library/ajax-basics-2",
    lessons: [
      Lesson.find(12)
    ]
  },
  {
    source_title: "Async JavaScript",
    link: "https://teamtreehouse.com/library/asynchronous-programming-with-javascript",
    lessons: [
      Lesson.find(12)
    ]
  },
  {
    source_title: "Fetch API",
    link: "https://teamtreehouse.com/library/working-with-the-fetch-api",
    lessons: [
      Lesson.find(12)
    ]
  },
  {
    source_title: "Object-Oriented JavaScript",
    link: "https://teamtreehouse.com/library/objectoriented-javascript-2",
    lessons: [
      Lesson.find(13)
    ]
  },
  {
    source_title: "Web Accessibility",
    link: "https://teamtreehouse.com/library/web-accessibility-compliance",
    lessons: [
      Lesson.find(13)
    ]
  },
  {
    source_title: "Website Optimization",
    link: "https://teamtreehouse.com/library/website-optimization",
    lessons: [
      Lesson.find(13)
    ]
  },
  {
    source_title: "React Basics",
    link: "https://teamtreehouse.com/library/react-basics-2",
    lessons: [
      Lesson.find(14)
    ]
  },
  {
    source_title: "React Components",
    link: "https://teamtreehouse.com/library/react-components",
    lessons: [
      Lesson.find(14)
    ]
  },
  {
    source_title: "Using Create React App",
    link: "https://teamtreehouse.com/library/using-create-react-app",
    lessons: [
      Lesson.find(14)
    ]
  },
  {
    source_title: "React Context",
    link: "https://teamtreehouse.com/library/react-context-api",
    lessons: [
      Lesson.find(15)
    ]
  },
  {
    source_title: "React Router 4",
    link: "https://teamtreehouse.com/library/react-router-4-basics-2",
    lessons: [
      Lesson.find(15)
    ]
  },
  {
    source_title: "React 16",
    link: "https://teamtreehouse.com/library/whats-new-in-react-16",
    lessons: [
      Lesson.find(15)
    ]
  },
  {
    source_title: "Data Fetching",
    link: "https://teamtreehouse.com/library/data-fetching-in-react",
    lessons: [
      Lesson.find(15)
    ]
  },
  {
    source_title: "Deploying a React App",
    link: "https://teamtreehouse.com/library/deploying-a-react-app",
    lessons: [
      Lesson.find(15)
    ]
  },
  {
    source_title: "Additional Reading on using Airtable API",
    link: "https://blog.crowdbotics.com/use-airtable-cloud-based-database-for-react-app/#:~:text=To%20use%20the%20Airtable%20API,component%20from%20the%20Material%20UI.",
    lessons: [
      Lesson.find(16)
    ]
  },
  {
    source_title: "Authentication patterns using Firebase",
    link: "https://www.robinwieruch.de/complete-firebase-authentication-react-tutorial",
    lessons: [
      Lesson.find(17)
    ]
  },
  {
    source_title: "Final Project Front-End",
    link: "https://learn.codethedream.org/front-end-ii/front-end-ii-week-5/",
    lessons: [
      Lesson.find(18)
    ]
  },
  {
    source_title: "SQL Basics",
    link: "https://teamtreehouse.com/library/sql-basics",
    lessons: [
      Lesson.find(19)
    ]
  },
  {
    source_title: "Modifying Data with SQL",
    link: "https://teamtreehouse.com/library/modifying-data-with-sql",
    lessons: [
      Lesson.find(19)
    ]
  },
  {
    source_title: "Reporting with SQL",
    link: "https://teamtreehouse.com/library/reporting-with-sql",
    lessons: [
      Lesson.find(19)
    ]
  },
  {
    source_title: "Querying Relational Databases",
    link: "https://teamtreehouse.com/library/querying-relational-databases",
    lessons: [
      Lesson.find(20)
    ]
  },
  {
    source_title: "Ruby Basics",
    link: "https://teamtreehouse.com/library/ruby-basics-2",
    lessons: [
      Lesson.find(20)
    ]
  },
  {
    source_title: "Ruby Collections",
    link: "https://teamtreehouse.com/library/ruby-collections",
    lessons: [
      Lesson.find(21)
    ]
  },
  {
    source_title: "Ruby Loops",
    link: "https://teamtreehouse.com/library/ruby-loops",
    lessons: [
      Lesson.find(21)
    ]
  },
  {
    source_title: "Ruby Objects and Classes",
    link: "https://teamtreehouse.com/library/ruby-objects-and-classes",
    lessons: [
      Lesson.find(21)
    ]
  },
  {
    source_title: "Ruby Blocks",
    link: "https://teamtreehouse.com/library/ruby-blocks",
    lessons: [
      Lesson.find(22)
    ]
  },
  {
    source_title: "Build an Address Book in Ruby",
    link: "https://teamtreehouse.com/library/build-an-address-book-in-ruby",
    lessons: [
      Lesson.find(22)
    ]
  },
  {
    source_title: "Ruby Modules",
    link: "https://teamtreehouse.com/library/ruby-modules",
    lessons: [
      Lesson.find(22)
    ]
  },
  {
    source_title: "Ruby Enumerable",
    link: "https://teamtreehouse.com/library/ruby-enumerable",
    lessons: [
      Lesson.find(23)
    ]
  },
  {
    source_title: "Ruby Core and Standard Library",
    link: "https://teamtreehouse.com/library/ruby-core-and-standard-library",
    lessons: [
      Lesson.find(23)
    ]
  },
  {
    source_title: "Ruby Gems",
    link: "https://teamtreehouse.com/library/ruby-gems",
    lessons: [
      Lesson.find(23)
    ]
  },
  {
    source_title: "Ruby Sinatra",
    link: "https://teamtreehouse.com/library/building-web-apps-with-sinatra",
    lessons: [
      Lesson.find(24)
    ]
  },
  {
    source_title: "Setting Up for Rails Development",
    link: "https://docs.google.com/presentation/d/1sJmfU4IsAI7XxzO_mmQka0qq8JRf6VIrMu9CAZgqUko/edit",
    lessons: [
      Lesson.find(25)
    ]
  },
  {
    source_title: "Ruby on Rails 5 Basics",
    link: "https://teamtreehouse.com/library/ruby-on-rails-5-basics",
    lessons: [
      Lesson.find(25)
    ]
  },
  {
    source_title: "Rails Routes and Resources",
    link: "https://teamtreehouse.com/library/rails-routes-and-resources",
    lessons: [
      Lesson.find(25)
    ]
  },
  {
    source_title: "Troubleshooting a Rails Application",
    link: "https://teamtreehouse.com/library/troubleshooting-a-rails-application",
    lessons: [
      Lesson.find(26)
    ]
  },
  {
    source_title: "Active Record Associations in Rails",
    link: "https://teamtreehouse.com/library/active-record-associations-in-rails",
    lessons: [
      Lesson.find(26)
    ]
  },
  {
    source_title: "Rails Validation and Error Handling",
    link: "https://docs.google.com/presentation/d/1rcn2UVcTbDBNuu8s6FTsWDKpTZUy9lzsknjDX8QXYdk/edit",
    lessons: [
      Lesson.find(27)
    ]
  },
  {
    source_title: "Rails Testing with Rspec",
    link: "https://docs.google.com/presentation/d/1SLed-cHT_egC1CAVAKrs1c5tPm0Hne8wNdm_nMFXSrQ/edit",
    lessons: [
      Lesson.find(27)
    ]
  },
  {
    source_title: "Rails Guided Assignment",
    link: "Rails Guided Assignment",
    lessons: [
      Lesson.find(28)
    ]
  },
  {
    source_title: "Bootstrap 4 Basics",
    link: "https://teamtreehouse.com/library/bootstrap-4-basics-2",
    lessons: [
      Lesson.find(29)
    ]
  },
  {
    source_title: "Bootstrap and Rails",
    link: "https://learn.codethedream.org/styling-your-rails-application-with-bootstrap/",
    lessons: [
      Lesson.find(29)
    ]
  },
  {
    source_title: "Building APIs, Swagger, Ajax",
    link: "https://learn.codethedream.org/backend-2-json-rest-api-swagger-ajax/",
    lessons: [
      Lesson.find(30)
    ]
  },
  {
    source_title: "Final Project",
    link: "https://learn.codethedream.org/rails-spring-2020-final-project/",
    lessons: [
      Lesson.find(31)
    ]
  }
])


users = User.create([
  {
    username: "user1",
    email: "user1@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "admin"
  },
  {
    username: "user2",
    email: "user2@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "staff"
  },
  {
    username: "user3",
    email: "user3@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "mentor"
  },
  {
    username: "user4",
    email: "user4@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "mentor"
  },
  {
    username: "user5",
    email: "user5@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "mentor"
  },
  {
    username: "user6",
    email: "user6@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "mentor"
  },
  {
    username: "user7",
    email: "user7@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "student"
  },
  {
    username: "user8",
    email: "user8@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "student"
  },
  {
    username: "user9",
    email: "user9@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "student"
  },
  {
    username: "user10",
    email: "user10@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "student"
  },
  {
    username: "user11",
    email: "user11@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "student"
  },
  {
    username: "user12",
    email: "user12@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: "student"
  }
])

staffs = Staff.create([
  {
    title: "webspace Admin",
    first_name: "Lori",
    last_name: "Administrator",
    user_id: 1
  },
  {
    title: "Admin",
    first_name: "Rayn",
    last_name: "Rayu",
    user_id: 2
  }
])

mentors = Mentor.create([
  {
    title: "software engineer",
    first_name: "Stevenson",
    last_name: "Gabitto",
    user_id: 3
  },
  {
    title: "software engineer",
    first_name: "Mark",
    last_name: "Teacher",
    user_id: 4
  },
  {
    title: "software engineer",
    first_name: "Rayn",
    last_name: "Velasquez",
    user_id: 5
  },
  {
    title: "software engineer",
    first_name: "Tom",
    last_name: "Rau",
    user_id: 6
  }
])

students = Student.create([
  {
    first_name: "Jorge",
    last_name: "Gabitto",
    enrolled: true,
    user_id: 7
  },
  {
    first_name: "Sinan",
    last_name: "Cengiz",
    enrolled: true,
    user_id: 8
  },
  {
    first_name: "Denilson",
    last_name: "Velasquez",
    enrolled: true,
    user_id: 9
  },
  {
    first_name: "Johan",
    last_name: "Ochoa",
    enrolled: true,
    user_id: 10
  },
  {
    first_name: "Lu",
    last_name: "Ar",
    enrolled: true,
    user_id: 11
  },
  {
    first_name: "Natalli",
    last_name: "Natova",
    enrolled: true,
    user_id: 12
  }
])

mentor_courses = MentorCourse.create([
  {
    mentor_id: 1,
    course_id: 1,
    day: 'Monday', 
    start_time: "05:00pm",
    end_time: "06:00pm"
  },
  {
    mentor_id: 2,
    course_id: 2,
    day: 'Monday', 
    start_time: "05:00pm",
    end_time: "06:00pm"
  },
  {
    mentor_id: 3,
    course_id: 3,
    day: 'Tuesday', 
    start_time: "05:00pm",
    end_time: "06:00pm"
  },
  {
    mentor_id: 4,
    course_id: 4,
    day: 'Tuesday', 
    start_time: "05:00pm",
    end_time: "06:00pm"
  },
  {
    mentor_id: 1,
    course_id: 4,
    day: 'Wednesday', 
    start_time: "05:00pm",
    end_time: "06:00pm"
  },
  {
    mentor_id: 2,
    course_id: 3,
    day: 'Thursday', 
    start_time: "05:00pm",
    end_time: "06:00pm"
  },
  {
    mentor_id: 3,
    course_id: 2,
    day: 'Friday', 
    start_time: "05:00pm",
    end_time: "06:00pm"
  },
  {
    mentor_id: 4,
    course_id: 1,
    day: 'Saturday', 
    start_time: "05:00pm",
    end_time: "06:00pm"
  }
])

student_weekly_progress = StudentWeeklyProgress.create([
  {
    student_id: Student.find(1).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 1).id,
    week_number: 1,
    week: Week.find_by(course_id: 4, week_number: 1),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 2).id,
    week_number: 2,
    week: Week.find_by(course_id: 4, week_number: 2),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 3).id,
    week_number: 3,
    week: Week.find_by(course_id: 4, week_number: 3),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 4).id,
    week_number: 4,
    week: Week.find_by(course_id: 4, week_number: 4),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 5).id,
    week_number: 5,
    week: Week.find_by(course_id: 4, week_number: 5),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 6).id,
    week_number: 6,
    week: Week.find_by(course_id: 4, week_number: 6),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 7).id,
    week_number: 7,
    week: Week.find_by(course_id: 4, week_number: 7),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 8).id,
    week_number: 8,
    week: Week.find_by(course_id: 4, week_number: 8),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 9).id,
    week_number: 9,
    week: Week.find_by(course_id: 4, week_number: 9),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 10).id,
    week_number: 10,
    week: Week.find_by(course_id: 4, week_number: 10),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 11).id,
    week_number: 11,
    week: Week.find_by(course_id: 4, week_number: 11),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 12).id,
    week_number: 12,
    week: Week.find_by(course_id: 4, week_number: 12),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 13).id,
    week_number: 13,
    week: Week.find_by(course_id: 4, week_number: 13),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 14).id,
    week_number: 14,
    week: Week.find_by(course_id: 4, week_number: 14),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 15).id,
    week_number: 15,
    week: Week.find_by(course_id: 4, week_number: 15),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 16).id,
    week_number: 16,
    week: Week.find_by(course_id: 4, week_number: 16),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 17).id,
    week_number: 17,
    week: Week.find_by(course_id: 4, week_number: 17),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 18).id,
    week_number: 18,
    week: Week.find_by(course_id: 4, week_number: 18),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 19).id,
    week_number: 19,
    week: Week.find_by(course_id: 4, week_number: 19),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 20).id,
    week_number: 20,
    week: Week.find_by(course_id: 4, week_number: 20),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 21).id,
    week_number: 21,
    week: Week.find_by(course_id: 4, week_number: 21),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 22).id,
    week_number: 22,
    week: Week.find_by(course_id: 4, week_number: 22),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 23).id,
    week_number: 23,
    week: Week.find_by(course_id: 4, week_number: 23),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(1).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 24).id,
    week_number: 24,
    week: Week.find_by(course_id: 4, week_number: 24),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 1).id,
    week_number: 1,
    week: Week.find_by(course_id: 4, week_number: 1),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 2).id,
    week_number: 2,
    week: Week.find_by(course_id: 4, week_number: 2),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 3).id,
    week_number: 3,
    week: Week.find_by(course_id: 4, week_number: 3),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 4).id,
    week_number: 4,
    week: Week.find_by(course_id: 4, week_number: 4),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 5).id,
    week_number: 5,
    week: Week.find_by(course_id: 4, week_number: 5),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 6).id,
    week_number: 6,
    week: Week.find_by(course_id: 4, week_number: 6),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 7).id,
    week_number: 7,
    week: Week.find_by(course_id: 4, week_number: 7),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 8).id,
    week_number: 8,
    week: Week.find_by(course_id: 4, week_number: 8),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 9).id,
    week_number: 9,
    week: Week.find_by(course_id: 4, week_number: 9),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 10).id,
    week_number: 10,
    week: Week.find_by(course_id: 4, week_number: 10),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 11).id,
    week_number: 11,
    week: Week.find_by(course_id: 4, week_number: 11),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 12).id,
    week_number: 12,
    week: Week.find_by(course_id: 4, week_number: 12),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 13).id,
    week_number: 13,
    week: Week.find_by(course_id: 4, week_number: 13),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 14).id,
    week_number: 14,
    week: Week.find_by(course_id: 4, week_number: 14),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 15).id,
    week_number: 15,
    week: Week.find_by(course_id: 4, week_number: 15),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 16).id,
    week_number: 16,
    week: Week.find_by(course_id: 4, week_number: 16),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 17).id,
    week_number: 17,
    week: Week.find_by(course_id: 4, week_number: 17),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 18).id,
    week_number: 18,
    week: Week.find_by(course_id: 4, week_number: 18),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 19).id,
    week_number: 19,
    week: Week.find_by(course_id: 4, week_number: 19),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 20).id,
    week_number: 20,
    week: Week.find_by(course_id: 4, week_number: 20),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 21).id,
    week_number: 21,
    week: Week.find_by(course_id: 4, week_number: 21),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 22).id,
    week_number: 22,
    week: Week.find_by(course_id: 4, week_number: 22),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 23).id,
    week_number: 23,
    week: Week.find_by(course_id: 4, week_number: 23),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(2).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 24).id,
    week_number: 24,
    week: Week.find_by(course_id: 4, week_number: 24),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 1).id,
    week_number: 1,
    week: Week.find_by(course_id: 4, week_number: 1),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 2).id,
    week_number: 2,
    week: Week.find_by(course_id: 4, week_number: 2),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 3).id,
    week_number: 3,
    week: Week.find_by(course_id: 4, week_number: 3),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 4).id,
    week_number: 4,
    week: Week.find_by(course_id: 4, week_number: 4),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 5).id,
    week_number: 5,
    week: Week.find_by(course_id: 4, week_number: 5),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 6).id,
    week_number: 6,
    week: Week.find_by(course_id: 4, week_number: 6),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 7).id,
    week_number: 7,
    week: Week.find_by(course_id: 4, week_number: 7),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 8).id,
    week_number: 8,
    week: Week.find_by(course_id: 4, week_number: 8),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 9).id,
    week_number: 9,
    week: Week.find_by(course_id: 4, week_number: 9),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 10).id,
    week_number: 10,
    week: Week.find_by(course_id: 4, week_number: 10),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 11).id,
    week_number: 11,
    week: Week.find_by(course_id: 4, week_number: 11),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 12).id,
    week_number: 12,
    week: Week.find_by(course_id: 4, week_number: 12),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 13).id,
    week_number: 13,
    week: Week.find_by(course_id: 4, week_number: 13),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 14).id,
    week_number: 14,
    week: Week.find_by(course_id: 4, week_number: 14),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 15).id,
    week_number: 15,
    week: Week.find_by(course_id: 4, week_number: 15),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 16).id,
    week_number: 16,
    week: Week.find_by(course_id: 4, week_number: 16),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 17).id,
    week_number: 17,
    week: Week.find_by(course_id: 4, week_number: 17),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 18).id,
    week_number: 18,
    week: Week.find_by(course_id: 4, week_number: 18),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 19).id,
    week_number: 19,
    week: Week.find_by(course_id: 4, week_number: 19),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 20).id,
    week_number: 20,
    week: Week.find_by(course_id: 4, week_number: 20),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 21).id,
    week_number: 21,
    week: Week.find_by(course_id: 4, week_number: 21),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 22).id,
    week_number: 22,
    week: Week.find_by(course_id: 4, week_number: 22),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 23).id,
    week_number: 23,
    week: Week.find_by(course_id: 4, week_number: 23),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(3).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 24).id,
    week_number: 24,
    week: Week.find_by(course_id: 4, week_number: 24),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 1).id,
    week_number: 1,
    week: Week.find_by(course_id: 4, week_number: 1),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 2).id,
    week_number: 2,
    week: Week.find_by(course_id: 4, week_number: 2),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 3).id,
    week_number: 3,
    week: Week.find_by(course_id: 4, week_number: 3),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 4).id,
    week_number: 4,
    week: Week.find_by(course_id: 4, week_number: 4),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 5).id,
    week_number: 5,
    week: Week.find_by(course_id: 4, week_number: 5),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 6).id,
    week_number: 6,
    week: Week.find_by(course_id: 4, week_number: 6),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 7).id,
    week_number: 7,
    week: Week.find_by(course_id: 4, week_number: 7),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 8).id,
    week_number: 8,
    week: Week.find_by(course_id: 4, week_number: 8),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 9).id,
    week_number: 9,
    week: Week.find_by(course_id: 4, week_number: 9),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 10).id,
    week_number: 10,
    week: Week.find_by(course_id: 4, week_number: 10),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 11).id,
    week_number: 11,
    week: Week.find_by(course_id: 4, week_number: 11),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 12).id,
    week_number: 12,
    week: Week.find_by(course_id: 4, week_number: 12),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 13).id,
    week_number: 13,
    week: Week.find_by(course_id: 4, week_number: 13),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 14).id,
    week_number: 14,
    week: Week.find_by(course_id: 4, week_number: 14),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 15).id,
    week_number: 15,
    week: Week.find_by(course_id: 4, week_number: 15),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 16).id,
    week_number: 16,
    week: Week.find_by(course_id: 4, week_number: 16),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 17).id,
    week_number: 17,
    week: Week.find_by(course_id: 4, week_number: 17),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 18).id,
    week_number: 18,
    week: Week.find_by(course_id: 4, week_number: 18),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 19).id,
    week_number: 19,
    week: Week.find_by(course_id: 4, week_number: 19),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 20).id,
    week_number: 20,
    week: Week.find_by(course_id: 4, week_number: 20),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 21).id,
    week_number: 21,
    week: Week.find_by(course_id: 4, week_number: 21),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 22).id,
    week_number: 22,
    week: Week.find_by(course_id: 4, week_number: 22),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 23).id,
    week_number: 23,
    week: Week.find_by(course_id: 4, week_number: 23),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(4).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 24).id,
    week_number: 24,
    week: Week.find_by(course_id: 4, week_number: 24),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 1).id,
    week_number: 1,
    week: Week.find_by(course_id: 4, week_number: 1),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 2).id,
    week_number: 2,
    week: Week.find_by(course_id: 4, week_number: 2),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 3).id,
    week_number: 3,
    week: Week.find_by(course_id: 4, week_number: 3),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 4).id,
    week_number: 4,
    week: Week.find_by(course_id: 4, week_number: 4),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 5).id,
    week_number: 5,
    week: Week.find_by(course_id: 4, week_number: 5),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 6).id,
    week_number: 6,
    week: Week.find_by(course_id: 4, week_number: 6),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 7).id,
    week_number: 7,
    week: Week.find_by(course_id: 4, week_number: 7),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 8).id,
    week_number: 8,
    week: Week.find_by(course_id: 4, week_number: 8),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 9).id,
    week_number: 9,
    week: Week.find_by(course_id: 4, week_number: 9),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 10).id,
    week_number: 10,
    week: Week.find_by(course_id: 4, week_number: 10),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 11).id,
    week_number: 11,
    week: Week.find_by(course_id: 4, week_number: 11),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 12).id,
    week_number: 12,
    week: Week.find_by(course_id: 4, week_number: 12),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 13).id,
    week_number: 13,
    week: Week.find_by(course_id: 4, week_number: 13),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 14).id,
    week_number: 14,
    week: Week.find_by(course_id: 4, week_number: 14),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 15).id,
    week_number: 15,
    week: Week.find_by(course_id: 4, week_number: 15),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 16).id,
    week_number: 16,
    week: Week.find_by(course_id: 4, week_number: 16),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 17).id,
    week_number: 17,
    week: Week.find_by(course_id: 4, week_number: 17),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 18).id,
    week_number: 18,
    week: Week.find_by(course_id: 4, week_number: 18),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 19).id,
    week_number: 19,
    week: Week.find_by(course_id: 4, week_number: 19),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 20).id,
    week_number: 20,
    week: Week.find_by(course_id: 4, week_number: 20),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 21).id,
    week_number: 21,
    week: Week.find_by(course_id: 4, week_number: 21),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 22).id,
    week_number: 22,
    week: Week.find_by(course_id: 4, week_number: 22),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 23).id,
    week_number: 23,
    week: Week.find_by(course_id: 4, week_number: 23),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(5).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 24).id,
    week_number: 24,
    week: Week.find_by(course_id: 4, week_number: 24),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 1).id,
    week_number: 1,
    week: Week.find_by(course_id: 4, week_number: 1),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 2).id,
    week_number: 2,
    week: Week.find_by(course_id: 4, week_number: 2),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 3).id,
    week_number: 3,
    week: Week.find_by(course_id: 4, week_number: 3),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 4).id,
    week_number: 4,
    week: Week.find_by(course_id: 4, week_number: 4),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 2,
    week_id: Week.find_by(course_id: 4, week_number: 5).id,
    week_number: 5,
    week: Week.find_by(course_id: 4, week_number: 5),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 6).id,
    week_number: 6,
    week: Week.find_by(course_id: 4, week_number: 6),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 7).id,
    week_number: 7,
    week: Week.find_by(course_id: 4, week_number: 7),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 8).id,
    week_number: 8,
    week: Week.find_by(course_id: 4, week_number: 8),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 9).id,
    week_number: 9,
    week: Week.find_by(course_id: 4, week_number: 9),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 3,
    week_id: Week.find_by(course_id: 4, week_number: 10).id,
    week_number: 10,
    week: Week.find_by(course_id: 4, week_number: 10),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 11).id,
    week_number: 11,
    week: Week.find_by(course_id: 4, week_number: 11),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 12).id,
    week_number: 12,
    week: Week.find_by(course_id: 4, week_number: 12),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 13).id,
    week_number: 13,
    week: Week.find_by(course_id: 4, week_number: 13),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 14).id,
    week_number: 14,
    week: Week.find_by(course_id: 4, week_number: 14),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 15).id,
    week_number: 15,
    week: Week.find_by(course_id: 4, week_number: 15),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 4,
    week_id: Week.find_by(course_id: 4, week_number: 16).id,
    week_number: 16,
    week: Week.find_by(course_id: 4, week_number: 16),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 17).id,
    week_number: 17,
    week: Week.find_by(course_id: 4, week_number: 17),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 18).id,
    week_number: 18,
    week: Week.find_by(course_id: 4, week_number: 18),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 19).id,
    week_number: 19,
    week: Week.find_by(course_id: 4, week_number: 19),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 20).id,
    week_number: 20,
    week: Week.find_by(course_id: 4, week_number: 20),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 21).id,
    week_number: 21,
    week: Week.find_by(course_id: 4, week_number: 21),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 22).id,
    week_number: 22,
    week: Week.find_by(course_id: 4, week_number: 22),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 23).id,
    week_number: 23,
    week: Week.find_by(course_id: 4, week_number: 23),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
  {
    student_id: Student.find(6).id,
    unit_id: 5,
    week_id: Week.find_by(course_id: 4, week_number: 24).id,
    week_number: 24,
    week: Week.find_by(course_id: 4, week_number: 24),
    instructions_progress: 0,
    resources_progress: 0,
    assignment_progress: 0,
    assignment_submission: '',
    total_progress: 0,
  },
])

registered_mentor_sessions = RegisteredMentorSession.create([
  {
    student_id: Student.find_by(user_id: 7).id,
    week_number: 1,
    student_weekly_progress_id: StudentWeeklyProgress.find_by(student_id: 1, week_number: 1).id,
    mentor_course_id: MentorCourse.find_by(course_id: 4, mentor_id: 4).id,
    comments: 'I want to work on deploying rails in heroku.'
  },
  {
    student_id: Student.find_by(user_id: 7).id,
    week_number: 1,
    student_weekly_progress_id: StudentWeeklyProgress.find_by(student_id: 1, week_number: 1).id,
    mentor_course_id: MentorCourse.find_by(course_id: 4, mentor_id: 1).id,
    comments: 'I am stuck using React hooks.'
  },
  {
    student_id: Student.find_by(user_id: 7).id,
    week_number: 2,
    student_weekly_progress_id: StudentWeeklyProgress.find_by(student_id: 1, week_number: 2).id,
    mentor_course_id: MentorCourse.find_by(course_id: 4, mentor_id: 4).id,
    # mentor_courses: MentorCourse.find_by(course_id: 4),
    comments: 'I hate coding!'
  },
  {
    student_id: Student.find_by(user_id: 7).id,
    week_number: 2,
    student_weekly_progress_id: StudentWeeklyProgress.find_by(student_id: 1, week_number: 2).id,
    mentor_course_id: MentorCourse.find_by(course_id: 4, mentor_id: 1).id,
    # mentor_courses: MentorCourse.find_by(course_id: 4),
    comments: 'I love ctd.'
  },
  {
    student_id: Student.find_by(user_id: 7).id,
    week_number: 3,
    student_weekly_progress_id: StudentWeeklyProgress.find_by(student_id: 1, week_number: 3).id,
    mentor_course_id: MentorCourse.find_by(course_id: 4, mentor_id: 4).id,
    # mentor_courses: MentorCourse.find_by(course_id: 4),
    comments: 'I hate coding again.'
  },
  {
    student_id: Student.find_by(user_id: 7).id,
    week_number: 3,
    student_weekly_progress_id: StudentWeeklyProgress.find_by(student_id: 1, week_number: 3).id,
    mentor_course_id: MentorCourse.find_by(course_id: 4, mentor_id: 1).id,
    # mentor_courses: MentorCourse.find_by(course_id: 4),
    comments: 'I am in love with ruby'
  },
])

student_courses = StudentCourse.create([
  {
    student_id: 1,
    course_id: 4
  },
  {
    student_id: 2,
    course_id: 4
  },
  {
    student_id: 3,
    course_id: 4
  },
  {
    student_id: 4,
    course_id: 4
  },
  {
    student_id: 5,
    course_id: 4
  },
  {
    student_id: 6,
    course_id: 4
  },
  {
    student_id: 7,
    course_id: 4
  },
])