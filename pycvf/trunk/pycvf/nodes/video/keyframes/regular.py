#!/usr/bin/env python
# -*- coding: utf-8 -*-
## ##########################################################################################################
## 
## This file is released under GNU Public License v3
## See LICENSE File at the top the pycvf tree.
##
## Author : Bertrand NOUVEL / CNRS (2009)
##
##
##
## Revision FILE: $Id$
##
## ###########################################################################################################
## copyright $Copyright$
## @version $Revision$
## @lastrevision $Date$
## @modifiedby $LastChangedBy$
## @lastmodified $LastChangedDate$
#############################################################################################################


# -*- coding: utf-8 -*-
from pycvf.core import genericmodel
import pycvf.datatypes.list 
from pycvf.datatypes import video,image,basics

class Model(genericmodel.Model):
        def input_datatype(self,x):
           return video.Datatype
        def output_datatype(self,x):
           return pycvf.datatypes.list.Datatype(image.Datatype)
        def init_model(self,num_images=3, return_images=True, return_positions=False, *args,**kwargs):
          if (return_images):
            if (return_positions):
              def regularimages(vr):
                 return [ (vr[ (i) ],i) for i in range(0,len(vr),num_images) ]
            else:
              def regularimages(vr):
                 return [ vr[ (i) ] for i in range(0,len(vr),num_images) ]
          else:
             def regularimages(vr):
               return [ i for i in range(0,len(vr),num_images) ]
          self.processing=[('regularimages'+str(num_images)  ,{'regularimages'+str(num_images):regularimages})]

__call__=Model
