## Name ##

[Rating](SRating.md)
### Super Types ###
```
float
  |
  +--Rating (restriction)
```


---


### Documentation ###


> The rating type defines a standard, generic, evaluation criteria for golfml entities.
> Rating is limited to 0 to 5 "stars". Decimal faction allowed.


---



### Properties ###

> This component is not nillable.

---


### Model ###


```
        [0-5]{0,1}(\.[0-9]{1,1})?
```

> inclusive upper bound: 5
### Local Usage ###
> > [Note](CNote.md)