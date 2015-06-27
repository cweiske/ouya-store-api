===============================================
``PUT https://devs.ouya.tv/api/v1/credit_card``
===============================================

Store the result of the credit card storage request.

Usage
=====
Called after `POST https://ott9.wpstn.com/live/`_.

HTTP request
============
Protocol
  ``https``
Method
  ``PUT``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/credit_card``
Headers
  Standard headers

  ``Content-Type``
    ``application/x-www-form-urlencoded``
GET parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``
  ``body``:
    Complete response including headers
  ``zipcode``:
    Postal code
POST parameters
  ``auth_token``
    Same data as in standard header ``X-OUYA-AuthToken``

Example body parameter:

.. include:: api-v1-credit_card.put.get-body.txt
   :code:


HTTP response
=============
Status code
  ``200 OK`` 
Content type
  ``application/json; charset=utf-8``

Example:

.. include:: api-v1-credit_card.put.response.json
   :code:
