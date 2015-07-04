============================================
``POST https://devs.ouya.tv/api/v1/ratings``
============================================

Store the rating of a single game

Usage
=====
Directly after a user rated a game on the exit screen.


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/ratings``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
POST parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
  ``game``
    Package name of the game

    E.g. ``com.littleguy77.filepwn``
  ``score``
    integer

    1 to 5:

    1
      Hate it
    2
      Don't like it
    3
      Like it
    4
      Really like it
    5
      Love it

HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``

Example::

    {
        "success": true
    }

