#include <stdio.h>
#include <syslog.h>

int main(int argc, char **argv) {
openlog(NULL,0,LOG_USER);
if (argc != 3) {
	syslog(LOG_ERR,"Number of arguments %d", argc - 1);
	return 1;
};
FILE *f = fopen(argv[1], "w");
int wrote = fputs(argv[2], f);
fclose(f);
if (wrote == EOF) {
	syslog(LOG_ERR,"Write Error %d",wrote);
}
else {
	syslog(LOG_DEBUG,"Writing %s to %s", argv[2], argv[1]);
}
return 0;
}
