## Name ##

[Address](CAddress.md)
### Super Types ###
```
anyType
  |
  +--Address (restriction)
```


---


### Documentation ###


> Address type for country-club and players.
> Country and postal-code must always be present as they are part of primary keys.
> If there is no postal-code for a place, the municipality should be copied over to the postal-code element.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...>
> > ( [country](CCountry.md) ; municipality? ; postal-code ; region? ; street? )
> > </...>

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| [country](CCountry.md) |  Country of address | [golfml:Country](CCountry.md) |
| municipality |  					Municipality of address.				 | xs:string |
| postal-code |  Postal code of the address | xs:string |
| region   |  Region of an address | xs:string |
| street   |  					Street name and number of address.				 | xs:string |


---


### Local Usage ###

> [CountryClub](CCountryClub.md), [Player](CPlayer.md)