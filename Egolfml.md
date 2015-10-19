## Name ##

[golfml](Egolfml.md)

---


### Documentation ###


> golfml is the main element of the language. It is the unique element exposed for reuse.
> A golfml element can contain any number of the following elements:
  * country-club: To describe a country club, golf course, tee length...
  * player: To store a player's golf carrier: Scorecards, rounds played, statistics...
  * application: To store  application specific items not relevant to country clubs or players such as application preferences, etc.
  * version: Any comment or note about the version of the golfml document.
> Golfml main element also contains several primary keys for cross-reference of elements
> inside the document, and one unique key to garantee the unicity of one element (application)
> accross golfml document instances.
> (See also: IdentifiersAndReferences )

> Primary key to uniquely identify a country club world wide.

> Primary key to uniquely identify a set of tees world wide.

> Primary key to uniquely identify a golfer.

> Primary key to uniquely identify a golf bag of a player.

> Primary key to uniquely identify a golf club.

> Key to uniquely identify an application.

> Reference to a player in the 2,3,4 some.

> Reference to set of tees used for the round of golf.
> Note: The set of tees used unambiguously identify the country club and the golf course.

> Reference to a golf bag used in a round.

> Reference to a golf club in the bag.

> Reference to a golf club used for a stroke.
> Currently, the reference points to a golf club owned by the player.
> Formally, the golf club should point an item in the golf bag used for the round of golf.
> We do not enforce this relationship to allow for practice rounds and more flexibility.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <[golfml](Egolfml.md)  `version`=xs:string>
> > ( [country-club](CCountryClub.md) | [player](CPlayer.md) | [application](CApplication.md) | [version](CVersion.md) )`*` [&lt;/golfml&gt;](Egolfml.md)

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| version  |  Version of the golfml language used | xs:string | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [application](CApplication.md) |  						Room for non-golfml application storage.					 | [golfml:Application](CApplication.md) |
| [country-club](CCountryClub.md) |  						Country club defined and used in this document.					 | [golfml:CountryClub](CCountryClub.md) |
| [player](CPlayer.md) |  						Player  in this document.					 | [golfml:Player](CPlayer.md) |
| [version](CVersion.md) |  						Room for version information about the file.					 | [golfml:Version](CVersion.md) |


---

