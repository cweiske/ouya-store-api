=============================================
``POST https://devs.ouya.tv/api/v1/sessions``
=============================================

Log in and obtain a session token.

This token is stored in the console and used in the
``X-OUYA-AuthToken`` and ``X-Token`` headers as well as the
``auth_token`` GET parameter.


Usage
=====

#. After logging with an existing account
#. After new user registration
#. When visiting Manage > Accounts


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/sessions``
Headers
  ``Accept-Encoding``
  ``User-Agent``
  ``X-OUYA-Console-Id``
  ``X-OUYA-Device``

  ``Content-Type``
    ``application/x-www-form-urlencoded``
POST parameters
  ``username``
    User name used to log in
  ``password``
    User password

HTTP response
=============

Success
-------
When the user logged in successfully.

.. note:: If the user is already logged in, the old ``auth_token`` is returned.
          No new token is issued in this case.

Status code
  ``200 OK``
Content type
  ``application/json; charset=utf-8``

Response body example:

.. include:: api-v1-sessions.response-valid.json
   :code:


Invalid login data
------------------
When the login data are invalid.

Also seen when the data were not available yet (e.g. user freshly registered)
but the processes on the server were not finished yet.
The OUYA simply tried the request a second time.

Status code
  ``400 Bad Request``
Content type
  ``application/json; charset=utf-8``

Response body example:

.. include:: api-v1-sessions.response-invalid.json
   :code:
