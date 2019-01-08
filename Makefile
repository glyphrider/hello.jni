CC=clang
CXX=clang++
CFLAGS=-I /usr/lib/jvm/java-8-openjdk-amd64/include -I /usr/lib/jvm/java-8-openjdk-amd64/include/linux -shared

run : Hello.class libhello.so
	java -Djava.library.path=. Hello

libhello.so : hello.cc Hello.h
	$(CXX) $(CFLAGS) -o $@ $<

Hello.h : Hello.class
	javah Hello

Hello.class : Hello.java
	javac $<

clean :
	rm -f Hello.class Hello.h libhello.so
