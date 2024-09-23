attribute vec4 a_position;
varying vec2 posColor;
void main() {
    posColor = a_position.xy;
    gl_PointSize = 5.0;
    gl_Position = a_position;
}