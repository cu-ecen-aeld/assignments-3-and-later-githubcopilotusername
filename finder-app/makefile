ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
compiler=/gcc-arm-10.2-2020.11-x86_64-aarch64_be-none-linux-gnu/bin/aarch64_be-none-linux-gnu-gcc

else
compiler=gcc
endif
writer: writer.o
	$(compiler) -o writer writer.o
writer.o: writer.c
	$(compiler) -c writer.c
clean:
	rm -f writer writer.o
