===========================================
``POST https://devs.ouya.tv/api/v1/events``
===========================================

Send information about the last events on the OUYA console to the
logging/tracking server.


Usage
=====

#. Every now and then when enough events have been collected

   FIXME: determine exact behavior


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/events``
Headers
  Standard headers

  ``Content-Type``
    ``application/x-www-form-urlencoded``
POST parameters
  ``current_time``
    ``1434577856574``

    Unix timestamp, milliseconds.
  ``console_id``
    Same data as in standard header ``X-OUYA-Console-Id``
  ``events``
    JSON-encoded array of event objects
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``

Example event JSON data:

.. include:: api-v1-events.request.json
   :code:
   :end-line: 30


HTTP response
=============
Status code
  ``200 OK`` 
Content type
  ``application/json; charset=utf-8``
Body
  ``{}``
