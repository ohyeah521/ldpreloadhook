LOCAL_ARM_MODE := arm

all:
	ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk 

install:
	adb push libs/armeabi/libhook.so /data/local/tmp/libhook.so

clean:
	rm -rf libs/
	rm -rf obj/
	rm *~
