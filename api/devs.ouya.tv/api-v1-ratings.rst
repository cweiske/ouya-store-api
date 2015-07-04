===========================================
``GET https://devs.ouya.tv/api/v1/ratings``
===========================================

Get a list of games and the ratings the user made for them.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/ratings``
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


Example
-------

.. include:: api-v1-ratings.response.json
   :code:
