## Name ##

[Equipment](CEquipment.md)
### Super Types ###
```
anyType
  |
  +--Equipment (restriction)
```


---


### Documentation ###


> Descriptive elements for golf equipment. Golf clubs should be described using the GolfClub type.
> Other pieces of golf equipment should use the Equipment type: Golf bags, ball, apparel, training aids...
> A attribute named type help describe the equipment.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `type`=[EquipmentTypeEnum](SEquipmentTypeEnum.md)>
> > ( [uid](CUID.md)`*`, name, manufacturer, model, submodel?, serial?, [note](CNote.md)?   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| type     |  				Type of piece of equipment to organise them in categories: Training devices, clubs, balls...			 | [golfml:EquipmentTypeEnum](SEquipmentTypeEnum.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| manufacturer |  					Manufacturer of equipment.				 | xs:string |
| model    |  					Model of equipment.				 | xs:string |
| name     |  					Name or description of equipment.				 | xs:string |
| [note](CNote.md) |  Comment about the equipment | [golfml:Note](CNote.md) |
| serial   |  					Serial number of equipment.				 | xs:string |
| submodel |  					Submodel or type of equipment.				 | xs:string |
| [uid](CUID.md) |  					Unique identifier for an application.				 | [golfml:UID](CUID.md) |


---


### Local Usage ###

> [EquipmentList](CEquipmentList.md), [GolfBag](CGolfBag.md), [GolfClub](CGolfClub.md)