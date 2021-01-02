================================================
``GET https://devs.ouya.tv/api/firmware_builds``
================================================

List the latest available firmware version.


Usage
=====

#. During the OUYA setup (Parameter ``oobe=true`` is set)
#. During bootup
#. Every 3 minutes unless an "Expires" header is set


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

    Optional.

    Is set once during the OUYA setup (Out Of Box Experience).


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
