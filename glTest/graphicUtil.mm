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

void drawCircle(float x, float y, int divides, float radius, int red, int green, int blue, int alpha)
{
    GLfloat vertices[divides * 3 * 2];
    
    int vertextInd = 0;
    
    for (int i=0; i<divides; i++) {
        // i番目の頂点角度のラジアンを計算
        float theta1 = 2.0f / (float)divides * (float)i * M_PI;
        
        // i+1番目の頂点角度のラジアンを計算
        float theta2 = 2.0f / (float)divides * (float)(i+1) * M_PI;
        
        // i番目の三角形の0番目（原点）の座標
        vertices[vertextInd++] = x;
        vertices[vertextInd++] = y;
        
        // i番目の三角形の1番目の頂点
        vertices[vertextInd++] = cos(theta1) * radius + x;
        vertices[vertextInd++] = sin(theta1) * radius + y;
        
        // i番目の三角形の2番目の頂点
        vertices[vertextInd++] = cos(theta2) * radius + x;
        vertices[vertextInd++] = sin(theta2) * radius + y;
    }
    
    // ポリゴンの色
    glColor4ub(red, green, blue, alpha);
    glDisableClientState(GL_COLOR_ARRAY);
    
    // 頂点配列をセットして
    glVertexPointer(2, GL_FLOAT, 0, vertices);
    glEnableClientState(GL_VERTEX_ARRAY);
    
    // n個のポリゴンで構成され、各ポリゴンは３つの頂点をもつ
    // 頂点の数は divides * 3
    // 描画する
    glDrawArrays(GL_TRIANGLES, 0, divides * 3);
    
    
}




