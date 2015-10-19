## Name ##

[MediaTypeAttributes](AMediaTypeAttributes.md)

---


### Documentation ###


> Group of common attributes used to characterise a media associated with either a country-club, a golf-course,
> or a hole, anywhere a media is accepted.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> `content-type`=xs:string  `other`=xs:string  `type`=[MediaTypeEnum](SMediaTypeEnum.md)

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| content-type |  Technical type of the media (MIME (Multipurpose Internet Mail Extensions) type of the media | xs:string | optional |             |           | unqualified |
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| type     |  				Type of information conveyed by the media: Photograph, video, yardage book, scan of scorecard, scan of golf card, map...			 | [golfml:MediaTypeEnum](SMediaTypeEnum.md) | optional |             |           | unqualified |


---


### Local Usage ###
> [Media](CMedia.md)