varying highp vec2 textureCoordinate;

uniform sampler2D inputImageTexture;

uniform highp float aspectRatio;
uniform highp vec2 moveVector;

void main()
{
    highp vec2 textureCoordinateToUse = vec2(textureCoordinate.x-moveVector.x, textureCoordinate.y-moveVector.y);
    if(textureCoordinateToUse.x < 0.0 || textureCoordinateToUse.x > 1.0 || textureCoordinateToUse.y < 0.0 || textureCoordinateToUse.y > 1.0){
        gl_FragColor = vec4(0.0,0.0,0.0,0.0);
    }else{
        gl_FragColor = texture2D(inputImageTexture, textureCoordinateToUse );
    }
}