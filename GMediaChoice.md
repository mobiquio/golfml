## Name ##

[MediaChoice](GMediaChoice.md)

---


### Documentation ###


> A media is either embedded in the golfml document or a URI (link) to it.
> We currently removed the ability to store media inside a golfml document for performance purposes
> and to limit the size of golfml document.
> Embedded storage of media in golfml document should be limited to small size items such as vector logo
> and small images.


---



### Properties ###

> This component is not nillable.

---


### Model ###

> ( url | content )

---


### Nested Elements ###

| **Name** | **Description** | **Type** |
|:---------|:----------------|:---------|
| content  |  Base64-coded content of the media | xs:base64Binary |
| url      |  					Location of the media.				 | xs:anyURI |


---


### Local Usage ###
> [Media](CMedia.md)