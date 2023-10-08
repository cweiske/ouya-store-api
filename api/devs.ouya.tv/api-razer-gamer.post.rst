=============================================
``POST https://devs.ouya.tv/api/razer/gamer``
=============================================

Register a new account on a Razer Forge TV.

Similar to `POST https://devs.ouya.tv/api/v1/gamers`_,
but uses different POST data.


Request
=======

POST data
---------
``email``
  E-mail address
``password``
  Password
``email_opt_out``
  Inverted checkbox "Opt-in for emails from Razer".

  Value: ``true`` or ``false``

Response
========

See `POST https://devs.ouya.tv/api/v1/gamers`_.

Validation error for e-mail is in the ``email`` property.
