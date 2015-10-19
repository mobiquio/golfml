## Name ##

[PhoneNumber](SPhoneNumber.md)
### Super Types ###
```
string
  |
  +--PhoneNumber (restriction)
```


---


### Documentation ###


> Full international telephone number is up to 15 digits long.
> The country code is up to 3 digits long. The area code is
> country-dependent and is not used for some countries. If
> used, it seems to be from 1 to 5 digits long. This leaves
> the subscriber number up to 14 digits. Plus there is the
> optional extension. Putting this all together, we get:

> country-area-subscriber-extension

> The area code and extension are optional. Here are a few
> examples:

  1. 800-1234567	(country-area-subscriber)
  1. 800-1234567-89 (country-area-subscriber-extension)
> 34-912345678	 (country-subscriber)
> 34-912345678-9   (country-subscriber-extension)

> See also

> http://en.wikipedia.org/wiki/Area_code
> http://en.wikipedia.org/wiki/E.164

> Note

> We added "start with a + sign" for country code; there should be no space to separate numbers.


---



### Properties ###

> This component is not nillable.

---


### Model ###


```
        [\-+]?([1-9][0-9]{0,2})(-[1-9][0-9]{0,4})?(-[1-9][0-9]{0,13})(-[0-9]+)?
```


### Local Usage ###
> [Contact](CContact.md)