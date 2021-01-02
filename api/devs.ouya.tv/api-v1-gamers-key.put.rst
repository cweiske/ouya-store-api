==============================================
``PUT https://devs.ouya.tv/api/v1/gamers/key``
==============================================

Store the user's public key on the server.

Receipts/purchases are encryptd by the server with the user's public key,
so that only that user can decrypt it.


Usage
=====

#. Once per bootup just before purchases are checked the first time.
   That can be when opening "Play" that contains purchasable games,
   or "Discover" showing purchasable games.


HTTP request
============
Protocol
  ``https``
Method
  ``PUT``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/gamers/key``
Headers
  Standard headers

  ``Content-Type``
    ``application/x-www-form-urlencoded``
GET parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``
POST parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``
  ``gamer[key]``
    string

    FIXME encryption key
  ``gamer[password]``
    string

    User account password
  ``gamer[username]``
    string

    User account name

Example key::

  -----BEGIN PUBLIC KEY-----
  MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCvf3MvvZui5shNGbt2O0zveXrtfHZNivowNKiO
  UagJARKCJmjOJVtZ1srCe95Eul/xBDPDEaH8vJetn5Pl99QwhdYL1ps9mUhmocx90LavQsipr2Dw
  B7XshwN/EpW0uR/R84a3yXozpk7dgXi4+y//A+XT+MqgxsY6cdSGrBMsCQIDAQAB
  -----END PUBLIC KEY-----


HTTP response
=============
Status code
  ``201 Created``
Content type
  ``application/json; charset=utf-8``
Body
  ``{}``
