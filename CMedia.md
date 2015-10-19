## Name ##

[Media](CMedia.md)
### Super Types ###
```
anyType
  |
  +--Media (restriction)
```


---


### Documentation ###


> A media is a piece of multi-media information attached to either a country-club, a golf-course, a hole, a player,
> or a round of golf. Example of such media are:
  * country-club: Picture of club house, access map.
  * golf-course: scenic pictures of holes, yardage book...
  * hole: yardage page, pin placement chart...
  * player: picture, scan of official golf card...
  * round of golf: souvenir of a memorable golfing moment...


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `content-type`=xs:string  `other`=xs:string  `type`=[MediaTypeEnum](SMediaTypeEnum.md)>
> > ( name, description?, ( url | content )    )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| content-type |  Technical type of the media (MIME (Multipurpose Internet Mail Extensions) type of the media | xs:string | optional |             |           | unqualified |
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| type     |  				Type of information conveyed by the media: Photograph, video, yardage book, scan of scorecard, scan of golf card, map...			 | [golfml:MediaTypeEnum](SMediaTypeEnum.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| content  |  Base64-coded content of the media | xs:base64Binary |
| description |  					Description of the media.				 | xs:string |
| name     |  					Name of the media.				 | xs:string |
| url      |  					Location of the media.				 | xs:anyURI |


---


### Local Usage ###

> [CountryClub](CCountryClub.md), [Facilities](CFacilities.md), [GolfCourse](CGolfCourse.md), [Hole](CHole.md), [Player](CPlayer.md)