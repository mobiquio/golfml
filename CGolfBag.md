## Name ##

[GolfBag](CGolfBag.md)
### Super Types ###
```
anyType
  |
  +--GolfBag (restriction)
```


---


### Documentation ###


> A golf bag can contain either golf clubs or references to them when they are
> in equipement-list elements.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [uid](CUID.md)`*`, name, [bag-ref](CREF_GolfBag.md)?, ( [golf-club-ref](CREF_GolfClub.md) | [golf-club](CGolfClub.md) ){1,14} , [equipment](CEquipment.md)`*`   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [bag-ref](CREF_GolfBag.md) |  					Reference to the golf bag used for the round from the pieces of equipement.				 | [golfml:REF\_GolfBag](CREF_GolfBag.md) |
| [equipment](CEquipment.md) |  					Other piece of equipment used in bag: Balls, tees, apparel, gloves...				 | [golfml:Equipment](CEquipment.md) |
| [golf-club](CGolfClub.md) |  						Definition of a golf club owned by the player.					 | [golfml:GolfClub](CGolfClub.md) |
| [golf-club-ref](CREF_GolfClub.md) |  						Reference to a golf club in the player's equipment list.					 | [golfml:REF\_GolfClub](CREF_GolfClub.md) |
| name     |  					Name of a golf bag used to identify it.				 | xs:string |
| [uid](CUID.md) |  					Unique identifier for an application.				 | [golfml:UID](CUID.md) |


---


### Local Usage ###

> [Player](CPlayer.md)