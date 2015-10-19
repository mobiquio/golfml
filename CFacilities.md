## Name ##

[Facilities](CFacilities.md)
### Super Types ###
```
anyType
  |
  +--Facilities (restriction)
```


---


### Documentation ###


> Description of a course: Media (photographs, videos, sketches...), notes and/or placemarks.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [media](CMedia.md) | [note](CNote.md) | [placemarks](CPlacemarks.md) )`*`
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [media](CMedia.md) |  					Associated media: Picture, video, document, link...				 | [golfml:Media](CMedia.md) |
| [note](CNote.md) |  					Localised note or comment about the hole.				 | [golfml:Note](CNote.md) |
| [placemarks](CPlacemarks.md) |  					List of places worth of interest on the hole.				 | [golfml:Placemarks](CPlacemarks.md) |


---


### Local Usage ###

> [Holes](CHoles.md)