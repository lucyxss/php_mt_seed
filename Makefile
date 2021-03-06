CC = gcc
RM = rm -f
CFLAGS = -Wall -march=native -O2 -fomit-frame-pointer -funroll-loops -fopenmp -mavx2 
PROJ = php_mt_seed

php_mt_seed: php_mt_seed.c
	$(CC) $(CFLAGS) $< -o $@

mic:
	$(MAKE) CC=icc CFLAGS='-mmic -O3 -openmp'

clean:
	$(RM) $(PROJ)
