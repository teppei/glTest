//
//  Shader.fsh
//  glTest
//
//  Created by Teppei on 11/03/25.
//  Copyright 2011 hybridism. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
