MIX := mix
CFLAGS := -O3 -g -ansi -pedantic -femit-all-decls


ERLANG_PATH = $(shell erl -eval 'io:format("~s", [lists:concat([code:root_dir(), "/erts-", erlang:system_info(version), "/include"])])' -s init stop -noshell)
CFLAGS += -I$(ERLANG_PATH)

CFLAGS += -I/usr/local/include -I/usr/include -L/usr/local/lib -L/usr/lib
CFLAGS += -std=gnu99 -Wno-unused-function

ifneq ($(OS),Windows_NT)
	CFLAGS += -fPIC

	ifeq ($(shell uname),Darwin)
		LDFLAGS += -dynamiclib -undefined dynamic_lookup
	endif
endif

.PHONY: all libnifllvm clean

all: libnifllvm


libnifllvm:
	$(MIX) compile

native/lib.ll: native/lib.c
	clang $(CFLAGS) -c -S -emit-llvm -o $@ $^

native/lib.s: native/lib.ll
	llc -o $@ $^

priv/libnifllvm.so: native/lib.s
	# $(CC) $(CFLAGS) -shared $(LDFLAGS) -o $@ native/lib.c
	$(CC) -shared $(LDFLAGS) -o $@ $^

clean:
	$(MIX) clean
	$(RM) priv/*