attribute vec3 aVertexPosition;
attribute vec2 aTextureCoord;
varying vec2 vTextureCoord;

uniform mat4 uTranslationMatrix;
uniform mat4 uZRotationMatrix;
uniform mat4 uYRotationMatrix;
//uniform mat4 uModelViewMatrix;
//uniform mat4 uProjectionMatrix;

void main(void) {
    vec4 position = vec4(aVertexPosition, 1.0);
    //gl_Position = uProjectionMatrix * uModelViewMatrix * position;
    gl_Position = uTranslationMatrix * uZRotationMatrix * uYRotationMatrix * position;
    //gl_Position = uZRotationMatrix * uTranslationMatrix * position;
    vTextureCoord = aTextureCoord;
}