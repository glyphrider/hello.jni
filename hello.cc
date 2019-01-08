#include "Hello.h"
#include <iostream>

class Hello
{
public:
       	jint print();
};

jint Hello::print()
{
	std::cout << "Hello, world!" << std::endl;
	return 0;
}

JNIEXPORT jint JNICALL Java_Hello_print
  (JNIEnv * jniEnv, jobject jObject)
{
	Hello hello;
	return hello.print();
}

