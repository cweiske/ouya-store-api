============================================================
``GET https://devs.ouya.tv/api/v1/developers/xxx/products/``
============================================================

Use in-game when purchasing a feature, sometimes already at game startup.

Some games rely on this to check if the game is purchasable at all.
If the product list does not contain the product identifier they
expect, buying is not possible. (Example: ``com.sega.sonic4epi``)

Usage
=====
- When the user starts a game and pressed "Sync" in the store
  (at "Babylonian Twins")


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/developers/xxx/products/``

  ``xxx``
    Developer UUID

  Example: ``/api/v1/developers/c4e46efe-05fd-4be9-9d7e-1f7607eabd49/products/``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``only``
    Product key (same as ``Identifier`` in ``promotedProduct`` of app details)

    Example: ``&only=unlock_pro``


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Example
-------

.. include:: api-v1-developers-xxx-products.response.json
   :code:
