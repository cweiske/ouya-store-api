================================================================
``GET https://devs.ouya.tv/api/v1/partner_builds/release_notes``
================================================================

Return the changelog for the latest OUYA everywhere installer.

Used by the Razer Forge TV only (Manage > Razer Cortex > "Update Notes").


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/partner_builds/release_notes``
Headers
  ``User-Agent``
    - ``Dalvik/2.1.0 (Linux; U; Android 6.0.1; Forge Build/M-MMB29M-rzs-us-sf-bld2-19HP-08.02.AM)``
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
  ``X-OUYA-AuthToken``
    ``00702342-0000-1111-2222-c3e1500cafe1``


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``


Example
-------

.. include:: api-v1-partner_builds-release_notes.response.json
   :code:
