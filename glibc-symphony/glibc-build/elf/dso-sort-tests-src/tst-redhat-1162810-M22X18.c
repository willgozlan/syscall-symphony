extern int printf(const char *, ...);
static void __attribute__((constructor)) init(void){printf("M22X18>");}
static void __attribute__((destructor)) fini(void){printf("<M22X18");}
