CC = gcc

CFLAGS  = -Wall -g 


TARGET = open close read write malloc free fork sleep


all: $(TARGET)


$(TARGET): %: %.c
	$(CC) $< -o $@ $(CFLAGS) 

clean:
	$(RM) $(TARGET)
