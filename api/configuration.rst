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

``DEBUG``
---------
When set to ``1``, additional output is shown in ``adb logcat``.
You will see the remote server URLs that the OUYA is trying to fetch.


``KIOSK_MODE``
--------------
When set to ``1``, the OUYA is set to a read-only mode.

Only the "play" menu is visible, and it only allows to start games - not even see their
details.

Upon inactivity after some minutes, a video
``/storage/sdcard0/ouya_attract_loop.mp4`` is being played.


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


Undocumented options
====================
Only the name of this variables is known::

  APP_UPDATE_CHECK_INTERVAL
  ATTRACT_LOOP_FILENAME
  ATTRACT_LOOP_TIMEOUT
  BTC_LAUNCHER_PACKAGES
  BTC_PARAMS_APP
  BTC_PARAMS_LAUNCHER
  CCTEST
  COMPARE_OTA_SETTINGS
  CRASH_REPORTS
  DEBUG_PICASSO
  DELETE_ACCOUNTS
  DISCOVER_HEADER_TEXT
  DONT_DELETE_OTA
  ENABLE_AGREEMENTS
  ENABLE_BUY_NOW
  ENABLE_BUY_NOW_PRICE
  ENABLE_BUY_NOW_PRICE_GUIDE
  ENABLE_LIKE_BUTTON
  ENABLE_REMOTES
  ENABLE_TRACES
  ENABLE_UPLOAD_LOGS
  FORCE_OTA
  FORCE_VIDEO_ERROR
  INPUT_REMAPPING_JSON_FILE
  LOCALE
  LOC_MULTIPLIER
  LOC_XXX
  METRICS_SPEW
  METRIC_APP_DETAILS
  METRIC_EXIT_GENRE
  METRIC_EXIT_STORE
  NUM_RECENT_DOWNLOADS_IN_DISCOVER
  OUYA_RENAME_CONTROLLER
  QUERY_GENDER_DOB
  RATING_PROMPT_DELAY
  RATING_PROMPT_FREQ
  RATING_PROMPT_MAX
  SAFE_ZONE
  SESSION_UPDATE_DELAY_SEC
  SHOW_DISCOUNTS
  SYSTEM_MESSAGE_URL
  THEME_CHECK_INTERVAL
  UPDATE_READY_UI_TIMEOUT
  UPDATE_TEXT_URL
  UPLOAD_LOGS_SEQ_NUM
  USER_MESSAGES
  USE_FAKE_VIDEOS
  WIFI_STATUS_DISPLAY
