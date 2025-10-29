===============================================================
``GET https://devs.ouya.tv/api/v1/games/xxx/community_content``
===============================================================

Fetch available community content (e.g. levels) for the game.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/games/xxx/community_content``

  ``xxx``
    app package name

  Example: ``/api/v1/games/tv.ouya.sample.cc/community_content``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``sort``
    ``created_at``
    ``rating``
    ``updated_at``

    Sort order
  ``limit``
    ``10``

    Number of results to return
  ``offset``
    Page, only set when > 0
  ``category``
    Category filter


HTTP response
==============

Struct taken from ``tv.ouya.console.api.content.CCSearchResults``
(``full-ouya-framework.apk``).

``communityContentCount``
  int. Required.
``communityContent``
  array of objects. Required.

  ``author``
    String
  ``authorUuid``
    String
  ``category``
    String
  ``contentUrl``
    String
  ``dependencies``
    Array of strings
  ``description``
    String
  ``fileSize``
    int
  ``flagged``
    bool
  ``gameTitle``
    String
  ``md5sum``
    String
  ``metaInfo``
    String
  ``rating``
    Object.

    ``average``
      float
    ``count``
      int
    ``user``
      Float with F?
  ``revision``
    int
  ``screenshot``
    Object

    ``type``
      String
    ``urls``
      Array of objects

      ``full``
        String
      ``thumbnail``
        String
  ``tags``
    Array of strings
  ``title``
    String
  ``uuid``
    String
