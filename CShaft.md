## Name ##

[Shaft](CShaft.md)
### Super Types ###
```
anyType
  |
  +--Shaft (restriction)
```


---


### Documentation ###


> Descriptive elements for the shaft of a golf club.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `type`=[GolfClubTypeEnum](SGolfClubTypeEnum.md)>
> > ( manufacturer, model, submodel?, [length](CLengthWithUnits.md)?, weight?, tip?   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| type     |  				Type of golf club for the shaft.			 | [golfml:GolfClubTypeEnum](SGolfClubTypeEnum.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [length](CLengthWithUnits.md) |  					Length of a shaft.				 | [golfml:LengthWithUnits](CLengthWithUnits.md) |
| manufacturer |  					Manufacturer of a shaft.				 | xs:string |
| model    |  					Model of a shaft.				 | xs:string |
| submodel |  					Sub-model or type of a model of a shaft.				 | xs:string |
| tip      |  					Type of tip of the shaft.				 | xs:string |
| weight   |  					Weight of a shaft.				 | xs:float |


---


### Local Usage ###

> [GolfClub](CGolfClub.md)