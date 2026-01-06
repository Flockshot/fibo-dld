# fibo-dld
Digital Logic Design Project – CNG232 (Logic Design Laboratory)

![Language](https://img.shields.io/badge/Language-Verilog-blue) ![Tools](https://img.shields.io/badge/Tools-ModelSim%20|%20Quartus%20Prime-orange) ![Status](https://img.shields.io/badge/Status-Completed-success) ![License](https://img.shields.io/badge/License-MIT-green)

## 📖 Abstract

This repository contains the source code and documentation for the **Logic Design Laboratory (CNG232)** coursework. The project focuses on the design, simulation, and hardware implementation of digital circuits using **Verilog HDL**. 

The core components of this project include:
1.  **Arithmetic Logic Unit (ALU):** A multi-functional combinational circuit capable of performing arithmetic and logical operations.
2.  **Fibonacci Calculator:** A sequential circuit utilizing a **Finite State Machine (FSM)** and Datapath architecture to compute the Fibonacci sequence iteratively.

Both modules were optimized for timing and area constraints and validated via extensive testbenches in **ModelSim**.

---

## 🛠️ Project 1: Arithmetic Logic Unit (ALU)

### Overview
The ALU serves as the computational core of a processor. This 4-bit ALU design handles integer arithmetic and bitwise logical operations, controlled by a 3-bit selection code (`opcode`).

### Technical Implementation
* **Architecture:** Combinational Logic
* **Inputs:** Two 4-bit operands (`A`, `B`), 3-bit Operation Select (`Opcode`).
* **Outputs:** 4-bit Result, Flags (`Zero`, `Carry`, `Overflow`, `Sign`).

#### Supported Operations
| Opcode | Operands | Operation | Instruction / Description |
| :---: | :---: | :--- | :--- |
| `000` | -- | **NOOP** | No Operation |
| `001` | `xx` | **SET** | Set `R[xx] = 1` |
| `010` | `xx` | **INC** | Increment `R[xx] = R[xx] + 1` |
| `011` | `xx` | **DEC** | Decrement `R[xx] = R[xx] - 1` |
| `100` | `xx` | **LOAD** | Load `R[xx] = Data_in` |
| `101` | `xx` | **STORE** | Store `Data_out = R[xx]` |
| `110` | `xx`, `yy` | **ADD** | Add `R[xx] = R[xx] + R[yy]` |
| `111` | `xx`, `yy` | **COPY** | Copy `R[xx] = R[yy]` |

*Note: `xx` and `yy` represent register indices.*

### Simulation & Results
The design was verified using a custom testbench (`ALU_TB.v`) covering corner cases such as overflow during addition and zero-result flags.

---

## 🔄 Project 2: Fibonacci Sequence Calculator

### Overview
This module implements a hardware accelerator for generating the Fibonacci sequence ($F_n = F_{n-1} + F_{n-2}$). Unlike the ALU, this is a **sequential circuit** requiring a clock signal and state management.

### System Architecture
The design follows the **FSM + Datapath** model:
1.  **Datapath:** Contains 4-bit registers (`R1`, `R2`, `R3`) to store sequence values and an adder to compute the next term.
2.  **Control Unit (FSM):** Orchestrates the register updates and loop counting.

#### Finite State Machine (FSM)
The controller traverses the following states:
* `IDLE`: Waits for the `START` signal.
* **LOAD**: Initializes registers ($F_0=0, F_1=1$).
* **CALC**: Iteratively computes $F_{new} = F_{old} + F_{older}$ until the counter reaches zero.
* **DONE**: Asserts the completion signal.

### Hardware Implementation
The design target was the **Altera DE0 FPGA board**. Physical constraints were managed to ensure the design fits within the Logic Elements (LEs) available on the Cyclone series FPGA.

* **Synthesis Tools:** Quartus Prime
* **Simulation:** ModelSim-Altera


---

## 🚀 Getting Started

### Prerequisites
* **ModelSim** (for simulation)
* **Quartus Prime** (for synthesis/FPGA programming)


### Simulation Steps
1.  Clone the repository:
    ```bash
    git clone [https://github.com/your-username/Digital-Logic-Design-CNG232.git](https://github.com/your-username/Digital-Logic-Design-CNG232.git)
    ```
2.  Open **ModelSim** and create a new project.
3.  Add the source files from `ALU/Verilog/` or `Fibonacci/Verilog/`.
4.  Compile all files.
5.  Start simulation on `ALU_TB` or `FIBO_DATAPATH_TB`.
6.  Add wave signals and run:
    ```tcl
    run -all
    ```

---
