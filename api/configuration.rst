=====================
Configuration options
=====================

It is possible to modify the behavior of the OUYA console by setting config
options.

They can be set in two ways:

1. In an ini-style file ``ouya_config.properties`` in the root OUYA directory
   when attached via USB to a PC (``/sdcard/`` on the OUYA itself).
2. On the server, via the `GET https://devs.ouya.tv/api/v1/console_configuration`_
   JSON file.


Available options
=================

``ATTRACT_LOOP_FILENAME``
-------------------------
Full path to the not-in-use-autoplay video in kiosk mode.

Default: ``/sdcard/ouya_attract_loop.mp4``


``CCTEST``
----------
When set to ``1``, the "Manage" menu shows a "[DEBUG] Test CC signup" entry.


``CRASH_REPORTS``
-----------------
When set to ``1``, the "Manage" menu shows a "[DEBUG] Send crash reports" entry.
It immediately sends stored crash reports to the server.


``DEBUG``
---------
When set to ``1``, additional output is shown in ``adb logcat``.
You will see the remote server URLs that the OUYA is trying to fetch.


``DELETE_ACCOUNTS``
-------------------
When set to ``1``, the "Manage" menu shows a "[DEBUG] Delete user accounts" entry
that immediately deletes the user account.


``DONT_DELETE_OTA``
-------------------
When an over-the-air update has been downloaded, it gets moved to
``/cache/update.zip``.
After moving, the original file gets deleted.
This option disabled this deletion.

Default: ``0``

(in ``ouya-framework.jar``)


``DUMP_DISCOVER_PAGES``
-----------------------
Store the downloaded API responses for discover category pages on
``/sdcard/``.


``ENABLE_AGREEMENTS``
---------------------
When disabled, the regular fetch of ``/api/v1/gamers/me/agreements`` will not happen.

Also does not show the agreements during user registration in OOBE.

Default: ``1``


``ENABLE_BUY_NOW``
------------------
When set to ``1``, the store details view shows a "buy now" button
for games that have the "premium" flag set and a promoted product.

Default: ``1``


``ENABLE_BUY_NOW_PRICE``
------------------------
When set to ``1``, the store details view shows the product price on
the "buy now" button (see ``ENABLE_BUY_NOW``).

Default: ``1``


``ENABLE_BUY_NOW_PRICE_GUIDE``
------------------------------
When set to ``1``, the guide menu
(that appears when double-clicking the ouya logo button)
shows the price of the promoted product.


``ENABLE_UPLOAD_LOGS``
----------------------
Automatically update system logs. Needs super user access for uploading.

Default: ``1``


``FORCE_OTA``
-------------
When set to ``1``: Force the OUYA to install an over-the-air update.

Default: ``0``


``FORCE_VIDEO_ERROR``
---------------------
When set to ``1``: Show an error whenever a video shall be played.

Default: ``0``


``KIOSK_MODE``
--------------
When set to ``1``, the OUYA is set to a read-only mode.

Only the "play" menu is visible, and it only allows to start games - not even see their
details.

Upon inactivity after some minutes, a video
``/storage/sdcard0/ouya_attract_loop.mp4`` is being played.
(See ``ATTRACT_LOOP_FILENAME``)


``LOC_MULTIPLIER``
------------------
Float value between 1.0 and 3.0

Increases the string length by the given factor by repeating the letters
in translatable strings.


``LOC_XXX``
-----------
When set to ``1``, all letters in translatable strings are replaced with ``X``.

Needs a reboot.


``METRIC_APP_DETAILS``
----------------------
When set to ``1``: Send a tracking notification whenever a details page
in the store is shown, along with the app UUID.


``OE_MAX_DOWNLOADS``
--------------------
Number of maximum downloads in the queue for non-ouya devices.

Default: ``10``


``OUYA_MAX_DOWNLOADS``
----------------------
Number of maximum downloads in the queue for original OUYA devices.

Default: ``5``


``OUYA_SERVER_URL``
-------------------
Base URL of the API server to connect.
By modifying this value, you can switch the OUYA to another server.

Default: ``https://devs.ouya.tv``


``OUYA_STATUS_SERVER_URL``
--------------------------
Used to check if the OUYA can reach the internet.

This URL needs to return a "204" HTTP status code.

Default: ``http://status.ouya.tv/api/v1/status``


``QUERY_GENDER_DOB``
--------------------
Show the gender and birthday input fields during registration in OOBE.

Default: ``1``


``RATING_PROMPT_DELAY``
-----------------------
Number of game launches until the "rate this game" prompt is shown.

Default: ``0`` (after the first launch)


``RATING_PROMPT_FREQ``
----------------------
When rating a game has been skipped, it will be tried again after X launches.

``0`` to disable rating popups.

Default: ``5``


``RATING_PROMPT_MAX``
---------------------
Maximum number of "Rate this game" popups per game.

Default: ``0`` (infinite)


``SAFE_ZONE``
-------------
Show a grey border around the OOBE screen.

Default: ``0``


``UPDATE_TEXT_URL``
-------------------
When installing an update, funny messages are shown.
They are downloaded from this URL.

Default: ``https://devs.ouya.tv/update_strings.txt``


``USER_MESSAGES``
-----------------
Comma-separated list of URLs to show to the user.
See `GET https://devs.ouya.tv/api/v1/gamers/me/user_messages`_.

Default: empty


``WIFI_STATUS_DISPLAY``
-----------------------
When set to ``1``:
Shows the current wifi status on the top right of all screens.

Example:

  Wifi: INTERFACE_DISABLED, Strenght (0-8): 0



Undocumented options
====================
Only the name of this variables is known::

  BTC_LAUNCHER_PACKAGES
  BTC_PARAMS_APP
  BTC_PARAMS_LAUNCHER
  COMPARE_OTA_SETTINGS
  UPDATE_READY_UI_TIMEOUT
  UPLOAD_LOGS_SEQ_NUM


Unused options
==============
They are defined in the code, but not used anywhere in ``OUYALauncher.apk``::

  APP_UPDATE_CHECK_INTERVAL
  ATTRACT_LOOP_TIMEOUT
  COMMUNITY_CONTENT_ENABLED
  DEBUG_PICASSO
  DISCOVER_HEADER_TEXT
  ENABLE_REMOTES
  ENABLE_TRACES
  INPUT_REMAPPING_JSON_FILE
  LOCALE
  METRIC_EXIT_GENRE
  METRIC_EXIT_STORE
  METRICS_SPEW
  NUM_RECENT_DOWNLOADS_IN_DISCOVER
  OUYA_RENAME_CONTROLLER
  SESSION_UPDATE_DELAY_SEC
  SHOW_DISCOUNTS
  SYSTEM_MESSAGE_URL
  THEME_CHECK_INTERVAL
  USE_FAKE_VIDEOS
