# todo 
This app pulls weather from noaa.  It uses a dataset of geo-locations. While I have tested it using the full data set of 30K cities, this version seeds 25 of them.
## refactor
- Authenticate: devise
- Authorize: pendant
- move the javascript to separate files
## new
- new model: favorites
## other
- check authorization

# To get started
- bundle
- rails db:migrate
- rails db:seed
- rails s