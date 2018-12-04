void print_int(int x){
    printf("%d", x);
}
void print_newline(){
    putchar('\n');
}
void print_float(float x){
    printf("%.10f", x);
}
float float_of_int (int x){
    return (float)x;
}

int*create_array(int x, int y){
    void*p = malloc(sizeof(int)*x);
    memset(p, y, sizeof(int)*x);
    return (int*)p;
}
int*create_tuple(int x){
    void*p = malloc(sizeof(int)*x);
    return (int*)p;
}
