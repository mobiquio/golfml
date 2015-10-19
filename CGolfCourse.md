## Name ##

[GolfCourse](CGolfCourse.md)
### Super Types ###
```
anyType
  |
  +--GolfCourse (restriction)
```


---


### Documentation ###


> Description of a course: Media (photographs, videos, sketches...), notes, holes and tee-set.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [uid](CUID.md)`*`, name, architect?, ( [media](CMedia.md) | [note](CNote.md) )`*` , [holes](CHoles.md)?, [tee-set](CTees.md)+, [version](CVersion.md)`*`   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| architect |  					Architect(s) of the golf course.				 | xs:string |
| [holes](CHoles.md) |  					Description of the individual holes.				 | [golfml:Holes](CHoles.md) |
| [media](CMedia.md) |  						Medias associated with the golf course.					 | [golfml:Media](CMedia.md) |
| name     |  Name of a tee set | xs:string |
| [note](CNote.md) |  						Notes and comments associated with the golf course.					 | [golfml:Note](CNote.md) |
| [tee-set](CTees.md) |  					Description of a tee set for the golf course.				 | [golfml:Tees](CTees.md) |
| [uid](CUID.md) |  					Unique identifier for an application.				 | [golfml:UID](CUID.md) |
| [version](CVersion.md) |  					Records history of the golf course.				 | [golfml:Version](CVersion.md) |


---


### Local Usage ###

> [CountryClub](CCountryClub.md)