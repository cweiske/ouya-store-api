==========================================
``GET https://www.ouya.tv/system_message``
==========================================

Unknown

Usage
=====
- After storing credit card result in
  `PUT https://devs.ouya.tv/api/v1/credit_card`_.

HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``www.ouya.tv``
Path
  ``//system_message``
Headers
  ``User-Agent``
    ``OUYA 0 1.00 1.2.1427_r1``
GET parameters
  ``build``:
    ``1.2.1427_r1``

    OUYA firmware version

HTTP response
=============
Status code
  ``403 Forbidden`` 

This was probably once used, but now does only return an error.
