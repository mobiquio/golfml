## Name ##

[HolePlacements](CHolePlacements.md)
### Super Types ###
```
anyType
  |
  +--HolePlacements (restriction)
```


---


### Documentation ###


> Description of the placement on holes on greens.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `date`=xs:date>
> > ( name, [hole-placement](CHolePlacement.md){1,18}   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| date     |  				Date hole placement is valid.			 | xs:date  | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [hole-placement](CHolePlacement.md) |  					Placement of a hole on a green.				 | [golfml:HolePlacement](CHolePlacement.md) |
| name     |  					Identifying name for hole placement.				 | xs:string |


---


### Local Usage ###

> [Round](CRound.md)