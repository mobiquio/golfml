## Name ##

[CountryClub](CCountryClub.md)
### Super Types ###
```
anyType
  |
  +--CountryClub (restriction)
```


---


### Documentation ###


> A country-club is a place where we can find one or more golf courses at the same location.
> Examples are your municipal golf course, a 9 hole pitch and putt, a 36 or more hole golf courses,
> golf resorts, etc.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [uid](CUID.md)`*`, name, [ownership-type](SCountryClubTypeEnum.md)?, [address](CAddress.md), [contact](CContact.md)`*`, [amenety](CAmenety.md)`*`, [note](CNote.md)`*`, [media](CMedia.md)`*`, [golf-course](CGolfCourse.md)+, [version](CVersion.md)`*`   )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [address](CAddress.md) |  					Address of the country club or golf course.				 | [golfml:Address](CAddress.md) |
| [amenety](CAmenety.md) |  Amenety available at the contry club | [golfml:Amenety](CAmenety.md) |
| [contact](CContact.md) |  Contact for the golf course | [golfml:Contact](CContact.md) |
| [golf-course](CGolfCourse.md) |  					Description of one golf course at the country club.				 | [golfml:GolfCourse](CGolfCourse.md) |
| [media](CMedia.md) |  Media for the country club | [golfml:Media](CMedia.md) |
| name     |  					Name of the country club.				 | xs:string |
| [note](CNote.md) |  					Note about the country club.				 | [golfml:Note](CNote.md) |
| [ownership-type](SCountryClubTypeEnum.md) |  					Name of the country club.				 | [golfml:CountryClubTypeEnum](SCountryClubTypeEnum.md) |
| [uid](CUID.md) |  					Unique identifier for an application.				 | [golfml:UID](CUID.md) |
| [version](CVersion.md) |                 | [golfml:Version](CVersion.md) |


---


### Local Usage ###

> [golfml](Egolfml.md)