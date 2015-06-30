===========================================
``GET https://devs.ouya.tv/api/v1/details``
===========================================

Detail page for an app bundle.


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
    UUID of the page to show

    Example: ``be239ca4-10fd-42dd-89cd-1806e80b1362``

HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Example
-------

.. include:: api-v1-details.response.json
   :code:
