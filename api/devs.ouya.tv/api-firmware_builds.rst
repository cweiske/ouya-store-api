================================================
``GET https://devs.ouya.tv/api/firmware_builds``
================================================

List the latest available firmware version.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/firmware_builds``
Headers
  Standard headers

  Token parameters not required.
GET parameters
  ``auth_token``
    May be empty.

    Does not seem to have any influence on the response.

  ``oobe``
    ``true``

    Can be omitted.

    Does not seem to have any influence on the response.

    FIXME: what is that for? "Out Of (the) Box Experience"? Does it change anything?


HTTP response
=============
Status code
  ``200 OK``
Content type
  ``application/json; charset=utf-8``

Example
-------

.. include:: api-firmware_builds.response-short.json
   :code:
