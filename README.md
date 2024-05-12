# When the F1

A glorified timezone converter version for Formula 1 races throughout the season.

Users need to sign up for an account and log in to see race information such as location, track name, and race start time (automatically converted to hte user's current location).

Technologies for the backend of "When the F1" include Ruby on Rails, PostgreSQL database, React.js (frontend), and most importantly the OpenF1 open source API.

## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

To run API tests from the `test` folder:

```bash
rails test
```

## Roadmap

Upcoming features include:
- Weather information for each race
- Dedicated section for driver and constructor standings throughout the season.
- Additional visual improvements
