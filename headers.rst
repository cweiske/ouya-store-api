=====================
Standard HTTP headers
=====================

The following HTTP headers are sent with nearly every HTTP request
from the OUYA console to the servers.

``Accept-Language``
  ``en-US,en``
``X-OUYA-VersionCode``
  ``16``
``X-OUYA-Console-Id``
  ``015d4b33bc64141b``

  Serial number you see when running ``$ adb devices``
``X-OUYA-AuthToken``
  ``96bfeaae-212d-447b-b4bf-caa5e86c0502``

  Authentication token one got from logging in.

  Only sent when logged in.
``X-OUYA-Console-Wifi-MAC-Address``
  ``B8:5A:F7:82:3C:C8``
``X-OUYA-Firmware-Version``
  ``1.2.1427_r1``
``X-Token``
  ``96bfeaae-212d-447b-b4bf-caa5e86c0502``

  Only sent when logged in.

  Same as ``X-OUYA-AuthToken``.

  FIXME: Why two token headers?
``X-OUYA-Device``
  ``ouya_1_1``

  Probably hardware revision
``Cookie``
  ``__cfduid=da019d762142461c19f162c0ee443f9c71434577887``

  ??? FIXME
``Cookie2``
  ``$Version=1``

  ??? FIXME
``Accept-Encoding``
  ``gzip``

  The OUYA understands gzip compression
``User-Agent``
  ``OUYA 0 1.00 1.2.1427_r1``
