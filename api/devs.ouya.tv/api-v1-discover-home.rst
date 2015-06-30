=================================================
``GET https://devs.ouya.tv/api/v1/discover/home``
=================================================

Probably the list of games to be featured on the main menu.

More than the 4 displayed because it could be that a player already
bought some of them - they would not be shown then.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/discover/home``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Response body definition
------------------------
Same as `GET https://devs.ouya.tv/api/v1/discover`_ with some limitations:

- Only one entry in the ``rows`` array

  Title of this row is ``FEATURED``, price is shown, not ranked.
- ``title`` attribute value is ``home``.
