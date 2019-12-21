========================================================
``POST https://devs.ouya.tv/api/v1/games/xxx/purchases``
========================================================

Buy a game.

After buying the game shows up in 
`GET https://devs.ouya.tv/api/v1/premium_purchases`_.


Usage
=====
- When the user buys an app/game.


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/games/xxx/purchases``

  ``xxx``
    app package name

  Example: ``/api/v1/games/com.ChrisChung.CatlateralDamage/purchases``
Headers
  Standard headers

  ``Content-Type``
    ``application/x-www-form-urlencoded``
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``user_agent``
    ``launcher`` (at least when bought through the OUYA UI)
POST parameters
  ``blob``
    Base64-encoded encrypted data
  ``iv``
    Base64-encoded initialization vector for the cryptographic function
  ``key``
    Base64-encoded key used to encrypt the data. FIXME: symmetric or assymetric?
  ``auth_token``
    Same as ``X-OUYA-AuthToken``

The decrypted ``blob`` contains a JSON object:

``identifier``
  Product key
``testing``
  Unknown. Always "true".
``uuid``
  Random number that is used by the game for this purchase request.
  Must be returned in the response to this request.

.. include:: api-v1-games-xxx-purchases.post.request-decrypted.json
   :code:


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Again the base-64 encoded keys: ``iv``, ``key`` and ``blob``.

``blob`` is a JSON object that needs to contain the ``uuid`` property.
Other properties in the response are unknown.

Example
-------

.. include:: api-v1-games-xxx-purchases.post.response.json
   :code:
