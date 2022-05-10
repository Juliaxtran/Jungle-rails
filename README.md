# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of learning Ruby. Using exiting code style the purpose of this project was to implement new features.  Previous learning tactics was aplied to research and become familiar with a new paradigm, language and framework. Feature and bug-fix requests were fixed. Testing for the app was done using Rspec and Cypress.

Some of the features that were added include :
Sold Out Badge - When a product has 0 quantity, a sold out badge is displayed on the product list page.
Admin Categories - Admin users can list and create new categories.
                 - Admin can add new products using the new category.
                 - Restful resourses were used.

User Authentication - Visitorrs can go to the  registration page from any page in order to create an account
                    -  Visitors can sign up for a user account with my e-mail, password, first name and last name
                    -  Visitors  can sign in using an e-mail and password
                    - Users can loggout from any page
                    - Users cannot  sign up with an existing e-mail address (uniqueness validation)
                    - Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem
                    -  User errors are shown when something goes wrong with login-in or signing up
Enhancement: Order Details Page -  The order page contains items, their image, name, description, quantities and line item totals
                                - The final amount for the order is displayed
                                - The email that was used to place the order is displayed

Examples of the bugs that were fixed include missing admin security and error handling when checking out with an empty cart.

## Screenshots
!["Screen shot of main page"]('https://github.com/Juliaxtran/Jungle-rails/blob/master/images/home.png')
!["Screen shot of cart"]('https://github.com/Juliaxtran/Jungle-rails/blob/master/images/cart.png')
!["Screen shot of stripe payment"]('https://github.com/Juliaxtran/Jungle-rails/blob/master/images/stripe.png')
!["Screen shot of error handling"]('https://github.com/Juliaxtran/Jungle-rails/blob/master/images/errors.png')


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server




## Stripe Testing
- Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.
- More information in their docs: https://stripe.com/docs/testing#cards

## Testing
- Rspec
- Cypress


## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

