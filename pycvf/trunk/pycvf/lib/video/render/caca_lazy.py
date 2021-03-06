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


import numpy
from PIL import Image
import ctypes
from pycvf.lib.graphics.imgfmtutils import *
from pycvf.core import settings

lcaca = ctypes.cdll.LoadLibrary('libcaca.so.0')
xlcacainit=ctypes.CFUNCTYPE(None)(("__caca0_init",lcaca))
xlcaca0_cv=ctypes.c_void_p.in_dll(lcaca,"__caca0_cv")
xlcaca0_dp=ctypes.c_void_p.in_dll(lcaca,"__caca0_dp")
xlcaca_create_bitmap=ctypes.CFUNCTYPE(ctypes.c_void_p,ctypes.c_int,ctypes.c_int,ctypes.c_int,ctypes.c_int,ctypes.c_int,ctypes.c_int,ctypes.c_int,ctypes.c_int)(("__caca0_create_bitmap",lcaca))
xlcaca_free_bitmap=ctypes.CFUNCTYPE(None,ctypes.c_void_p)(("__caca0_free_bitmap",lcaca))

def lcacainit():
  #caca.init()
  xlcacainit()
  
  #caca0_cv=lcaca.caca_create_canvas(0, 0);
  #caca0_dp = lcaca.caca_create_display(__caca0_cv);
  #if (caca0_dp==0):
  #  raise Exception
    
    
    
    
class LazyDisplay(object):
    def __init__(self):
           #lcaca.__caca0_init()
           lcacainit()
           #lcaca.caca_set_window_title("pycvf")
	   print "a"
	   #canvas=lcaca.caca_create_canvas(0)
	   print "b"
           #print "Window size is ",lcaca.get_window_width(),"x",lcaca.get_window_height()
           #print "Buffer size is ",lcaca.get_width(),"x",lcaca.get_height()

	   #self.display= lcaca.caca_create_display(0)
	   #print "display ok"
           self.ww = lcaca.caca_get_canvas_width(xlcaca0_cv)#caca_get_width()
           self.hh = lcaca.caca_get_canvas_height(xlcaca0_cv)
           print self.ww,self.hh
            
           
           #lcaca.caca_set_display_title(self.display, "sPyCVF")
           pass
    def __del__(self):
          # lcaca.caca_free_display(self.display);
          pass
    def f(self,img):
            """ this function updates the image on the screen (this function does a copy of the image)"""
            #ximg=img.mean(axis=2)
            ximg=img   
            try:
              image = NumPy2PIL(ximg)
            except Exception,e:
              print "Error during conversion"
              print e
            bmwidth,bmheight=300,200
            image=image.resize((bmwidth,bmheight)).convert('RGBA')
            #self.screen.put_image((0, 0), image)
            #self.dither= lcaca.caca_create_dither(72,bmwidth,bmheight,)
            #
            pixels=image.tostring()
            bitmap=xlcaca_create_bitmap(32,bmwidth,bmheight,4*bmwidth,0x000000ff,0x0000ff00,0x00ff0000,0x00000000)
            
            lcaca.caca_dither_bitmap(xlcaca0_cv,0,0,self.ww,self.hh,bitmap, pixels);
            xlcaca_free_bitmap(bitmap)
            #lcaca.caca_free_dither(self.dither)
            #lcaca.caca_refresh_display(self.display)
            lcaca.caca_refresh_display(xlcaca0_dp)
    def push(self,stamped_img):
         """ we ignore the timestamp and directly display the image on the screen"""
         self.f(stamped_img[0])
    def render(self):
            lcaca.caca_refresh()
            
            #gcc -shared -fPIC -o libcaca.so.0 caca.c graphics.c event.c math.c line.c box.c conic.c triangle.c sprite.c bitmap.c time.c -I .. -DHAVE_CONFIG_H -O2 -DPIC -DOPTIMISE_SLANG_PALETTE=1   -lslang -lncurses -lX11
