# Spartan-6-FPGA
Basic tutorial related to the Spartan 6 AX309 board. Implementation using ISE Design Suit

- `led_09/`  
  A simple LED project used to verify:
  - Pin constraints
  - Clock configuration
  - Basic Verilog/VHDL design flow
  - FPGA programming via JTAG

---

## 🔧 Development Environment

- **FPGA Device**: Xilinx Spartan-6  
- **Toolchain**:  
  - Xilinx ISE Design Suite (recommended for Spartan-6)
- **Language**:  
  - Verilog HDL (or VHDL, depending on the project)
- **Programming Interface**:  
  - JTAG

---

## 🚀 Getting Started

1. Install **Xilinx ISE Design Suite**
2. Create a new Spartan-6 project
3. Add HDL source files from this repository
4. Add the corresponding constraint file (`.ucf`)
5. Synthesize, implement, and generate bitstream
6. Program the FPGA via JTAG

---

## 📚 Official Documentation (Recommended Reading)

To better understand Spartan-6 architecture and development flow, refer to the official Xilinx documentation:

### 🔹 Spartan-6 FPGA Family
- Spartan-6 FPGA Overview  
  https://www.xilinx.com/products/silicon-devices/fpga/spartan-6.html

### 🔹 User Guides
- Spartan-6 FPGA Configuration User Guide (UG380)  
  https://docs.xilinx.com/v/u/en-US/ug380

- Spartan-6 FPGA Clocking Resources User Guide (UG382)  
  https://docs.xilinx.com/v/u/en-US/ug382

### 🔹 Development Tools
- Xilinx ISE Design Suite Documentation  
  https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0002-ise-design-suite.html

---