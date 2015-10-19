## Name ##

[Note](CNote.md)
### Super Types ###
```
anyType
  |
  +--Note (restriction)
```


---


### Documentation ###


> Generic type for addition of comments and/or rating.
> The text of the note is localised to a xml language.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `date`=xs:dateTime  `rating`=[Rating](SRating.md)>
> > [comment](CLocalisedText.md)+
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| date     |  				Date of issue of the comment.			 | xs:dateTime | optional |             |           | unqualified |
| rating   |  Simple rating of the parent entitiy | [golfml:Rating](SRating.md) | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [comment](CLocalisedText.md) |  					Localised, textual comment about the parent entitiy.				 | [golfml:LocalisedText](CLocalisedText.md) |


---


### Local Usage ###

> [CountryClub](CCountryClub.md), [Equipment](CEquipment.md), [Facilities](CFacilities.md), [GolfCourse](CGolfCourse.md), [Hole](CHole.md), [Player](CPlayer.md), [Round](CRound.md), [StrokeDetail](CStrokeDetail.md)