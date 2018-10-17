# Private Journal
## Clone the Repo
```bash
git clone git@github.com:zluo16/private-journal-metis.git
```
## To Run the App
- run `bundle install`
- run `rails s` to fire up the server

Now you can access the app at http://localhost:3000

## Biggest Challenge I Ran Into
The part that I got stuck on the longest would probably be handle routing with nested routes. I settled with using nested routes because I wanted to make the has-many-belongs-to relationship between journals and entries clear.

The application has a lot of functionalities that involve navigating back and forth between journals and individual entries within journals. It took me a minute to get used to using prefix routing methods with nested routes.

## What I Learned
I'm used to using Rails primarily as an API and passing frontend functionality off to frontend frameworks so handling nested routes in Rails is not something that I do very often. In fact, handling views in Rails is something that I'm learning more about in general.

## What I Would Have Done Differently
If I had more time, I would have certainly wrote some tests. There were multiple points when I was bug fixing where I wished that I wrote tests.

Whenever I'm time boxed for a couple hours I opt not to do TDD because it's usually quicker in the short term, but it really bites you when you run into bugs. Because of this, it's usually almost always more efficient to do TDD on longer projects.
