==================================================
``GET https://devs.ouya.tv/api/v1/partner_builds``
==================================================

Fetch commands for the "OUYA Everywhere" installer.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/partner_builds``
Headers
  ``User-Agent``
    Known values:

    - ``ouya-everywhere-installer (MadCatz/mojo-TS/mojo:4.2.2/JDQ39/MO0205-TS:user/release-keys)``
    - ``ouya-everywhere-installer (razer/pearlyn/pearlyn:6.0.1/M-MMB29M-rzs-us-sf-bld2-19HP-08.02.AM/144:user/release-keys)``
  ``Accept-Language``
    ``de``
  ``X-InstallerVersionCode``
    ??
  ``X-InstallerVersionName``
    ??
  ``X-InstallerPackageName``
    ??
  ``X-OUYA-Console-Id``
    Build serial number
  ``X-Device``
    ??
  ``X-Product``
    ??
  ``X-Model``
    ??
  ``X-Brand``
    ??
  ``X-Display``
    ??
  ``X-BuildId``
    ??
  ``X-Manufacturer``
    ??
  ``OUYAUsername``
    When logged in.


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``


Response body definition
------------------------
The response is a list of commands that the OUYA Everywhere installer
will execute one after another.

The top-level object contains a key ``actions``, which is an array of
action objects.
Each action has a ``action`` property that defines its type.


exit action
-----------
Just stop the installer.

No additional properties.

.. include:: api-v1-partner_builds.exit.json
   :code:


installFile action
------------------
Install the given .apk file if it has not yet been installed.

``action``
  ``installFile``
``packageName``
  Name of package to install. Example: ``de.ouya.cweiske.foo``
``friendlyName``
  Name shown on screen during installation
``md5``
  Example: ``d3b07384d113edec49eaa6238ad5ff00``
``filesize``
  ``12345``
``downloadUrl``
  ``http://example.org/app.apk``
``versionCode``
  Optional property. Example: ``23``.

  Only install when the current version is lower than this number.


launch action
-------------
Start the given application

``action``
  ``launch``
``packageName``
  Application to start. Example: ``de.ouya.cweiske.foo``


showDialog action
-----------------
Show a message that the user has to confirm.

``action``
  ``showDialog``
``title``
  Message dialog title string
``message``
  Actual text
``verticalMargin``
  Optional. Example: ``1.0``


uninstallFile action
--------------------
Remove a package

``action``
  ``uninstallFile``
``packageName``
  Example: ``de.ouya.cweiske.foo``
``keepData``
  Optional boolean. Example: ``false``
``ifLessThanVersionCode``
  Optional integer. Example: ``12``
``ifGreaterThanVersionCode``
  Optional integer. Example: ``42``


Example
-------

.. include:: api-v1-partner_builds.response.json
   :code:
