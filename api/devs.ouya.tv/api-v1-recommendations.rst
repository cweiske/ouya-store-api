===================================================
``GET https://devs.ouya.tv/api/v1/recommendations``
===================================================

Get a list of games for the "you may also like" section.

Games already installed on the OUYA will be shown, too - with a checkmark.


Usage
=====
- When the user tries to exit a game (double-pressing ``U``)


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/recommendations``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``uuid``
    Package name of the game that is being exited

    Example: ``net.sourceforge.clonekeenplus``

HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``


Example
-------

.. include:: api-v1-recommendations.response.json
   :code:
