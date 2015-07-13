==========================================
``GET https://devs.ouya.tv/api/v1/wallet``
==========================================

Get the account balance and currency.

Usage
=====
After user registration, before the credit card input form is shown.


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


Example without credit card data
--------------------------------
.. include:: api-v1-wallet.response.json
   :code:

FIXME: Find out if we get that response when giving a dummy number
during registration (4111 1111 1111 1111).


Example with credit card data
-----------------------------
.. include:: api-v1-wallet.response-2.json
   :code:

FIXME: Find out if we can disable credit card input by setting
``requiresPaymentMethod`` to ``false``.
