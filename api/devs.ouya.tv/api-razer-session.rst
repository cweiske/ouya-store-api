===============================================
``POST https://devs.ouya.tv/api/razer/session``
===============================================

Login to the Razer Cortex store on the Razer Forge TV.

Similar to the OUYA login `POST https://devs.ouya.tv/api/v1/sessions`_,
but with e-mail instead of username.


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
Host
  ``devs.ouya.tv``
Path
  ``/api/razer/session``
Headers
  ``User-Agent``
    ``Dalvik/2.1.0 (Linux; U; Android 6.0.1; Forge Build/M-MMB29M-rzs-us-sf-bld2-19HP-08.02.AM)``
  ``Accept-Language``
    ``de``
  ``X-OUYA-Device``
    ``pearlyn``
  ``X-OUYA-Firmware-Version``:
    (empty)
  ``X-OUYA-Console-Id``
    Build serial number

    ``171256710321511``
  ``X-OUYA-Console-Wifi-MAC-Address``
    ``C4:8E:8F:82:29:B1``
  ``X-OUYA-VersionCode``
   ``10202320``
  ``Content-Type``
    ``application/x-www-form-urlencoded``

POST parameters
---------------
``email``
  User e-mail address
``password``
  User password


HTTP response
=============
Success
-------
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

After the initial login, `GET https://devs.ouya.tv/api/v1/gamers/me`_ is fetched.
If its reponse does not contain ``nickname``, the nickname input screen is shown.
The nickname is then stored via `PUT https://devs.ouya.tv/api/razer/gamer`_.

The CortexFramework code also parses properties
``razerToken``, ``nickname`` and ``avatar``
but they do not seem to be used.

.. include:: api-razer-session.response.json
   :code:
