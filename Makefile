MINGW=c:/msys64/mingw64
LUA_INC=-I $(MINGW)/include
LUA_LIB=-L $(MINGW)/bin -llua53

datalist.dll : datalist.c
	gcc -g -Wall -fPIC --shared -o $@ $^ $(LUA_INC) $(LUA_LIB)

clean :
	rm -f datalist.dll