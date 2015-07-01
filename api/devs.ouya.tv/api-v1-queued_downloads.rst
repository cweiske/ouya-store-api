====================================================
``GET https://devs.ouya.tv/api/v1/queued_downloads``
====================================================

Fetch a list of apps/games that shall get installed automatically
on the OUYA.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/queued_downloads``
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

.. include:: api-v1-queued_downloads.response.json
   :code:
