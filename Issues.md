# GolfML Data #

## Remote Document ##

There is no easy way to provide references to remote document and maintain referential integrity.

Alternatives are:

  * Copy the referenced data in the local document. The local document will grow larger but it will be self contained.

  * Maintain a reference to the remote document with the `remote-golfml-url` attribute. The remote document might disappear some day, or modified without knowing. It is advised to take a copy of the remote document for later reference.

## Functional Verification of Documents ##

Some necessary control cannot be enforced by the XML Schema standard. There must be an additional control.

For instance, on a scorecard, "handicap stroke index" should range from 1 to 18 for a eighteen hole course. There should be a single occurance of every number between 1 and 18. XML Schema can only control that the number is an interger value between 1 and 18, but it cannot check that every number occurs once and only once.

# Dynamic Data #

GolfML aims at storing static data: Golf course descriptions, scorecards _after_ a round or a tournament is played... It is not designed to distribute score of a _ongoing_ tournament.

Another standard, [SportML](http://www.sportsml.org/), is targeted at providing such a dynamic information.


# SVG #

SVG documents and XML transformation sheets are only provided as examples.

## Altitude in GolfML documents ##

Google Earth does not easily provide altitude information. Should that information be available, it is not currently used by the golfml2svg stylesheet to provide altitude information.

Altitude is usualy represented using a proper [shading algorithm](http://en.wikipedia.org/wiki/Cartographic_relief_depiction) which requires extensive programming.