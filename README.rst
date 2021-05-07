=============
PYTHON .VIMRC
=============

VIM Configuration for Python / Cython / C Development.

Keep calm and use VIM!

Requirements
------------

- NeoVIM 0.5+
- git
- bash 3.2+

How does it look?
-----------------

.. image:: https://github.com/ets-labs/python-vimrc/wiki/img/screenshot.png

Installation
------------

You can install it by using CLI just have next command executed:

.. code-block:: bash

  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Alviner/python-vimrc/master/setup.sh)"

During execution of init script do not worry about error messages. When it
occurs just press enter and wait till all plugins are installed.

Autocompletion
--------------

Current bundle use one of the most comprehensive plugins for autocompletion -
`Valloric/YouCompleteMe <https://github.com/Valloric/YouCompleteMe>`_.
YouCompleteMe autocompletion plugin requires additional installation that
depends on environment and functionality you want to have. Detailed
instructions could be found on plugin page:
`Valloric/YouCompleteMe <https://github.com/Valloric/YouCompleteMe#installation>`_.


**Note:** Need post install YCM:

.. code-block:: bash

  ~/.vim/bundle/YouCompleteMe/install.py --all
