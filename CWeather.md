## Name ##

[Weather](CWeather.md)
### Super Types ###
```
anyType
  |
  +--Weather (restriction)
```


---


### Documentation ###


> Store weather condition during play.
> It contains an optional attribute named wind to specify wind condition during play.

> See also: SportML has a normalisation of weather types.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `other`=xs:string  `wind`=[WindEnum](SWindEnum.md)>
> > [string](Sstring.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| wind     |                 | [golfml:WindEnum](SWindEnum.md) | optional |             |           | unqualified |


---


### Local Usage ###

> [Round](CRound.md)