precision mediump float;
varying vec2 vTextureCoord;
uniform sampler2D uSampler;

void main(void) {
    vec4 color = texture2D(uSampler, vTextureCoord);
    
    // Apply a color tint (e.g., a slight blue tint)
    vec3 tint = vec3(0.8, 0.8, 1.0); // Adjust these values for different tints
    vec3 tintedColor = color.rgb * tint;
    
    gl_FragColor = vec4(tintedColor, color.a);
}