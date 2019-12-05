====================================================
``GET https://devs.ouya.tv/api/v1/search``
====================================================

Search for games in the discover store.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/search``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``q``
    Search word(s)


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

The ``count`` property contains the number of games that matched the search
string, even if they are not all returned in the result list.
The search result list is limited to 20 or 40 games.

When the ``count`` is higher than the number of items in ``results``,
the OUYA will send a new search request to the API when another letter is added
to the search word.

If the ``count`` and ``results`` are the same, the OUYA will use the current
response and filter it for itself without asking the server again.

Example
-------
.. include:: api-v1-search.response.json
   :code:
