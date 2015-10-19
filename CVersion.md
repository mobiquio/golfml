## Name ##

[Version](CVersion.md)
### Super Types ###
```
anyType
  |
  +--Version (restriction)
```


---


### Documentation ###


> Allow for version tracking on a single element with meta-data.
> Element content should consists of version comments.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `created`=xs:dateTime  `updated`=xs:dateTime  `version`=xs:string>
> > [string](Sstring.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| created  |                 | xs:dateTime | optional |             |           | unqualified |
| updated  |                 | xs:dateTime | optional |             |           | unqualified |
| version  |                 | xs:string | optional |             |           | unqualified |


---


### Local Usage ###

> [CountryClub](CCountryClub.md), [GolfCourse](CGolfCourse.md), [golfml](Egolfml.md), [Tees](CTees.md)