==========================================
``GET https://devs.ouya.tv/api/v1/themes``
==========================================

Load the main menu background image/video.


Usage
=====
#. During startup before loading the main menu
#. Every three hours


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


Response body definition
------------------------

``background_style``
  Supported until at least ODK 1.0.12.
  Latest firmware 1.2.1427 does not support it anymore.

  ``static`` meant that the image would be scaled.
  Any value other than ``static`` would make the image pan around.
``background``
  Full URL to a backgroud image
``video``
  Supported until at least ODK 1.0.12.
  Latest firmware 1.2.1427 does not support it anymore.

  Video URL had preference over background image URL.

Example
-------

.. include:: api-v1-themes.response.json
   :code:

FIXME: get response with video/image set.
