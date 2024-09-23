precision mediump float;
varying vec2 v_uv;
uniform float u_time;
uniform vec2 u_resolution;

void main() {
    vec2 uv = v_uv - 0.5;
    float radius = 0.3 + 0.1 * sin(u_time);
    float dist = length(uv) - radius;
    float edge = smoothstep(0, 0.01, dist);
    gl_FragColor = vec4(vec3(0.0), 1.0 - edge);
}