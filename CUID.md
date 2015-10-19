## Name ##

[UID](CUID.md)
### Super Types ###
```
anyType
  |
  +--UID (restriction)
```


---


### Documentation ###


> Allow an application to insert a unique identifier for a GolfML entity.
> Allows for serialization of surrogate keys to maintain and enforce referential integrity in databases.
> Several different applications can each have their own UID for a GolfML entitiy.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `application.dotname`=xs:string>
> > [string](Sstring.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| application.dotname |  Name of the application in a reverse internet host name or a Java package and class style | xs:string | required |             |           | unqualified |


---


### Local Usage ###

> [CountryClub](CCountryClub.md), [Equipment](CEquipment.md), [GolfBag](CGolfBag.md), [GolfCourse](CGolfCourse.md), [Player](CPlayer.md), [REF\_GolfClub](CREF_GolfClub.md), [Round](CRound.md), [Tees](CTees.md)