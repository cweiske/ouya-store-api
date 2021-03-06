========================================================
``GET https://devs.ouya.tv/api/v1/gamers/me/agreements``
========================================================

Check which legal agreements have been confirmed by the user,
and if there are updates that have to be confirmed.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/gamers/me/agreements``
Headers
  Standard headers
GET parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK`` 
Content type
  ``application/json; charset=utf-8``

Example:

.. include:: api-v1-gamers-me-agreements.response.json
   :code:

Each agreement has an associated HTML file with the same name
at ``https://devs.ouya.tv/agreements/``, e.g.
``https://devs.ouya.tv/agreements/marketplace.html`` for the
``marketplace`` agreement.

