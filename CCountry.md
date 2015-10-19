## Name ##

[Country](CCountry.md)
### Super Types ###
```
anyType
  |
  +--Country (restriction)
```


---


### Documentation ###


> Country name in address element.
> A country element must include an unambiguous country ISO 3166 2 letter code.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `code`=[ISO3166CountryCodeEnum](SISO3166CountryCodeEnum.md)>
> > [string](Sstring.md)
> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| code     |                 | [golfml:ISO3166CountryCodeEnum](SISO3166CountryCodeEnum.md) | required |             |           | unqualified |


---


### Local Usage ###

> [Address](CAddress.md)