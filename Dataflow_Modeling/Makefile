# Config
TOP   := testbench
SRC   := ./rtl
BUILD := build
WAVE  := waves

# Tools
IVERILOG := iverilog
VVP      := vvp
GTKWAVE  := gtkwave 


# Complier Flags
IVERILOG_FLAGS := -g2012 -Wall -I$(SRC)

SRC_FILES :=$(SRC)/timescale.v \
			$(SRC)/mux_2x1.v \
			$(SRC)/decoder_2x4.v \
			$(SRC)/testbench.sv
			             
			 
#Output Files
VVP_FILE := $(BUILD)/$(TOP).vvp
VCD_FILE := $(WAVE)/$(TOP).vcd


#  Make Commands
# Default Target: Runs the design compilation, simulation and waveform generation
all: setup sim wave

all_again: sim wave

# Creating required directories
setup:
	@mkdir -p $(BUILD) $(WAVE)


# Compiling the design
compile:
	@echo "Running Compilation"
	@$(IVERILOG) $(IVERILOG_FLAGS) $(SRC_FILES) -o $(VVP_FILE)
	@echo "Compilation Complete"


# Running the Simulation
sim: compile
	@echo "Running Simulation"
	@cd $(WAVE) && $(VVP) ../$(VVP_FILE)
	@echo "Simulation Complete"


# Running GTKWave for waveforms
wave: 
	@echo "Opening GTK Wave"
	@$(GTKWAVE) $(VCD_FILE) &

clean:
	@echo "Cleaning build files"
	@rm -rf $(BUILD)/* $(WAVE)/*
	@echo "Clean Complete"


.PHONY: all all_again setup compile sim wave clean


