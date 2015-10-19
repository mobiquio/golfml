## Name ##

[CountryClubChoice](CCountryClubChoice.md)
### Super Types ###
```
anyType
  |
  +--CountryClubChoice (restriction)
```


---


### Documentation ###


> Choice to specify the main country club of a player. The player can either simply enter the name of the country-club or
> a formal reference to a country-club in the golfml document.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( name | [country-club](CREF_GolfCourse.md) )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [country-club](CREF_GolfCourse.md) |  					Reference to the home country club of the player in the golfml document, defined as a country-club element.				 | [golfml:REF\_GolfCourse](CREF_GolfCourse.md) |
| name     |  					Name of the home country club of a player.				 | xs:string |


---


### Local Usage ###

> [Player](CPlayer.md)