# README

Features:
- paginated list of line items
- editable adjustments field
- changelog of line item
- can update from either line_items#index or line_items#show
- user authentication via devise

To get app running:
```
gem install bundler
bundle install
rails db:migrate
rails db:seed # this step took 53 seconds on my machine
rails server
in browser go to localhost:3000
```
