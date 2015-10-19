## Name ##

[ID\_GolfCourse](GID_GolfCourse.md)

---


### Documentation ###


> Identifying elements for a golf course. Used in foreign keys.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> ( country-club.name, [country-club.address.country.iso3166](SISO3166CountryCodeEnum.md), country-club.address.postal-code, country-club.golf-course.name   )

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [country-club.address.country.iso3166](SISO3166CountryCodeEnum.md) |                 | [golfml:ISO3166CountryCodeEnum](SISO3166CountryCodeEnum.md) |
| country-club.address.postal-code |                 | xs:string |
| country-club.golf-course.name |                 | xs:string |
| country-club.name |                 | xs:string |


---


### Local Usage ###
> [ID\_Tees](GID_Tees.md), [REF\_GolfCourse](CREF_GolfCourse.md)