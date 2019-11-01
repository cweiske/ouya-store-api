===========================================================
``GET https://devs.ouya.tv/api/v1/gamers/me/user_messages``
===========================================================

Send messages to users.

The API returns a list of URLs that get displayed to the user in a popup
in the main menu.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/gamers/me/user_messages``
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

Example (empty)::

  {
      "messages": [
          null
      ]
  }

Example (one URL)::

  {
      "messages": [
          "https://www.ouya.tv/message_to_all_users.txt"
      ]
  }
