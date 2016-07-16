== README

To setup the EventApp you should:

* Clone the repository

~~~bash
$ git glone https://github.com/pecuerre/backend-test
~~~

* Go to the app directory

~~~bash
$ cd backend-test/ # this is the repo
$ cd app/ # this is the rails app
~~~

* Run bundle

~~~bash
$ bundle install
~~~

* Migrate the database

~~~bash
$ rake db:migrate
~~~


* Run the server

~~~bash
$ rails server
~~~

* Open your browser in http://localhost:3000
