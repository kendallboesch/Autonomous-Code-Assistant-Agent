lib: 
		clang++ -std=c++14 -shared -o ./Code/jobsystem/libjobsystem.so -fPIC ./Code/jobsystem/*.cpp -pthreads

build:
		clang++ -std=c++14 -o output Code/main.cpp -L./Code/jobsystem -ljobsystem 
		
compile: 
		make lib
		make build
pyrest:
		python3 ./Code/RestJob.py $(ARGS)

run: 
		./output $(ARGS)

demoerror: 
		clang++ -std=c++14 -o output Code/toCompile/demoerror.cpp 
typeerror: 
		clang++ -std=c++14 -o output Code/toCompile/typeerror.cpp
syntaxerror:
		clang++ -std=c++14 -o output Code/toCompile/syntaxError.cpp

errorreset:
		rm -r errors.json

convowrite:
		clang++ -std=c++14 -o out Code/convoHander.cpp 
		./out