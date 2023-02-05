# todo 
This app pulls weather from noaa.  It uses a dataset of geo-locations. While I have tested it using the full data set of 30K cities, this version seeds 25 of them.
## refactor
- Authenticate: devise
<!-- do you mean pundit?  https://github.com/varvet/pundit -->
- Authorize: pendant
- move the javascript to separate files
## future
- new model: favorites
- gem?
## other
- check authorization
- seed files: multiples, preventing re-runs

# To get started
- bundle
- rails db:migrate
- rails db:seed
- rails s
code-review



# code review notes
* Do you need to commit `Guardfile` and `history`? Might want to add to .gitignore **done**

* I ran `rails test` and the tests all fail `Could not find table 'geos'`
**corrected: rails destroy model geos**
