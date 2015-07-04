=====================================================
``GET https://devs.ouya.tv/api/v1/premium_purchases``
=====================================================

Get a list of all games that have been bought.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/premium_purchases``
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

Full details of the apps.

Example
-------

.. include:: api-v1-premium_purchases.response.json
   :code:
