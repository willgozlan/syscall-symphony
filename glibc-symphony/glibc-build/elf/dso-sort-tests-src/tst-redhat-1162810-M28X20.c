extern int printf(const char *, ...);
static void __attribute__((constructor)) init(void){printf("M28X20>");}
static void __attribute__((destructor)) fini(void){printf("<M28X20");}
