==========================================
``GET https://devs.ouya.tv/api/v1/wallet``
==========================================

The the account balance and currency.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/wallet``
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

.. include:: api-v1-wallet.response.json
   :code:
