====================================================
``GET https://devs.ouya.tv/api/v1/queued_downloads``
====================================================

Fetch a list of apps/games that shall get installed automatically
on the OUYA.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/queued_downloads``
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

Known ``source`` options:

``gamer``
  The user clicked onto "push to my ouya" on the OUYA website
``game-of-the-month``
  The game gets automatically installed because the OUYA people awarded it the
  "game of the month" trophy.
``new-user``
  You are a freshly registered user and should have this game on your OUYA.


Example
-------
Automatically pushed onto a fresh account:

.. include:: api-v1-queued_downloads.response.json
   :code:

Manually pushed via the web site:

.. include:: api-v1-queued_downloads.response-2.json
   :code:
