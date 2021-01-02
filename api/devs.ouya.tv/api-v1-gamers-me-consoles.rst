=======================================================
``POST https://devs.ouya.tv/api/v1/gamers/me/consoles``
=======================================================

Associate a console ID with the account.


Usage
=====

#. After logging in with an existing account
#. (Probably after registering a new account)


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/gamers/me/consoles``
Headers
  Standard headers

  ``Content-Type``
    ``application/x-www-form-urlencoded``
GET parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``
POST parameters
  ``console_id``:
    ``015d4b33bc64141b``

    Same data as in standard header ``X-OUYA-Console-Id``
  ``auth_token``:
    Same data as in standard header ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK``
Content type
  ``application/json; charset=utf-8``
Body
  ``{}``
