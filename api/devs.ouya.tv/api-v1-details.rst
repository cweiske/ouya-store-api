===========================================
``GET https://devs.ouya.tv/api/v1/details``
===========================================

Detail page for an app bundle.

Also used as detail page for installed games when opened through
the "Play" section.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/details``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``page``
    UUID of the bundle page to show

    Example: ``be239ca4-10fd-42dd-89cd-1806e80b1362``
  ``app``
    Package ID of an app.

    Only ``app`` or ``page`` is provided.

    Example: ``org.blockinger.game``

HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Example: App
---------------

.. include:: api-v1-details.response-app.json
   :code:

Example: Bundle
---------------

.. include:: api-v1-details.response-bundle.json
   :code:

A full version of that response data is available in git at
``api/devs.ouya.tv/api-v1-details.response-bundle-full.json``
