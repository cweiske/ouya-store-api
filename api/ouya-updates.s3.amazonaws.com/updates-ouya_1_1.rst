==================================================================
``GET http://ouya-updates.s3.amazonaws.com/updates-ouya_1_1.json``
==================================================================

Information about the latest firmware.
Only used by old firmware versions like ``1.0.138`` and ``1.0.158``.

Firmware ``1.0.248`` and later do not check this URL anymore and
use `GET https://devs.ouya.tv/api/firmware_builds`_ instead.


HTTP request
============
Protocol
  ``http``
Method
  ``GET``
Host
  ``ouya-updates.s3.amazonaws.com``
Path
  ``/updates-ouya_1_1.json``


HTTP response
=============
Status code
  ``200 OK``

.. include:: updates-ouya_1_1.json
   :code:
