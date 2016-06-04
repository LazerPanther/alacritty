#version 330 core
in vec2 TexCoords;

layout(location = 0, index = 0) out vec4 color;
layout(location = 0, index = 1) out vec4 alphaMask;

uniform sampler2D mask;
uniform ivec3 textColor;

void main()
{
    alphaMask = vec4(texture(mask, TexCoords).rgb, 1.0);
    vec3 textColorF = vec3(textColor) / vec3(255.0, 255.0, 255.0);
    color = vec4(textColorF, 1.0);
}