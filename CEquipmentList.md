## Name ##

[EquipmentList](CEquipmentList.md)
### Super Types ###
```
anyType
  |
  +--EquipmentList (restriction)
```


---


### Documentation ###


> List golf belongings of a player.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [golf-club](CGolfClub.md) | [equipment](CEquipment.md) )`*`
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [equipment](CEquipment.md) |  					Piece of golfing equipment owned by a player that is not a golf club (golf-club should be used instead).				 | [golfml:Equipment](CEquipment.md) |
| [golf-club](CGolfClub.md) |  					Golf club owned by a player.				 | [golfml:GolfClub](CGolfClub.md) |


---


### Local Usage ###

> [Player](CPlayer.md)