############################################################

include makefile.env
include mkflags
include mk.inf

############################################################
.SUFFIXES: .o .C .c  .cpp

C++FLAGS = $(DEBUG) $(ARCH)

.c.o:
	$(CC) $(ALL_INCLUDES) $(C++FLAGS) -C -E $*.c > $*.ip
	$(EUCKRFIX) $*.ip  $*.i
	$(CC) $(ALL_INCLUDES) $(C++FLAGS) -c $*.i -o $*.o
	$(DBGRM) $*.ip $*.i

.C.o:
	$(CXX) $(ALL_INCLUDES) $(C++FLAGS) -C -E $*.C > $*.iip
	$(EUCKRFIX) $*.iip  $*.ii
	$(CXX) $(ALL_INCLUDES) $(C++FLAGS) -c $*.ii -o $*.o
	$(DBGRM) $*.iip $*.ii

.cpp.o:
	$(CXX) $(ALL_INCLUDES) $(C++FLAGS) -C -E $*.cpp > $*.iip
	$(EUCKRFIX) $*.iip  $*.ii
	$(CXX) $(ALL_INCLUDES) $(C++FLAGS) -c $*.ii -o $*.o
	$(DBGRM) $*.iip $*.ii


all: $(TARGET).out

$(TARGET).f:
	cp '$(WSDIR)/sys/data/sample.f' $(TARGET).f

$(TARGET).out: $(OBJS) $(TARGET).f
	@if [ x$(WSDIR) = x ]; then \
		set -x; \
		$(CXX) $(C++FLAGS) -o $(TARGET).out $(OBJS) $(ALL_LIBS2) $(EXTLIB); \
	else \
		set -x; \
		$(CXX) $(C++FLAGS) -o $(TARGET).out $(OBJS) $(ALL_LIBS) $(EXTLIB); \
	fi
	cpp -I$(BD)/appl/dbox -DPCAT -P $(TARGET).f $(TARGET).fsn.tmp
	$(BD)/etc/databox -l -n $(TARGET).fsn.tmp $(TARGET).fsn
	$(RM) -f $(TARGET).fsn.tmp
	cp	$(TARGET).out _t
	$(GNUsh)/bin/strip --strip-unneeded _t
	$(BD)/etc/mkbtf -o$(TARGET).bz -a0x8003 -c -t$(TARGET) -f0x40 9.0x163._t 7.0x1000.$(TARGET).fsn
	$(RM) -f _t
	$(GNUsh)/bin/nm -n $(TARGET).out > $(TARGET).map
	
clean:
	$(RM) -f $(TARGET).out $(OBJS) $(TARGET).fsn $(TARGET).bz


