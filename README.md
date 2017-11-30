# Jungle

A mini e-commerce application built to resemble a project left by a developer midway through.

Functionality added:
- Product ratings system
- Product sold-out notification
- Admin category editing functionality
- User authentication
- Added further information to Order Details page
- Email receipt
- Fixed 'bug' missing admin security / login to view panel
- Fixed 'bug' allowing checkout with an empty cart

##

Original code available here: https://github.com/lighthouse-labs/jungle-rails

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
