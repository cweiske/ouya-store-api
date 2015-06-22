=============================================
``GET https://devs.ouya.tv/api/v1/gamers/me``
=============================================

Fetch username, e-mail and other data about the user currently logged in.

HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/gamers/me``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK`` 
Content type
  ``application/json; charset=utf-8``

Example:

.. include:: api-v1-gamers-me.response.json
   :code:
