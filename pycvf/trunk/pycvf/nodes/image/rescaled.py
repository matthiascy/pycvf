# -*- coding: utf-8 -*-
#########################################################################################################################################
#
# MyModel By Bertrand NOUVEL
# 2009 CNRS Postdoctorate JFLI
#
# (c) All rights reserved
# ###############################################
#
################################################################################################################################################################################
# Includes
################################################################################################################################################################################


import numpy
from pycvf.core import genericmodel
from pycvf.datatypes import image
from pycvf.lib.graphics import rescale

Model=genericmodel.pycvf_model_class(image.Datatype,image.Datatype)(rescale.Rescaler2d)
__call__=Model
