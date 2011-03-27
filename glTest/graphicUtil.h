//
//  graphicUtil.h
//  glTest
//
//  Created by Teppei on 11/03/25.
//  Copyright 2011 hybridism. All rights reserved.
//

#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>


void drawSqure();
void drawSqure(int red, int green, int blue, int alpha);
void drawSqure(float x, float y, int red, int green, int blue, int alpha);
void drawRectangle(float x, float y, float width, float height, int red, int green, int blue, int alpha);
void drawCircle(float x, float y, int divides, float radius, int red, int green, int blue, int alpha);
