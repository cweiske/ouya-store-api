================================================================
``GET https://devs.ouya.tv/api/v1/developers/xxx/current_gamer``
================================================================

Fetch gamer information from within a game.

Usage
=====
- At the startup of Knightmare Tower and Towerfall (when bought)

  
HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/developers/xxx/current_gamer``

  ``xxx``
    Developer UUID
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Same data as in ``gamers/me``.

Example
-------

.. include:: api-v1-developers-xxx-current_gamer.response.json
   :code:
