extern int putchar(int);
static void __attribute__((constructor)) init(void){putchar('f');putchar('>');}
static void __attribute__((destructor)) fini(void){putchar('<');putchar('f');}
