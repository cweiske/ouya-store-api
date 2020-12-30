=========================================================
``GET https://devs.ouya.tv/api/v1/console_configuration``
=========================================================

Sets Android system properties.
Allows to enable debug or kiosk mode remotely.

This file is downloaded every hour.

See `Configuration options`_.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/console_configuration``
Headers
  Standard headers
GET parameters
  ``auth_token``
    May be empty.

    Does not seem to have any influence on the response.


HTTP response
=============
Status code
  ``200 OK``

Example
-------

.. include:: api-v1-console_configuration.response.json
   :code:
