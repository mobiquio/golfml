## Name ##

[GolfClub](CGolfClub.md)
### Super Types ###
```
anyType
  |
  +--GolfClub (restriction)
```


---


### Documentation ###


> Descriptive elements for a golf club.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `type`=[GolfClubTypeEnum](SGolfClubTypeEnum.md)>
> > ( manufacturer, model, submodel, number?, serial?, [loft](SAngle90.md)?, [lie](SAngle90.md)?, weight?, [swing-weight](SSwingWeight.md)?, [shaft](CShaft.md)?, [grip](CEquipment.md)?, [distance](CClubDistance.md)`*`   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| type     |  				Type of golf club.			 | [golfml:GolfClubTypeEnum](SGolfClubTypeEnum.md) | required |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [distance](CClubDistance.md) |  					Average distance and shot type covered by a ball hit by this club on a given date.				 | [golfml:ClubDistance](CClubDistance.md) |
| [grip](CEquipment.md) |  					Grip of club (manufacturer + model).				 | [golfml:Equipment](CEquipment.md) |
| [lie](SAngle90.md) |  					Lie of the golf club.				 | [golfml:Angle90](SAngle90.md) |
| [loft](SAngle90.md) |  					Loft of the golf club.				 | [golfml:Angle90](SAngle90.md) |
| manufacturer |  					Manufacturer of a golf club.				 | xs:string |
| model    |  					Model of a golf club.				 | xs:string |
| number   |  					Number or name of a club in a set.				 | xs:string |
| serial   |  					Serial number of the golf club.				 | xs:string |
| [shaft](CShaft.md) |  					Shaft of the golf club.				 | [golfml:Shaft](CShaft.md) |
| submodel |  					Sub model or type of a golf club.				 | xs:string |
| [swing-weight](SSwingWeight.md) |  					Swing weight of the golf club.				 | [golfml:SwingWeight](SSwingWeight.md) |
| weight   |  					Weight of the golf club.				 | xs:float |


---


### Local Usage ###

> [EquipmentList](CEquipmentList.md), [GolfBag](CGolfBag.md)