==========================================
``GET https://devs.ouya.tv/api/v1/themes``
==========================================

Load the main menu background image/video.


Usage
=====
#. FIXME VERIFY: During startup before loading the main menu


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/themes``
Headers
  Standard headers.
GET parameters
  ``auth_token``
    May be empty.

    Does not seem to have any influence on the response.


HTTP response
=============

Status code
  ``200 OK`` 
Content type
  ``application/json; charset=utf-8``

Example:

.. include:: api-v1-themes-response.json
   :code:

FIXME: get response with video/image set.
