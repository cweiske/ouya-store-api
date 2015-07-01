=====================================================
``GET https://devs.ouya.tv/api/v1/apps/xxx/download``
=====================================================

Fetch the download link for a specific version of an app.


Usage
=====
- When the user clicks "download"



HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/apps/xxx/download``

  ``xxx``
    ``latestVersion`` string from the apps details page

  Example: ``/api/v1/apps/0fba3bba-83e0-4e3e-9f29-409258429757/download``
Headers
  Standard headers
GET parameters
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

.. include:: api-v1-apps-xxx-download.response.json
   :code:
