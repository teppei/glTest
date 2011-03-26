//
//  graphicUtil.mm
//  glTest
//
//  Created by Teppei on 11/03/25.
//  Copyright 2011 hybridism. All rights reserved.
//

#include "graphicUtil.h"

void drawSqure()
{
    static const GLfloat squareVertices[] = {
        -0.5f, -0.5f,
        0.5f, -0.5f,
        -0.5f,  0.5f,
        0.5f,  0.5f,
    };
    
    static const GLubyte squareColors[] = {
        255, 255,   0, 255,
        0,   255, 255, 255,
        0,     0,   0,   0,
        255,   0, 255, 255,
    };

    glVertexPointer(2, GL_FLOAT, 0, squareVertices);
    glEnableClientState(GL_VERTEX_ARRAY);
    glColorPointer(4, GL_UNSIGNED_BYTE, 0, squareColors);
    glEnableClientState(GL_COLOR_ARRAY);
    
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);

}

void drawSqure(int red, int green, int blue, int alpha)
{
    drawSqure(0.0f, 0.0f, red, green, blue, alpha);  
}

void drawSqure(float x, float y, int red, int green, int blue, int alpha)
{
    drawRectangle(x, y, 1.0f, 1.0f, red, green, blue, alpha);  
}

void drawRectangle(float x, float y, float width, float height, int red, int green, int blue, int alpha)
{
    const GLfloat squareVertices[] = {
        -0.5f * width + x, -0.5f * height + y,
         0.5f * width + x, -0.5f * height + y,
        -0.5f * width + x,  0.5f * height + y,
         0.5f * width + x,  0.5f * height + y
    };
    
    const GLubyte squareColors[] = {
        red, green, blue, alpha,
        red, green, blue, alpha,
        red, green, blue, alpha,
        red, green, blue, alpha
    };
    
    glVertexPointer(2, GL_FLOAT, 0, squareVertices);
    glEnableClientState(GL_VERTEX_ARRAY);
    glColorPointer(4, GL_UNSIGNED_BYTE, 0, squareColors);
    glEnableClientState(GL_COLOR_ARRAY);
    
    glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
}

