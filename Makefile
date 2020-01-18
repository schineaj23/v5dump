all:
 echo "Unpacking existing libv5rt.a"
 ar -xv libv5rt.a
 echo "Complete"
 echo "Removing Old Archive"
 rm libv5rt.a
 echo "Complete"
 echo "Building New Files"
 gcc -c $(wildcard *.h)
 echo "Complete"
 echo "Creating New Archive"
 BLD_FILES = $(wildcard *.o)
 BLD_FILES += $(wildcard *.obj)
 ar cr libv5.a $(BLD_FILES)
 echo "Done"
install:
 echo "Enter Admin Password To Install"
 sudo cp ./libv5rt.a ~/usr/lib/libv5rt.a

