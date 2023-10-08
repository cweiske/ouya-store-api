=====================
Standard HTTP headers
=====================

The following HTTP headers are sent with nearly every HTTP request
from the OUYA console to the servers.

``Accept-Encoding``
  ``gzip``

  The OUYA understands gzip compression
``Accept-Language``
  ``en-US,en``
``User-Agent``
  OUYA: ``OUYA 0 1.00 1.2.1427_r1``

  Razer Forge TV: ``Dalvik/2.1.0 (Linux; U; Android 6.0.1; Forge Build/M-MMB29M-rzs-us-sf-bld2-19HP-08.02.AM)``
``X-OUYA-AuthToken``
  ``96bfeaae-212d-447b-b4bf-caa5e86c0502``

  Authentication token one got from logging in.

  Only sent when logged in.
``X-OUYA-Console-Id``
  ``015d4b33bc64141b``

  Serial number you see when running ``$ adb devices``
``X-OUYA-Console-Wifi-MAC-Address``
  ``B8:5A:F7:82:3C:C8``
``X-OUYA-Device``
  ``ouya_1_1``

  Probably hardware revision
``X-OUYA-Firmware-Version``
  ``1.2.1427_r1``
``X-OUYA-VersionCode``
  ``16``
``X-Token``
  ``96bfeaae-212d-447b-b4bf-caa5e86c0502``

  Only sent when logged in.

  Same as ``X-OUYA-AuthToken``.

  FIXME: Why two token headers?

  FIXME: Why ``auth_token`` GET parameter when there are headers?


Headers to ignore
=================
``Cookie``
  ``__cfduid=da019d762142461c19f162c0ee443f9c71434577887``

  Comes from the cloudflare error page. Can be ignored.
``Cookie2``
  ``$Version=1``

  ??? FIXME

  Not on the cloudflare error page.
