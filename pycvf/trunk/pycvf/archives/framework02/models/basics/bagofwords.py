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
import scipy
import hashlib
from pycvf.lib.stats.bagofwords import BagOfWords
from pycvf.core import genericmodel
from pycvf.datatypes import basics
from pycvf.lib.info.cacheable import NotReady
#########################################################################################################################################
# Define our model
#########################################################################################################################################

  
  
class MyModel(genericmodel.GenericModel):
  datatype=lambda self,x:basics.NumericVectorDatatype
  def init(self,categories=32, burnin=2000, *args, ** kwargs):
     self.bowfilename=self.modelpath+"/bagofwords.pcl"
     try:
        self.ibow=self.load(self.bowfilename)
        if (self.ibow==None):
            raise Exception
        print "loaded", self.bowfilename,"..."
        print "burnin is ", self.ibow.burnin,"..."
     except:
        self.ibow=BagOfWords(categories,burnin=burnin)
     genericmodel.GenericModel.init(self,*args,**kwargs)
     print "burnin is ", self.ibow.burnin,"..."
  def wordify(self,v):
     try:
        return self.ibow.push(v)
     except:
       if (self.ibow.vocabulary==None):
          raise NotReady
       else: 
          raise
  def init_featurefilter(self):
     idbow=hashlib.md5(str(self.modelpath)).hexdigest()
     self.featurefilter=('src|ibow'+idbow  ,{'ibow'+idbow:self.wordify},  {}) 
  def save(self):
     if (self.ibow):
        self.ibow.save()

    
