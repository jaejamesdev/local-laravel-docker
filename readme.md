# Local Development Laravel Docker Setup

These 4 files are designed to be a slightly scaled back replacement of Homestead. It's also a great way to get started with Docker!

### New Features!
  - (New Features Including Redis & Beanstalkd Coming Soon)

### Getting Started
Getting Started is simple. Just download this repository, grab the 4 files and dump them straight into your Laravel application. Then (providing you have already installed Docker & docker-compose), just run 
```sh
docker-compose up -d
```
This will take a few minutes the first time you run this as we have to grab all of the images from the DockerHub.
Once that has completed, you are good to go! Just head over to http://0.0.0.0/8080 in your browser and you will see your Laravel application.

For the database, we just latch onto the .env defaults for Homestead. The only thing that is different is the DB_HOST which should be set to **mysql** although, docker will take care of that if you don't.

### Common Questions
> How do I run migrations or other artisan commands?

Well... That is actually quite simple! We can just run the following command:
```sh
docker-compose exec php php artisan migrate
```
The above command executes the command in our **php** container.

> How do I stop the containers?

To that question, I answer in one simple command!
```sh
docker-compose stop
```
Tah dah!

**FOR ANY HELP OR REQUESTS PLEASE FEEL FREE TO GET IN TOUCH VIA THE ISSUES PAGE**
