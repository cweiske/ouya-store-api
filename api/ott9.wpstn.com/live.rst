=====================================
``POST https://ott9.wpstn.com/live/``
=====================================

Store credit card data.


Usage
=====
Called after fetching a one time token from
`POST https://devs.ouya.tv/api/v1/credit_card`_.


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
Host
  ``ott9.wpstn.com``
Path
  ``/live/``
Headers
  ``Content-Type``
    ``application/x-www-form-urlencoded``
  ``User-Agent``
    ``OUYA 0 1.00 1.2.1427_r1``
POST parameters
  ``Action``:
    ``Add``
  ``OTT``:
    Random one-time token from credit card POST request.
  ``AcctName``:
    Credit card account holder name
  ``AcctNumber``:
    ``4111111111111111``

    Credit card number
  ``ExpDate``:
    ``012017``

    Month & year
  ``CVN``:
    ``777``

    Secret code
  ``Email``:
    E-mail address
  ``ZipCode``:
    Postal code


HTTP response
=============
Status code
  ``303 See Other``

Redirects to ``wpsuccess`` URL on devs.ouya.tv with the ``OTT`` parameter::

  https://devs.ouya.tv/wpsuccess?OTT=C187D8AE8970...

The redirect location header seems to be ignored; it does not get called.
Instead, `PUT https://devs.ouya.tv/api/v1/credit_card`_ is fetched.
