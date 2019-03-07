# Rails Book Store

## before you submit
-
## todo

- i also suggested to jake that we bold the things we do in advance for students
- be v explicit about the steps the students need to follow
- set a custom route to an action

students should:
- write controller method given existing route and view
- write new route (custom) given existing view and controller method
- write a new view to post to an existing route and controller
- debug a broken controller action with an existing route and view

## Please help, our project is almost done!
Your project partner, Frederick Flatiron, has done a considerable amount of work on your Rails Project, but he needs you to help out with the final portion!

Here's an email from Fred:

---
Hi!
Thanks for agreeing to take a look at the last part of our Book Store Application!
I've finished a fair bit of work, but I'd love your help taking us through to the end.

**Here's what I've got so far:**

Our app is for a Book Company to keep track of which books are available at different locations. I have already written all our models, but here's a sumary of our domain:

1. A `Location`
    * Must have a name
	* Must have a phone number, in xxx-xxx-xxxx format
	* Has many books
	* Has many authors (through books)
2. A `Book`
    * Must have a title
	* Must have a price greater than 0
    * Belongs to an author
	* Has many locations
3. An `Author`
    * Must have a first name
	* Must have a last name
	* First and last name together must be unique
	* Has many books
	* Has many locations through books
	
I've also set up a join model `BookLocation` for the many-to-many relationship between `Book` and `Location`.

TODO: Description of controller layer
TODO: Description of view layer
	
**Here's what I need you to do:**
1. Finish `LocationsController#create` and `LocationsController#update`

I wrote a strong params helper method `LocationsController#location_params`, but I need you to use this method to finish the `create` and `update` actions. They are pretty similar to each other, both should:
    1. Create a new, or update an existing model
	2. Check that the model is valid
	3. If the model is invalid, redirect back to the view the user came from
	4. If the model is valid, redirect to the model's show page

2. Add a new route

Our `config/routes.rb` is almost done! I just need one thing added: There is already an action `LocationsController#max` that returns a show view for the location with the most books. Can you create a route to this action? The action and the view are already finished.

3. Write the authors/show.html.erb

All the views for `Book` and `Location` are done, but I still need you to write a show page for the `Author` model. This page should show the author's fill name and two lists: one showing the titles of all the books they've written and one showing the names of the locations carrying this author.

4. Fix BooksController#book_params

Last thing: I'm not sure why, but `BooksController` is having trouble creating and updating books. I think that the problem is with the `BooksController#book_params` method. Can you debug this method and get it working?

Don't forget to run `bundle install` and `rails db:setup` before you run the app!

---
