extern int printf(const char *, ...);
static void __attribute__((constructor)) init(void){printf("M24X21>");}
static void __attribute__((destructor)) fini(void){printf("<M24X21");}
