## Name ##

[Holes](CHoles.md)
### Super Types ###
```
anyType
  |
  +--Holes (restriction)
```


---


### Documentation ###


> The Holes element groups 1 to 18 Hole descriptions.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [facilities](CFacilities.md)?, [hole](CHole.md){0,18}   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [facilities](CFacilities.md) |  Container elements for placemarks that are not specific to a hole | [golfml:Facilities](CFacilities.md) |
| [hole](CHole.md) |  					Collection of 1 to 18 holes of golf.				 | [golfml:Hole](CHole.md) |


---


### Local Usage ###

> [GolfCourse](CGolfCourse.md)