# Rails Book Store

It's time to show off everything you've learned about Rails development!

## Objectives
+ ActiveRecord Migrations and Associations
+ ActiveRecord Validations
+ Understanding RESTful Routes
+ Performing CRUD actions in Rails controllers
+ Using strong params to parse nested parameters

## Domain

You've been contracted by a book seller to work on the back end of their site! The company has several locations and needs to keep track of which authors and which books are sold in each of their stores.

### Store

Each of their locations should be represented by a `Store` model. Stores must be able to carry multiple books. Additionally, they want to keep track of the name and phone number for each Store. Phone numbers are strings in `xxx-xxx-xxxx` format. Stores also have many authors through books, but make sure that `Store#authors` returns only unique authors.

### Book

This company only deals in books written by one author and they need to also keep track of the books title and its price. Every book must have a title and a price greater than 0.

### Author

Authors, of course, can write multiple books and this company also wants to save a `first_name` and `last_name` for each author. Authors should not be able to have the same first *and* last name, but two authors may have the same first name if their last names are different. Authors also have many stores through their books and `Author#stores` should return only unique stores. 

##### Hint

This might be a good chance to look up `distict` in the [Active Record Associates](https://guides.rubyonrails.org/association_basics.html) docs, and `scope` in the `uniqueness` section of the [Validations](https://guides.rubyonrails.org/active_record_validations.html) docs.

## Deliverables

The font end developer has already written the views and set up the routes for our app: your job is to work on the models and controllers. Take a look at the routes and see if you can figure out what the controller needs to do:

```
       Prefix Verb   URI Pattern                         Controller#Action
  store_books GET    /stores/:store_id/books(.:format)   books#index
store_authors GET    /stores/:store_id/authors(.:format) authors#index
       stores GET    /stores(.:format)                   stores#index
              POST   /stores(.:format)                   stores#create
    new_store GET    /stores/new(.:format)               stores#new
   edit_store GET    /stores/:id/edit(.:format)          stores#edit
        store GET    /stores/:id(.:format)               stores#show
              PATCH  /stores/:id(.:format)               stores#update
              PUT    /stores/:id(.:format)               stores#update
              DELETE /stores/:id(.:format)               stores#destroy
        books GET    /books(.:format)                    books#index
              POST   /books(.:format)                    books#create
     new_book GET    /books/new(.:format)                books#new
    edit_book GET    /books/:id/edit(.:format)           books#edit
         book GET    /books/:id(.:format)                books#show
              PATCH  /books/:id(.:format)                books#update
              PUT    /books/:id(.:format)                books#update
              DELETE /books/:id(.:format)                books#destroy
      authors GET    /authors(.:format)                  authors#index
       author GET    /authors/:id(.:format)              authors#show
```

Notice that some of these routes map to the same action!

### StoresController

The Stores controller needs to suport the following actions: index, create, new, show, edit, update, and destroy. These actions need to perform basic CRUD operations on the `Store` model. Remember, in actions like `create` and `update` to make sure that validations passed and render the appropriate form accordingly.

### BooksController

The Books controller needs to support the following actions: index, new, create, show, edit, update, destroy. These actions should perform CRUD operations on the `Book` model. Remember to check vallidations when creating and updating and object. The `new` from includes a nested form written for you for its associated model. If `params[:book][:author_attributes]` contains nonblank fields a new author should be created, otherwise the author should be found from `params[:author_id]`. If these seems tricky, try googling `accepts_nested_attributes_for` and `reject_if`.

Notice that the index action is linked to two routes! The `index.html.erb` expects an instance variable `@books` to be set. If the user goes to the `/books` route, `@books` should be an array of all books. If they get their from `/stores/:store_id/books`, then `@books` should be all the books at a given store. Can we look at the `params` hash to see which route we came from?

### AuthorsController

The Authors controller needs to support the following action: index, show. These actions should set `@authors` or `@author` respectively. Notice that `AuthorsController#index` is linked to two routes just like `BooksController#index`. Just like above, if the user goes to `/authors` they should see all authors, but if they go to `/stores/:store_id/authors` they should she only the authors at that store.
