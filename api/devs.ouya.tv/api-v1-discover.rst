============================================
``GET https://devs.ouya.tv/api/v1/discover``
============================================

Fetch the categories and games in the OUYA store.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/discover``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Response body definition
------------------------
JSON object with two properties: ``rows`` and ``tiles``.
``rows`` contains the layout of the "discover" store main view, while
``tiles`` contains the list of games/apps available in the store with
details.


``rows``
--------
Array with objects that have with several properties:

``showPrice``
  ``true`` or ``false``
``ranked``
  ``true`` or ``false``

  If the games are sorted by the internal ranking factor, or in order
  of appearance in ``tiles``.
``tiles``
  array

  List of integer game IDs (``[0, 1, 2]``)
``title``
  string

  Title of the category


``tiles``
---------
Array of objects that each describe a single application.

The position in the ``tiles`` array is the ID used by ``rows/tiles``.

``bundle``
  Only there when it's not a single game but a bundle of games that can be
  bought.

  Object with the following properties:

  ``apps``
    array

    Array of ``package`` strings
  ``currency``
    ``EUR``
  ``price``
    float
  ``contentRating``
    See ``contentRating`` description below.
  ``purchaseUrl``
    string

    URL where to initiate buying the bundle

    ``ouya://launcher/purchase?developer=ec1a9ccd-373f-4047-bd07-36466ab7e25d&product=ROBOBUNDLE``
``contentRating``
  For which audiences the game is meant

  Seen values:

  - ``Everyone``
  - ``9+``
  - ``12+``
  - ``17+``
``gamerNumbers``
  array

  List of integers describing how many players can play the game
``genres``
  array

  Array of strings with genre titles.

  ``["Fight!", "Multiplayer", "Platformer"]``

  Known genres:

  - Adventure
  - App
  - Arcade/Pinball
  - Card/Casino
  - Dual Stick
  - Entertainment
  - Fight!
  - FPS/Shooter
  - Kids List
  - Meditative
  - Multiplayer
  - Music
  - Platformer
  - Puzzle/Trivia
  - Racing
  - Retro
  - Role-Playing
  - Short on Time?
  - Sim/Strategy
  - Sports
  - Utility
  - Video
``image``
  URL to an image displayed in store view.

  Size should be 732x412.

  ``.jpg`` and ``.png`` files work.
``inAppPurchases``
  ``true`` or ``false``

  If you can/have to pay within the game
``latestVersion``
  object

  ``apk``
    ``md5sum``
      MD5 hash of the apk file. Used for verification after download.
  ``versionNumber``
    string with current version, e.g. ``1.11``
  ``uuid``
    ???
``package``
  string

  java package name prefix, e.g. ``evil.corptron.DuckGame``
``premium``
  ``true`` or ``false``

  FIXME: What is that for?
``promotedProduct``
  object

  Bundles do not have this property set.

  ??? FIXME: What is that for?

  ``currency``
    string

    ``EUR``
  ``description``
    string
  ``developerName``
    string

    Name of the developer or company who made the game
  ``identifier``
    string

    ???
  ``localPrice``
    float

    Current price
  ``name``
    string

    Title of the game
  ``originalPrice``
    float

    Price it did once cost
  ``percentOff``
    integer

    Percent difference between ``originalPrice`` and ``localPrice``
  ``type``
    string

    ``entitlement`` is the only type seen within ``promotedProduct``.
``rating``
  Object with two properties: ``count`` and ``average``.

  ``count``
    integer

    Number of votes for this game
  ``average``
    float

    Average rating (1-5)
``title``
  Name of the app/game
``type``
  ``app`` or ``discover`` or ``details_page``

  Bundles always have ``details_page``.
``updated_at``
  integer

  Unix timestamp of last update date
``updatedAt``
  string

  ISO 8601-date, e.g. ``2014-12-04T22:16:30Z``
``url``
  string

  URL for the game details page

  Game details
    ``ouya://launcher/details?app=evil.corptron.DuckGame``
  Bundle details
    ``ouya://launcher/details?page=be239ca4-10fd-42dd-89cd-1806e80b1362``

    See `GET https://devs.ouya.tv/api/v1/details`_.

``title``
---------
string

Always ``DISCOVER``.


Example
-------

.. include:: api-v1-discover.response.json
   :code:

The API git repository contains a full copy of the "discover" response
at ``api/devs.ouya.tv/api-v1-discover.response-full.json``.

