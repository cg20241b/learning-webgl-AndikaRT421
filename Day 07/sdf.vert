attribute vec2 aVertexPosition;
uniform mat4 uTranslationMatrix;
varying vec2 vPos;

void main() {
    vPos = aVertexPosition;
    vec4 positionVec4 = vec4(aVertexPosition, 1.0, 1.0);
    gl_Position = uTranslationMatrix * positionVec4;
}