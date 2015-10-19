The ultimate goal of GolfML is to store golf course descriptions and player scorecards in GolfML formatted documents that are spread all over the world.

We provide a way to uniquely identify a golf course, or a player, or other object of interest for the game of golf and always refer to it using the same information.

## Identifiers ##

GolfML needs to uniquely identify the following entities:

  1. Sets of tees
  1. Players
  1. Golf clubs (equipment)

Other applications may require identifications of other entities.

A golf course should be defined once and for all other GolfML document instances.

### Sets of Tees ###

To insure uniqueness of sets of tees on a golf courses, we build a identifier on the following unambiguous attributes:

  1. **Country**: We use the **ISO 3166 2 letter code** to uniquely identify the **country** where the golf course is located.
  1. **Municipality**: We use the **postal code** (which should be unique in a given country) to uniquely identify a place in a country. If the country does not use postal code, the name of the municipality should be used instead. The combination of Country and either the **postal code** or the **municipality name** (if and only if no postal code is available for that municipality in the country) uniquely identify a Municipality.
  1. **Country club name**: The name of the country club, park, facility... The combination of **Country club name**, **Municipality**, and **Country** uniquely identify a **Country Club**.
  1. **Golf course name**: The name of the golf course at the above location.
  1. **Tee set name**: The name of the set of tees used to play the round of golf on the above golf course.

The combination of all five elements uniquely identify a set of tees, worldwide.

### Players ###

Golfers are uniquely identified by the following combination:

  1. Name: The full name of the golfer
  1. Date of birth: Date of birth of the golfer.

### Other Elements ###

Inside a GolfML document, we use the following identifiers:

  1. Golf clubs: A golf club is a complex description of a club to play golf with all its technical and commercial information.
  1. Golf bag: A golf bag is a collection of golfing equipment that includes not only golf clubs but also balls, apparel, etc.

For convenience, we also provide the following identifiers:

  1. Golf Course
  1. Country Club
  1. Municipality

## Naming Convention for Identifiers and References ##

For a given entity, we defined a Identifier _Group of Elements_.

For example, to uniquely identify a player in GolfML, we use the following elements:
```
<player>
  <name>Thomas Mitchell Morris</name>
  <date-of-birth>1821-06-16</date-of-birth>
</player>
```

We create a group named **`ID_Player`** which contains the following elements. Elements in the group are named after the GolfML hierarchy of elements used in the key. Name-forming element names are separated by period. So, element `name` inside element `player` becomes element `player.name` in the identifier element, and so on.
```
<xs:sequence>
  <xs:element name="player.name" type="xs:string"/>
  <xs:element name="player.date-of-birth" type="xs:date"/>
</xs:sequence>
```
A **reference** to a `player` element, elsewhere in a GolfML document has the following structure:
```
<player-ref [remote-golfml-url="http://tigerwoods.com/profile.xml"]>
  <player.name>Tiger Woods</player.name>
  <player.date-of-birth>1975-12-30</player.date-of-birth>
</player-ref>
```

## Surrogate Keys ##

[Surrogate keys](http://en.wikipedia.org/wiki/Surrogate_key) are often used by applications and always difficult to serialize. GolfML conveniently offer a complex type [UID](CUID.md) to serialize such surrogate keys and store them inside a GolfML document.

Example:
```
<player>
  <uid application.dotname="com.mygolfapp">2593-3953-3919-9386</uid>
  <name>Tiger Woods</name>
  <date-of-birth>1975-12-30</date-of-birth>
</player>
```

There can be as many `uid` as necessary. An application should simply carry over, without modification, all other applications' `uid`'s.