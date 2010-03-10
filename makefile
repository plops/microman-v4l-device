MM=/home/martin/src/mm0121/micromanager1.3
all: check video4linux2.cpp
	g++ -g -Wall -W -fPIC -shared -o libmmgr_dal_video4linux2.so -I$(MM) video4linux2.cpp $(MM)/MMDevice/.libs/libMMDevice.a -lm

install:
	sudo cp libmmgr_dal_video4linux2.so /usr/lib/micro-manager/libmmgr_dal_video4linux2.so.0

check: check.cpp
	g++ -g -Wall -W -I$(MM) -L. -lmmgr_dal_video4linux2 check.cpp -o check -lpthread