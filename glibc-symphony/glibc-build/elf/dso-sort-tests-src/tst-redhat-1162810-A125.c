extern int printf(const char *, ...);
static void __attribute__((constructor)) init(void){printf("A125>");}
static void __attribute__((destructor)) fini(void){printf("<A125");}
