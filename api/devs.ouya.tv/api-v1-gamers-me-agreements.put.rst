========================================================
``PUT https://devs.ouya.tv/api/v1/gamers/me/agreements``
========================================================

Store that a legal agreement has been confirmed by the user.


Usage
=====

FIXME


HTTP request
============
Protocol
  ``https``
Method
  ``PUT``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/gamers/me/agreements``
Headers
  Standard headers

  ``Content-Type``
    ``application/x-www-form-urlencoded``
GET parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``
POST parameters
  ``marketplace``:
    ``2``

    Version of the marketplace agreement
  ``auth_token``:
    Same data as in standard header ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK`` 
Content type
  ``application/json; charset=utf-8``
Body
  ``{}``
