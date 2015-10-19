## Name ##

[Application](CApplication.md)
### Super Types ###
```
anyType
  |
  +--Application (restriction)
```


---


### Documentation ###


> The application element is provided to store application private data that cannot be stored in golfml.
> The content of an application element is ignored by other golfml applications.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> <...  `dotname`=xs:string  `name`=xs:string  `version`=xs:string>
> > (
> > _any element from any namespace_
> > > )

> > </...>

---


### Attributes ###

| **Name** | **Description** | **Type** | **Use** | **Default** | **Fixed** | **Form** |
|:---------|:----------------|:---------|:--------|:------------|:----------|:---------|
| dotname  |  Name of the application in a reverse internet host name or a Java package and class style | xs:string | required |             |           | unqualified |
| name     |  Name of the application that stores data in the application container | xs:string | optional |             |           | unqualified |
| version  |  Version of the application that stored data in this container | xs:string | optional |             |           | unqualified |


---


### Local Usage ###

> [golfml](Egolfml.md)