============================================
``GET https://devs.ouya.tv/api/v1/apps/xxx``
============================================

Fetch the details for an app/game.


Usage
=====
- When the user enters the detail page in the store.
- When the user enters the detail page for an already installed app.
- Sometimes the OUYA refreshes details of all installed apps while running.


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/apps/xxx``

  ``xxx``
    package name of an app

  Example: ``/api/v1/apps/com.toa.tetrisFusionOuya``
Headers
  Standard headers

  ``console_id``
    Same as ``X-OUYA-Console-Id``
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK``
Content-type
  ``application/json; charset=utf-8``


Example
-------

.. include:: api-v1-apps-xxx.response.json
   :code:
