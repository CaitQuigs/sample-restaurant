# sample-restaurant ReadMe
<a href="#installation">Installation</a>
<a href="#features">Features</a>
<a href="#acknowledgments">Acknowledgments</a>
<a href="#license">License</a>

Sample-restaurant is a web application for local restaurants to inform customers and process online orders for take out and delivery. This application is built with Ruby on Rails and comes configured to deploy through Heroku.

## Installation

### Clone the repository
Clone the repository to your machine.

```bash
git clone https://github.com/CaitQuigs/sample-restaurant
cd sample-restaurant
```

### Check your Ruby version

```bash
ruby -v
```
The output should look like `ruby 2.7.1`.
If not, install the right ruby versions using [rbenv](https://github.com/rbenv/rbenv).

```bash
rbenv install 2.7.1
```

### Install dependencies

```bash
bundle install
yarn install
```

### Set up credentials

Set up your credentials for the services by using Rails credentials. This application does not use environment variables. All encrypted or private information will be contained in Rails credentials.

```bash
rails credentials:edit
```

The first time you run this command, it will set up the Rails credentials secret file.  Subsequently, you will just edit the file. Make sure that you add the following credentials in the following formats.

```bash
pg_database_username: <your postgresql username>
pg_database_password: <your postgresql password>
pg_database_port: <your postgresql port number>
aws:
    secret_key: <your aws secret key>
    bucket_name: <your aws bucket name>
```
Make sure to save your file as you exit it. Now all the services on this application should work! Run your application on your local server to check it out!

### Initialize the database

This application uses a PostgreSQL database. Make sure that you have PostgreSQL installed and that your server is running before initializing this database.

```bash
rails db:create db:migrate
```

### Seed the database

This application comes with a Faker-based `seeds.rb` file.  To seed the database with this information, run the following command. Or, to seed information, edit the `seeds.rb` file and then run the following command.

```bash
rails db:seed
```

### Next Steps

Check the installation by running the server with `rails s`. Once all data - menu items, images - has been entered, the application is ready to deploy through using [Heroku](www.heroku.com).

## Features

* Easy to set up and customize. 
* Includes an administration section to add, remove and change menu items.
* Able to feature menu items.
* Validates and authenticates orders.

## Acknowledgments

To make this application, I started by following Dean DeHart's [tutorial](https://www.youtube.com/watch?v=WwClobViifU) on a restaurant application using Ruby on Rails.

## License

[MIT](https://choosealicense.com/licenses/mit/)



Things you may want to cover:

* System dependencies

* Configuration

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions