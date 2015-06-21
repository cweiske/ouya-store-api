===========================================
``POST https://devs.ouya.tv/api/v1/gamers``
===========================================

Register a new user and/or verify new user registration data.

This method is both used as verification during input, as well as the
final registration.


Usage
=====
#. During registration to check if data are valid
#. During registration to finish new user sign up and create the account


HTTP request
============
Protocol
  ``https``
Method
  ``GET``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/gamers``
Headers
  Standard headers except token parameters.

  ``Content-Type``
    ``application/x-www-form-urlencoded``
POST parameters
  ``gamer[username]``
    User name used to log in
  ``gamer[password]``
    User password
  ``gamer[password_confirmation]``
    User password, a second time
  ``gamer[email]``
    User e-mail address for marketing e-mails
  ``gamer[gender]``
    ``unknown`` | ``male`` | ``female``
  ``gamer[email_opt_out]``
    ``false`` | ``true``

    Opt out from marketing e-mails
  ``dryrun``
    ``true``

    If set, the user data are not registered - only verified.
    The response then tells which fields are deemed invalid.

    Not set when the user clicks "register".


HTTP response
=============

Success
-------
When everything is ok and the user has been registered
(or the data were valid when ``dryrun`` was set)

Status code
  ``200 OK`` 
Content type
  ``application/json; charset=utf-8``
Response body
  ``{}``

Validation error
----------------
When some of the data are deemed to be invalid.

Status code
  ``400 Bad Request``
Content type
  ``application/json; charset=utf-8``

Example:

.. include:: api-v1-gamers.response-invalid.json
   :code:
