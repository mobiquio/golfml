## Name ##

[ID\_Tees](GID_Tees.md)

---


### Documentation ###


> List of elements to uniquely identify a set of tees from which a round of golf can be played.
> Elements includes those necessary to identify a golf course, and a set of tees.
> Used in foreign keys.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> ( ( country-club.name, [country-club.address.country.iso3166](SISO3166CountryCodeEnum.md), country-club.address.postal-code, country-club.golf-course.name ), country-club.golf-course.tee-set.name   )

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [country-club.address.country.iso3166](SISO3166CountryCodeEnum.md) |                 | [golfml:ISO3166CountryCodeEnum](SISO3166CountryCodeEnum.md) |
| country-club.address.postal-code |                 | xs:string |
| country-club.golf-course.name |                 | xs:string |
| country-club.golf-course.tee-set.name |                 | xs:string |
| country-club.name |                 | xs:string |


---


### Local Usage ###
> [REF\_Tees](CREF_Tees.md)