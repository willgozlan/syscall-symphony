extern int printf(const char *, ...);
static void __attribute__((constructor)) init(void){printf("B138>");}
static void __attribute__((destructor)) fini(void){printf("<B138");}
