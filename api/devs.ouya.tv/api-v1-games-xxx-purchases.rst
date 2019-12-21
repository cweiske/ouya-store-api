=======================================================
``GET https://devs.ouya.tv/api/v1/games/xxx/purchases``
=======================================================

Check which features have been bought in an app (if the app has been
bought).

Each game may have multiple products that can be bought.
One of them may be the "promotedProduct" in the discover section, and
that one can be bought in the discover store / play menu app details.


Usage
=====
- When an app/game is featured and shown on the main menu ("home"),
  it is checked if the app has already been purchased.
- When opening the game details the "buy" button is shown if the
  "promotedProduct" is in the list of purchases
- When a game starts it checks if it has been bought.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/games/xxx/purchases``

  ``xxx``
    app package name

  Example: ``/api/v1/games/com.ChrisChung.CatlateralDamage/purchases``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``app_id``
    ``com.ChrisChung.CatlateralDamage``

    Same as the one in the path.
  ``user_agent``
    ``launcher``


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Three properties:

``iv``
  Base 64 encoded initialization vector for encryption
``key``
  Base 64 encoded FIXME. Must be 128/192/256 bits long.
``blob``
  Base64 encoded encrypted data

The decrypted ``blob`` contains again a JSON object with the following properties:

- ``iv``
- ``key``
- ``blob``

This blob is again a base64-encoded JSON objecct and contains the actual data:
An array of receipts/purchases.

``purchaseDate``
  Required. Milliseconds.
``generateDate``
  Optional. Milliseconds.
``identifier``
  Product key. Required. Alternative name: ``sku``.
``gamer``
  User name. Required.
``uuid``
  User UUID. Required.
``priceInCents``
  Integer. Optional.
``localPrice``
  Float. Optional.
``currency``
  Optional. Default ``USD``.

Example
-------

Encrypted response:

.. include:: api-v1-games-xxx-purchases.response.json
   :code:

Decrypted receipt list:

.. include:: api-v1-games-xxx-purchases.response-decrypted.json
   :code:
