# Most Popular Repository of an organization and top committees
# Demo at (http://poprepo.heroku.com)
# AUTHOR - SUMIT KUMAR

* This ruby on rails webapp lists top 5 popular repositories of any organization based on number of forks
* For each popular repo, it will display 3 top committees and their counts
* The code for the function finding the popular repo and their committees is in /app/controllers/repo_controller.rb
* showpoprepo method finds the popular repo for the organsation
* topcommittees method finds the top committees for that repo
* It is a complete webapp and can be run on localhost as follows:

* -- $ bundle install    # to install required gems
* -- $ rails s           # open http://localhost:3000  and enter the organisation name to get 5 popular repo

 * The code is modular and configurable and can be extended to any organization
 * The code is production ready and the live demo is available on -> http://poprepo.heroku.com
