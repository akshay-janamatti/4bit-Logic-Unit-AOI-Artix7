# 4bit-Logic-Unit-AOI-Artix7

## FPGA-Based 4-Bit Logic Unit Using AOI (AND–OR–INVERTER)

This repository contains the design and implementation of a **4-bit combinational Logic Unit (LU)** developed using **structural Verilog HDL** and implemented on the **Artix-7 (Nexys A7) FPGA**.  
The project strictly follows the **AOI (AND–OR–INVERTER) logic methodology**, which is widely used in VLSI design for optimized and structured gate-level implementation.

---

## 📌 Project Objective

The objective of this project is to design and implement a **purely combinational 4-bit logic unit** capable of performing the following logic operations on two 4-bit inputs:

- AND  
- OR  
- NAND  
- NOR  

The design is realized on an FPGA platform to gain hands-on experience with **digital system design, Verilog HDL, and FPGA implementation**.

---

## 🧠 AOI Design Methodology

All logic functions in this project are implemented using the **AND → OR → INVERTER (AOI)** sequence.  
Even simple logic operations are deliberately constructed using intermediate AND, OR, and NOT gates instead of direct behavioral operators.

This approach ensures:
- Clear gate-level understanding  
- VLSI-oriented design practice  
- Hardware-realistic implementation  

---

## 🔘 Button-Based Operation Selection

To improve usability and hardware clarity, a **button-controlled operation selection mechanism** is implemented.

Each push button selects **one logic operation at a time**, and the selected result is displayed on **only four output LEDs**.

| Button | Selected Operation |
|------|--------------------|
| BTN0 | AND |
| BTN1 | OR |
| BTN2 | NAND |
| BTN3 | NOR |

Only one button is expected to be pressed at a time, ensuring clean and deterministic output behavior.

---

## 🧩 Module Description

| Module Name | Description |
|------------|------------|
| `logic_top_4bit` | Top module instantiating all AOI logic blocks |
| `and4bit_aoi` | 4-bit AND logic using AOI sequence |
| `or4bit_aoi` | 4-bit OR logic using AOI sequence |
| `nand4bit_aoi` | 4-bit NAND logic using AOI sequence |
| `nor4bit_aoi` | 4-bit NOR logic using AOI sequence |
| `logic_top_4bit_buttons` | Button-based output selector |

---

## 🛠 Tools & Technologies Used

- Verilog HDL (Structural Modeling)
- Xilinx Vivado Design Suite
- Artix-7 FPGA
- Nexys A7 Development Board

---

## 📊 Implementation Results

- Successfully synthesized and implemented on Nexys A7 FPGA
- Functional verification confirmed correct AND, OR, NAND, and NOR operations
- Very low LUT and I/O utilization
- No timing violations observed
- Stable combinational behavior without clock dependency

---

## 📁 Repository Structure

