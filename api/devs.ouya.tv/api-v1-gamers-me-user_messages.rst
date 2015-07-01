===========================================================
``GET https://devs.ouya.tv/api/v1/gamers/me/user_messages``
===========================================================

FIXME


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/gamers/me/user_messages``
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

Example (empty)::

  {
      "messages": [
          null
      ]
  }

FIXME: get a full example
