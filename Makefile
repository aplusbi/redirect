PREFIX = ./usr/bin
all: redirect.cmx
	ocamlopt.opt -o redirect unix.cmxa redirect.cmx

redirect.cmx: redirect.ml
	ocamlopt.opt -c redirect.ml

clean:
	rm redirect.cmx redirect.cmi redirect.o 

install: redirect
	cp redirect $(PREFIX)/redirect
