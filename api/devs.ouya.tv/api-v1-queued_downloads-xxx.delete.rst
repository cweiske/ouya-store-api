===========================================================
``DELETE https://devs.ouya.tv/api/v1/queued_downloads/xxx``
===========================================================

Remove an app from the list of queued downloads.


Usage
=====
After the app has been installed automatically on the OUYA.


HTTP request
============
Protocol
  ``https``
Method
  ``DELETE``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/queued_downloads/xxx``

  ``xxx``
    Package name. The ``uuid`` value from the queued downloads list.

  Example: ``/api/v1/queued_downloads/net.froemling.bombsquad``

Headers
  Standard headers

  ``uuid``
    The ``uuid`` value from the queued downloads list, which is actually
    a package name and not an UUID.
    
    Same as the ``xxx`` in the path.
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``

HTTP response
=============
Status code
  ``204 No Content``
