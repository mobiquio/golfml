GolfML specifies a vendor neutral, standard format for the distribution of:
  1. Golf courses information and data.
  1. Player scorecards, statistics, and belongings.
Data stored in GolfML formated documents are processed by GolfML compliant web sites and applications.

GolfML eases data exchange.

## Golf Course Information and Data ##

GolfML document stores all information about a golf facility:

  * Name, address, phone numbers, contact information, amenities, pictures, videos, maps…

  * For the golf course itself, a GolfML document contains information about tee sets, par, distances, pictures, maps or drawings of each hole.

  * Finally, a GolfML document can store (GPS) positions of amenities, golf holes, greens, fairways, traps, lakes...

Information about golf courses, layouts, distances... changes over time. GolfML document handles such changes  as well.

A GolfML document that contains golf course information can easily be exchanged between applications, web sites, or golfers. It not longer is necessary to type in that information over and over again. It is easier to find the GolfML document and let the application do the work.

## Player Scorecards, Statistics, and Belongings ##

GolfML documents also keep information about a golfer:

  * Name, address, phone numbers, contact information, current handicap, pictures…

  * Belongings such as golf club, balls, training devices, golf bags, together with additional information (average distance of stroke with each club, brand, model, physical characteristics...)

  * Scorecards for each round of golf played. All detailed information recorded during a round of golf can be stored in a GolfML document. In particular, if a «[location aware](http://en.wikipedia.org/wiki/Location_awareness)» scorecard application is used, it is possible to record position of each stroke.

  * Statistics: GolfML offers a structured construct to store statistical information, together with data related to the statistics (period covered, courses used, rounds considered...) and methods used to derive the computed value.

  * Golfers often play a variety of games and challenges for fun or money. GolfML has room to keep a track of such information in a simple way as well.


## Notes about Existing Alternatives ##

The primary goal of GolfML is to exchange golf-related data from players between applications and/or web sites.

SportML has a section dedicated to the game of golf. SportML is oriented towards the communication of results in sport events. While SportML has features to store information such as player characteristics, statistics, and results of rounds of golf, SportML is not designed to store other golf-related or detailed information about a game. SportML cannot store information about course length, design, marker positions, SportML cannot record details about strokes, ball position, or content of a bag of golf. It was simply not design to record such information.