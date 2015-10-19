## Name ##

[Hole](CHole.md)
### Super Types ###
```
anyType
  |
  +--Hole (restriction)
```


---


### Documentation ###


> Description of a hole on a course: Media (photographs, videos, sketches...), notes and/or placemarks.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `name`=xs:string  `number`=[OneToEighteen](SOneToEighteen.md)>
> > ( [media](CMedia.md) | [note](CNote.md) | [placemarks](CPlacemarks.md) )`*`
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| name     |  Name of hole   | xs:string | optional |             |           | unqualified |
| number   |  Hole number    | [golfml:OneToEighteen](SOneToEighteen.md) | required |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [media](CMedia.md) |  					Associated media: Picture, video, document, link...				 | [golfml:Media](CMedia.md) |
| [note](CNote.md) |  					Localised note or comment about the hole.				 | [golfml:Note](CNote.md) |
| [placemarks](CPlacemarks.md) |  					List of places worth of interest on the hole.				 | [golfml:Placemarks](CPlacemarks.md) |


---


### Local Usage ###

> [Holes](CHoles.md)