===========================================
``GET https://devs.ouya.tv/api/v1/details``
===========================================

Detail page for an app bundle.

Also used as detail page for installed games when opened through
the "Play" section.

If there are no details available, the error code 2005 needs to be returned.
Otherwise opening the details for an installed but unlisted game will
fail on the OUYA.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/details``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``page``
    UUID of the bundle page to show

    Example: ``be239ca4-10fd-42dd-89cd-1806e80b1362``
  ``app``
    Package name of an app.

    Example: ``org.blockinger.game``
  ``developer``
    UUID of the developer

    Example: ``5b015434-8a78-4274-aa5d-0cb2e330e50e``

Only one of ``app``, ``developer`` or ``page`` is provided.


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Example: App
---------------

.. include:: api-v1-details.response-app.json
   :code:

Example: Bundle
---------------

.. include:: api-v1-details.response-bundle.json
   :code:

A full version of that response data is available in git at
``api/devs.ouya.tv/api-v1-details.response-bundle-full.json``


Example: Unlisted game
-----------------------

.. include:: api-v1-details.response-unlisted.json
   :code:


Buttons
=======
It is possible to add buttons in each of the detail types.

There are two types of buttons:

- Switchable buttons (on/off state)
- URL buttons (``android.intent.action.VIEW``,
  e.g. to open URLs or detail pages of other apps)


Button for a detail page of an app
----------------------------------
.. include:: api-v1-details.response-button-appdetails.json
   :code:

Button for a website URL
------------------------
.. include:: api-v1-details.response-button-url.json
   :code:

Switchable button
-----------------
.. include:: api-v1-details.response-button-switchable.json
   :code:

When the details page is loaded, ``status_url`` is fetched.
It needs to return ``{"status":true}`` or ``{"status":false}``.

If "true" is returned, ``on_text`` is shown.
Clicking will launch ``off_url``.

If "false is returned, ``text`` is shown.
Clicking will launch ``url``.
