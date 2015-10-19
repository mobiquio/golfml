## Name ##

[UnitSystemEnum](SUnitSystemEnum.md)
### Super Types ###
```
string
  |
  +--UnitSystemEnum (restriction)
```


---


### Documentation ###


> Physical units used in golfml.
> Units are always expressed in the International System of units, using meters, seconds, and kilograms.

> However, given the popularity of golf in the United States of America, alternative unit system can be used to prevent
> unit conversions in applications. Therefore, physical values can also be expressed in yards, miles, and pounds.
> Since the Imperial system of units is not the default system for units, it MUST be specified each time it is used.

> To further enhance the sharing of data across both unit systems, golfml allows for several values to be given in
> different unit systems for the same object.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> ( 'metric' | 'imperial' )