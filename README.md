# Rails Book Store

## Objectives
+ ActiveRecord Migrations and Associations
+ ActiveRecord Validations

## Domain

You've been contracted by a book seller to work on the back end of their site! The company has several locations and needs to keep track of which authors and which books are sold in each of their stores.

### Store

Each of their locations should be represented by a `Store` model. Stores must be able to carry multiple books. Additionally, they want to keep track of the name and phone number for each Store. Phone numbers should always be saved in a `xxx-xxx-xxxx` format. It should be easy to look up all the unique authors whose books are sold at a particular store.

### Book

This company only deals in books written by one author and they need to also keep track of the books title and its price. They don't give any books away, so all books should cost more than $0.00.

### Author

Authors, of course, can write multiple books and this company also wants to save a `first_name` and `last_name` for each author. It should also be easy to look up all the unique stores which carry a book by a particular author.

##### Hint

This might be a good chance to look up `distict` in the [Active Record Associates](https://guides.rubyonrails.org/association_basics.html) docs.
