# BCH Code for Fault-Tolerant Encryption

This repository contains the implementation of a **BCH(15,7,2) encoder and decoder** for fault-tolerant encryption in VLSI systems. The design is written in **Verilog HDL** and tested in **Xilinx Vivado**.

---

## 📌 Project Overview
Modern cryptographic systems in hardware are vulnerable to faults, soft errors, and malicious fault injections. To improve reliability, error-correcting codes like **BCH** are used to detect and correct errors during encryption.

This project demonstrates how a BCH(15,7,2) code can be implemented and integrated for **fault-tolerant encryption**:
- Message size: **7 bits**  
- Codeword size: **15 bits**  
- Parity bits: **8**  
- Error correction capability: **Up to 2 random errors**

---

## ⚙️ Features
- **Verilog implementation** of BCH(15,7,2) encoder and decoder  
- **Syndrome calculation** for error detection  
- **Single-error and double-error correction** logic  
- **Testbench** for functional verification in Vivado  

---

## 🛠️ Tools Used
- **Xilinx Vivado** (Project Synthesis, Simulation, Implementation)  
- **Git/GitHub** for version control  
- Optional: ModelSim / QuestaSim for standalone simulation  

---

## 📊 Results

- **BCH(15,7,2)** successfully encodes 7-bit messages into 15-bit codewords.  
- Decoder detects and corrects up to **2 errors** in the received codeword.  
- Simulation confirms correctness of **encoding, syndrome calculation, and error correction**.  
- Resource utilization shows efficiency for **cryptographic fault tolerance in VLSI**.  

**Example:**  
- Input message: `1001101`  
- Encoded codeword: `100110100001001`  
- If an error occurs in transmission (e.g., one or two bits flipped), the decoder uses syndrome values to detect and correct the errors, restoring the original 7-bit message.  

---

## 📂 Repository Structure
```plaintext
BCH-Code-for-fault-tolerant-encryption/
├── src/               # Verilog source files (encoder, decoder, testbench)
├── constr/            # Constraint files (.xdc)
├── sim/               # Simulation files
├── project.tcl        # Project recreation script
├── README.md          # Project documentation
└── .gitignore         # Ignore Vivado build files


