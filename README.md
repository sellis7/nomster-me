## Nomster (or more preferably: "where it's @")

A Yelp-type clone with Google Maps functionality and user features like comments, star ratings, image uploading, authentication, automated email notifications and dashboards.

Though initially intended to promote food services, I opted for a means to locate and report "hot spots" in towns and cities where multiple, diverse shopping opportunities, restaurants, museums, theaters, and such can be sought out by travelers to the area. Also quite useful for new transplants to an area who could be looking for stuff to do, or just investigating their new surroundings.
Hence – where it's @

Tutorial-based build, but with self-directed tasks completed establishing the pagination, data validations and image upload functionality. Most of the application styling, and some structure, was personally customized.

Technologies used and explored:
* Ruby and Rails
* PostgreSQL
* Bootstrap
* SCSS
* Git, GitHub, and Heroku for the production platform
* MVC design pattern
* RESTful routing sans scaffolding
* ActionMailer and Mailgun addon
* Geocoder gem for geocoding & map integrations
* Image uploading functionality by way of:
  * CarrierWave gem
  * MiniMagick gem
  * AWS Amazon S3 & Fog gem
* Kaminari gem for pagination
* Devise gem for user authentication

Check it out accessible via Heroku [here](https://sellis-nomster.herokuapp.com). Feel free to contribute your knowledge of great localities where there are unique and fun things to do and see! **You will not be emailed, as that feature was disabled within the app to avoid general spamming.** Additionally, an actual, valid email address is not required.
