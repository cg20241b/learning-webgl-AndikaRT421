precision mediump float;
varying vec2 posColor;
void main() {
    gl_FragColor = vec4(abs(posColor.x), abs(posColor.y), 0.6, 1);
}