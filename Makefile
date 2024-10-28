# all: test_sideset_pindirs
#all: test_singlewire_read_pio
all: 
	mpremote a1 cp singlewire_pio.py :
	mpremote a1 run test_singlewire.py


copy_pio: 
	mpremote a1 cp singlewire_pio.py :
	mpremote a1 cp singlewire_write_pio.py :
	mpremote a1 cp singlewire_read_pio.py :

%: %.py
	mpremote a1 run $^

