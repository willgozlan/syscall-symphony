extern int putchar(int);
static void __attribute__((constructor)) init(void){putchar('a');putchar('>');}
static void __attribute__((destructor)) fini(void){putchar('<');putchar('a');}
extern int printf(const char *, ...);
void fn_a (void) {
  printf ("a()");
}
