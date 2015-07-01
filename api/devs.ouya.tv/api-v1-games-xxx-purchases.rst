=======================================================
``GET https://devs.ouya.tv/api/v1/games/xxx/purchases``
=======================================================

FIXME: Check which features have been bought in an app, or if the app has been
bought.


Usage
=====
- When an app/game is featured and shown on the main menu ("home"),
  it is checked if the app has already been purchased.


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

  ``xxx`` is the app package name.

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

Example
-------

.. include:: api-v1-games-xxx-purchases.response.json
   :code:
