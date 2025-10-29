================================================================
``POST https://devs.ouya.tv/api/v1/games/xxx/community_content``
================================================================

Upload community content (e.g. levels) to the server.


HTTP request
============
Protocol
  ``https``
Method
  ``POST``
Host
  ``devs.ouya.tv``
Path
  ``/api/v1/games/xxx/community_content``

  ``xxx``
    app package name

  Example: ``/api/v1/games/tv.ouya.sample.cc/community_content``
Headers
  Standard headers

  ``Content-Type``
    ``application/x-www-form-urlencoded``
GET parameters
  ``auth_token``
    Same as ``X-OUYA-AuthToken``
POST parameters
  ``request[uuid]``
    Example: ``0f02f93e-8eb7-44a7-a2c9-d86be692ea85``
  ``request[signature]``
    Example: ``R6Jt1GM3IASameqEdMmlVgw6D/9CinsHQlm2FnRtLlbCy2X68JEjB+uAQSOCjEuXKbOpKzQreK481fEYn1quNQwUDu98rGMRfTPsw8tEvuHvY0CyqRKpCBH6DKmsyNU8RUZ4x+Hz64yVQMcNchK0/gEmFPS8WfLdLJeJtIk19gY=``
  ``community_content[title]``
    Content title, e.g. level name
  ``community_content[category]``
    Game-specific category

    Example: ``emblem``
  ``community_content[description]``
    Level description
  ``community_content[content]``
    .zip file contents

    File name: ``content.zip``


HTTP response
=============

FIXME

JSON object with properties:

``uuid``
  String
