#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#define BUFSZ 128

ssize_t readline (char *buf, size_t sz, char *fn, off_t *offset);

int main (int argc, char **argv) {

    if (argc < 2) return 1;

    char line[BUFSZ] = {0};
    off_t offset = 0;
    ssize_t len = 0;
    size_t i = 0;

    /* using open/read, read each line in file into 'line' */
    while ((len = readline (line, BUFSZ, argv[1], &offset)) != -1)
        printf (" line[%2zu] : %s (%zd chars)\n", i++, line, len);

    return 0;
}

/* read 'sz' bytes from file 'fn' beginning at file 'offset'
   storing all chars  in 'buf', where 'buf' is terminated at
   the first newline found. On success, returns number of
   characters read, -1 on error or EOF with 0 chars read.
 */
ssize_t readline (char *buf, size_t sz, char *fn, off_t *offset)
{
    int fd = open (fn, O_RDONLY);
    if (fd == -1) {
        fprintf (stderr, "%s() error: file open failed '%s'.\n",
                __func__, fn);
        return -1;
    }

    ssize_t nchr = 0;
    ssize_t idx = 0;
    char *p = NULL;

    /* position fd & read line */
    if ((nchr = lseek (fd, *offset, SEEK_SET)) != -1)
        nchr = read (fd, buf, sz);
    close (fd);

    if (nchr == -1) {   /* read error   */
        fprintf (stderr, "%s() error: read failure in '%s'.\n",
                __func__, fn);
        return nchr;
    }

    /* end of file - no chars read
    (not an error, but return -1 )*/
    if (nchr == 0) return -1;

    p = buf;    /* check each chacr */
    while (idx < nchr && *p != '\n') p++, idx++;
    *p = 0;

    if (idx == nchr) {  /* newline not found  */
        *offset += nchr;

        /* check file missing newline at end */
        return nchr < (ssize_t)sz ? nchr : 0;
    }

    *offset += idx + 1;

    return idx;
}
