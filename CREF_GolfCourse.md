## Name ##

[REF\_GolfCourse](CREF_GolfCourse.md)
### Super Types ###
```
anyType
  |
  +--REF_GolfCourse (restriction)
```


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `remote-golfml-url`=xs:anyURI>
> > ( country-club.name, [country-club.address.country.iso3166](SISO3166CountryCodeEnum.md), country-club.address.postal-code, country-club.golf-course.name   )
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| remote-golfml-url |  				URL of remote GolfML document used for references.			 | xs:anyURI | optional |             |           | unqualified |

### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [country-club.address.country.iso3166](SISO3166CountryCodeEnum.md) |                 | [golfml:ISO3166CountryCodeEnum](SISO3166CountryCodeEnum.md) |
| country-club.address.postal-code |                 | xs:string |
| country-club.golf-course.name |                 | xs:string |
| country-club.name |                 | xs:string |


---


### Local Usage ###

> [CountryClubChoice](CCountryClubChoice.md), [StatisticsCollectionDescription](CStatisticsCollectionDescription.md)