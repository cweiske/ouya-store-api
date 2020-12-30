****************************
OUYA store API documentation
****************************

This is an attempt to document the API used by OUYA gaming consoles to
speak with ``devs.ouya.tv``.

.. contents::
   :depth: 1

.. include:: headers.rst
.. include:: api/ott9.wpstn.com/live.rst
.. include:: api/status.ouya.tv/api-v1-status.rst
.. include:: api/devs.ouya.tv/api-firmware_builds.rst
.. include:: api/devs.ouya.tv/api-v1-apps-xxx.rst
.. include:: api/devs.ouya.tv/api-v1-apps-xxx-download.rst
.. include:: api/devs.ouya.tv/api-v1-console_configuration.rst
.. include:: api/devs.ouya.tv/api-v1-crash_report.rst
.. include:: api/devs.ouya.tv/api-v1-credit_card.post.rst
.. include:: api/devs.ouya.tv/api-v1-credit_card.put.rst
.. include:: api/devs.ouya.tv/api-v1-details.rst
.. include:: api/devs.ouya.tv/api-v1-developers-xxx-current_gamer.rst
.. include:: api/devs.ouya.tv/api-v1-developers-xxx-products.rst
.. include:: api/devs.ouya.tv/api-v1-discover.rst
.. include:: api/devs.ouya.tv/api-v1-discover-home.rst
.. include:: api/devs.ouya.tv/api-v1-discover-tutorials.rst
.. include:: api/devs.ouya.tv/api-v1-events.rst
.. include:: api/devs.ouya.tv/api-v1-gamers.rst
.. include:: api/devs.ouya.tv/api-v1-gamers-key.put.rst
.. include:: api/devs.ouya.tv/api-v1-gamers-me.rst
.. include:: api/devs.ouya.tv/api-v1-gamers-me-agreements.rst
.. include:: api/devs.ouya.tv/api-v1-gamers-me-agreements.put.rst
.. include:: api/devs.ouya.tv/api-v1-gamers-me-apps-developed.rst
.. include:: api/devs.ouya.tv/api-v1-gamers-me-consoles.rst
.. include:: api/devs.ouya.tv/api-v1-gamers-me-user_messages.rst
.. include:: api/devs.ouya.tv/api-v1-games-xxx-purchases.rst
.. include:: api/devs.ouya.tv/api-v1-games-xxx-purchases.post.rst
.. include:: api/devs.ouya.tv/api-v1-premium_purchases.rst
.. include:: api/devs.ouya.tv/api-v1-queued_downloads.rst
.. include:: api/devs.ouya.tv/api-v1-queued_downloads-xxx.delete.rst
.. include:: api/devs.ouya.tv/api-v1-ratings.rst
.. include:: api/devs.ouya.tv/api-v1-ratings.post.rst
.. include:: api/devs.ouya.tv/api-v1-recommendations.rst
.. include:: api/devs.ouya.tv/api-v1-search.rst
.. include:: api/devs.ouya.tv/api-v1-sessions.rst
.. include:: api/devs.ouya.tv/api-v1-themes.rst
.. include:: api/devs.ouya.tv/api-v1-wallet.rst
.. include:: api/devs.ouya.tv/agreements-marketplace.html.rst
.. include:: api/devs.ouya.tv/update_strings.txt.rst
.. include:: api/www.ouya.tv/system_message.rst
.. include:: api/configuration.rst


=====
About
=====
This documentation has been written by Christian Weiske,
cweiske+ouya@cweiske.de.

Last update: ##UPDATE##


License
=======
It is licensed under the GNU Free Documentation License.


Source code
===========
The documentation sources are available at
http://git.cweiske.de/ouya-store-api.git/
and mirrored at
https://github.com/cweiske/ouya-store-api


Home page
=========
A rendered version of this documentation is available at
http://cweiske.de/ouya-store-api-docs.htm



Building
========
You need to install ``rst2html5`` before::

    $ pip install rst2html5-tools

Rendering the docs is done via a build script::

    $ ./build.sh
