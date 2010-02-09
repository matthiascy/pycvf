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

#########################################################################################################################################
# Define our model
#########################################################################################################################################


from pycvf.core import genericmodel
from pycvf.datatypes import basics

class MyModel(genericmodel.GenericModel):
  input_datatype=lambda self,x:x
  datatype=lambda self,x:basics.FloatDatatype
  def init_featurefilter(self):
     self.featurefilter=('src.mean()'  ,{},  {}) 
  def init_structures(self):
     self.structures=[]

