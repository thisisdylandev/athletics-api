
# Athletics API

Small Rails/Postgres API for athletes to find workouts


## Features

- Provide list of equipment available to receive a list of workouts
- Optionally provide a sport to filter down list of returned workouts

  
## Authors

- [@thisisdylandev](https://www.github.com/thisisdylandev)

  
## Run Locally

Clone the project

```bash
  git clone https://github.com/thisisdylandev/athletics-api.git
```

Go to the project directory

```bash
  cd athletics-api
```

Install dependencies

```bash
  bundle install
```

Seed database
```bash
  bundle exec rails db:seed
```

Start the server

```bash
  bundle exec rails s
```

  
## Running Tests

To run tests, run the following command

```bash
  bundle exec rake test
```

To run a vulnerability scan, run the following command

```bash
  bundle exec rake brakeman
```

To run tests, vulnerability scans, and linter, run the following command

```bash
  bundle exec rake check
```
  
## Tech Stack

Rails, RSpec, Postgres

  
## Credits

README created using [readme.so](https://readme.so)