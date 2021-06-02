# Vimcal Take-Home Assignment

The assignment is to implement a basic version of Twitter. The end goal is to have a working web app where a user can do the basic functions of Twitter, like login, Tweet, follow others, etc.

We've listed out a set of features below to implement. We suggest you do them in that order, as they build on top of each other.

**This exercise is designed to take longer than 3 hours, so we do not expect you to finish all the features.**

1. User account and sign up flow
    1. Basic login authentication
        1. A simple string for email and password is good enough
        2. No need to focus on security or use oauth
    2. Create username
2. A user can post a text post
3. A user can follow other users
4. A user can see the posts of those they follow
5. A user can like posts
6. A user’s view is influenced by likes
7. A user can repost a post that they see
8. A user can comment on a post that they see
9. A user can post images with optional text
10. A user can see posted images of those they follow
11. A user should receive notifications for the following
    1. Another user likes one of their posts or reposts
    2. Another user reposts one of their posts or reposts
    3. User has a new follower

## Setup

1. Git clone https://github.com/johnli611/vimmer.git
2. yarn install (install yarn if you haven't yet)
3. bundle install (you may have to update your Ruby version, or change the version in Gemfile to suit your system)
4. Run both the front-end and back-end with `rails server`, and go to localhost:3000 in your browser
5. Make front-end changes starting with the `hello_react.jsx` file, which currently displays a Hello World message 

## Rubric

You will be graded on the following (in order of priority):

- Functionality
    - Does the app work?
- Code readability and style
- API design
- Test coverage
- Product sense and UX
    - Do the components make sense to a new user?

You will NOT be graded on the following:

- UI and visual design
    - We don't care that it "looks nice", what colors you pick, or if it's all black and white. Please spend minimal time on CSS
