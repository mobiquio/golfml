## Name ##

[HoleQualification](CHoleQualification.md)
### Super Types ###
```
anyType
  |
  +--HoleQualification (restriction)
```


---


### Documentation ###


> Qualify a golf course played from a set of tees.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [qualification-usga](CHoleQualificationUSGA.md) | [qualification-other](CRoomForExtension.md) )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [qualification-other](CRoomForExtension.md) |  						Qualify a golf course played from a set of tees according to a non-USGA golfing authority.					 | [golfml:RoomForExtension](CRoomForExtension.md) |
| [qualification-usga](CHoleQualificationUSGA.md) |  						Qualify a golf course played from a set of tees according to the USGA rules.					 | [golfml:HoleQualificationUSGA](CHoleQualificationUSGA.md) |


---


### Local Usage ###

> [Tees](CTees.md)