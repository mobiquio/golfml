  * **Why would I use GolfML?**

To benefit from the golf community. Golfers around the world contribute to various sites. All that information is now available to you through GolfML and accessible in a standard common format.

  * **I have a distribution system. I don't want ot change my code. Others should adapt their code to mine.**

If we are taking about golf related data, we can certainly write XML stylesheets to convert to and from your own proprietary format.

Golfer will benefit from a unique common format for golf-related data. To make the life of your customers easy, you should adapt your application and allow them to enter information from a GolfML document they produced with another application.

  * **I have the best application. Others will comply to mine.**

Everybody will benefit from the community. You cannot benefit from a community by living in your own, restricted world.

  * **I don't want others to steal my data.**

GolfML is just a markup language. It does not specify how you distribute your document.

To protect your data, it is possible to add a digital signature and copyright restrictions in the document.

  * **GolfML is verbose. My code is more compact. I don't need the extra stuff.**

GolfML encompasses several scenarii, it is flexible and must adapt to a lot of situations.
To make GolfML easy and readable, element and attribute names are meaningful english terms.
Yes it is verbose, but it certainly is neither closed nor static. GolfML document are _human readable_.

If size of document is an issue, [compression](http://www.cafeconleche.org/books/effectivexml/chapters/50.html) is recommanded. Compression of text-based files easily reaches 50-70% decrease in size.

If an application requires a valid addition to the standard, we are open to discussion (in the forum for instance).

Our standard is also yours. You can contribute to it, make it better and more comprehensive. However, it never should go away from its initial [goals](Goals.md).

  * **GolfML is too complicated.**

We can help by explaining the rationale behind GolfML, and help building XML document and stylesheets.
Fell free to ask questions in the forum.

  * **GolfML does not suit my needs.**

Please review the [goals of GolfML](Goals.md) to see if your application falls into the category of applications GolfML can help.

  * **Why can't I dump everything in the `<application>` element? It would make a valid golfml document.**

A given GolfML application should ignore other `<application>` elements.
No application will ever see or find your work if you do so.