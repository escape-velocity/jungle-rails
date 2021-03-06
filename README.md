# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Preview of Product 

!["Screenshot of the home page"](https://github.com/escape-velocity/jungle-rails/blob/master/images/Home%20page%20with%20signed%20in%20user.png)
!["Screenshot of the Product page with Review below"](https://github.com/escape-velocity/jungle-rails/blob/master/images/Product%20page%20with%20reviews%20form.png)
!["Screenshot of the Shopping Cart with logged in user"](https://github.com/escape-velocity/jungle-rails/blob/master/images/Purchase%20Cart%20for%20logged%20in%20users.png)
!["Screenshot of the Payment pop up"](https://github.com/escape-velocity/jungle-rails/blob/master/images/Order%20pop%20up%20for%20credit%20card.png)
!["Screenshot of the Sign up page"](https://github.com/escape-velocity/jungle-rails/blob/master/images/Signup%20page%20form.png)

## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
