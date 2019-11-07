============================================
``GET https://devs.ouya.tv/api/v1/apps/xxx``
============================================

Fetch the details for an app/game.


Usage
=====
- When the user enters the detail page in the discover store.
- Sometimes the OUYA refreshes details of all installed apps while running.

Related to ``api/v1/details``, which is used for already installed apps.


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
    Package name of an app

    Also UUID of a package release.

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
