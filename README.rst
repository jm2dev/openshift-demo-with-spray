=====================
Openshift DIY example
=====================
---------------------------------------
Deploying a spray scala web application
---------------------------------------

.. sidebar:: Contents

    .. contents::

.. sectnum::

Introduction
============

`OpenShift`_ is a platform as a service solution built by `redhat`_.

Set up
======

You need to register an account and install the required software
``rhc``.

For our case we cannot use the available solutions but we can use the
`DIY`_ cartridge to support new frameworks like scala and sbt for the
purpose of this example.

Finally you can create a new application, we called it ``hola``:

::

   rhc app create hola

Spray project
=============

We have used `spray template`_ project to illustrate the workflow
required to deploy a sbt application into openshift.

This `blog entry` provided good tips to set up `sbt` correctly.

Action hooks
============

The DIY cartridge provided two action hooks, to start and stop the
application, that we have adapted to our application. Additionally we
created two additional scripts, ``pre_build`` to install sbt locally
and ``build`` to assemble the application.

.. _OpenShift: https://www.openshift.com/
.. _redhat: https://www.redhat.com/
.. _spray template: https://github.com/spray/spray-template
.. _DIY: https://github.com/openshift/origin-server/tree/master/cartridges/openshift-origin-cartridge-diy/README.md
.. _blog entry:
http://piotrbuda.eu/2013/02/trying-to-deploy-scala-app-on-openshift.html
.. _sbt: http://www.scala-sbt.org/



