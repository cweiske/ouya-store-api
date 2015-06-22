================================================
``POST https://devs.ouya.tv/api/v1/credit_card``
================================================

Prepare the credit card registration process and fetch a one-time token
for the wpstn.com (world pay) credit card processor.


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
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

  ``zipcode``
    Postal code entered on the credit card form.
POST parameters
  ``auth_token``:
    Same data as in standard header ``X-OUYA-AuthToken``


HTTP response
=============
Status code
  ``200 OK`` 
Content type
  ``application/json; charset=utf-8``

Example:

.. include:: api-v1-credit_card.post.response.json
   :code:

The ``one_time_token`` is used in the following ``POST`` request to
the URL determined in ``redirect_url``.
