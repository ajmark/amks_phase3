A&M Karate School App :: 67-272
===
This is a basic Rails app that was built as a solution to phase 2 (of 5) of the course project in the spring of 2013.  As this is only the second phase, no controllers or views are here and only a minimal layout file; more work on these items will occur in phase 3.

This project does require the use of several gems to work properly.  Check the Gemfile to see which gems are used.  In order to make sure everyone is on the same page moving forward, specific versions of gems have been specified in the Gemfile, so run bundle to make sure you are using the correct versions.

There is a populate script that is available by running `rake db:populate` on the command line.  This will create several hundred students across 9 different age ranges and in each rank.  Along with three sections, breaking, sparring and forms, this will give students a realistic set of data in their development database to test their application in the browser.

Note that there are some extras provided in the project to help students out in building phase 3.  Most importantly, there are a set of features in the `features/` directory that describe clearly what is expected for CRUD functionality related to events, students and sections.  These features can be run on the command line with `bundle exec cucumber` to see which features pass/fail.  We are using test-driven development here (much like we did in lab 7) so you have a pretty good set of features to guide your development efforts.  For phase 3 you need to build out the functionality so that all these scenarios (29 scenarios in 4 sets of features) pass. Any scenarios that do not pass will automatically be penalized in the grading of phase 3.

*One notable absence in the cucumber tests are features related to registration.*  There are several ways of handling this (some demo'd in class) and you have some freedom in doing this so long as it (1) works, (2) is easy and straight-forward, and (3) tries to adhere to the principles of user-centered design discussed in class.  Registration will be manually tested when phase 3 is graded.

The class is Application Design & Development and is for Information Systems students at Carnegie Mellon University (campuses both in Pittsburgh and Doha).  We have posted this code on github.com in a public directory so that (a) it is readily accessible to students in both PA and Qatar and (b) that students will get a little familiarity with using github.com.
