uniform mat2 vexMatrix;
uniform mat4 texMatrix;
attribute vec2 vexPosition;
attribute vec2 texPosition;
varying vec2 texCoord;

void main() {
    texCoord = (texMatrix * vec4(texPosition, 0, 1)).st;
    gl_Position = vec4(vexMatrix * vexPosition, 0.0, 1.0);
}