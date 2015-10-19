## Name ##

[Amenety](CAmenety.md)
### Super Types ###
```
anyType
  |
  +--Amenety (restriction)
```


---


### Documentation ###


> Amenety available at the country club premises.
> Ameneties have a type attribute to help identify the amenety.
> LATER: May be store the position (gps or other) inside the amenety.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `other`=xs:string  `type`=[AmenetyTypeEnum](SAmenetyTypeEnum.md)>
> > [string](Sstring.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| other    |  				Alternate value for an attribute.			 | xs:string | optional |             |           | unqualified |
| type     |                 | [golfml:AmenetyTypeEnum](SAmenetyTypeEnum.md) | optional |             |           | unqualified |


---


### Local Usage ###

> [CountryClub](CCountryClub.md)