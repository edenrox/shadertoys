const vec4 kBlack = vec4(0.0, 0.0, 0.0, 1.0);
const vec4 kWhite = vec4(1.0, 1.0, 1.0, 1.0);

// A shader which slowly blends from white to black
void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    float value = (cos(iTime) + 1.0) / 2.0;
    fragColor = vec4(mix(kBlack, kWhite, value));
}
