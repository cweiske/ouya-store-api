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
    Encrypted data
  ``iv``
    FIXME: Initialization vector for the cryptographic function
  ``key``
    FIXME: Key used to encrypt the data. FIXME: symmetric or assymetric?
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

.. include:: api-v1-games-xxx-purchases.post.response.json
   :code:
