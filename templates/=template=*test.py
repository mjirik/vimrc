#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © %YEAR% %USER% <%MAIL%>
#
# Distributed under terms of the %LICENSE% license.

"""

"""
import unittest
from nose.plugins.attrib import attr

class TemplateTest(unittest.TestCase):

    @attr('interactive')
    def test_%HERE%(self):
        pass

if __name__ == "__main__":
    unittest.main()
