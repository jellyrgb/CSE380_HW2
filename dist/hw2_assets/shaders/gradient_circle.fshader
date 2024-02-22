precision mediump float;

uniform vec3 u_Color; // Modified Code

varying vec4 v_Position;

void main(){
    float alpha = 0.0;
    float radius = 0.5;
    float dist_sq = v_Position.x * v_Position.x + v_Position.y * v_Position.y;

    if(dist_sq < radius * radius){
        alpha = 4.0 * dist_sq;
    }

    gl_FragColor = vec4(u_Color, alpha); // Modified Code
}
