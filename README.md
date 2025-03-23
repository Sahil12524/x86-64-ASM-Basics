# x86_64 Assembly Programming (Windows Specific)

## 📌 Introduction
This repository provides a comprehensive guide to **x86_64 Assembly programming**, specifically targeted for **Windows systems**. This guide covers all the essential registers, instructions, and optimization techniques to get you started and enhance your skills.

## 📑 Table of Contents
- [Introduction](#-introduction)
- [Registers (x86_64)](#-registers-x86_64)
- [Instructions](#-instructions)
- [Optimization Tips](#-optimization-tips)
- [How to Contribute](#-how-to-contribute)
- [License & Acknowledgments](#-license--acknowledgments)

## 🔍 Registers (x86_64)
### General-Purpose Registers
- **RAX, RBX, RCX, RDX** - Used for arithmetic, data storage, etc.
- **RBP, RSP** - Base and stack pointers for stack management.
- **RSI, RDI** - Source and destination index for data movement.
- **R8 - R15** - Additional general-purpose registers.

### Segment Registers
- **CS, DS, SS, ES, FS, GS** - Mostly unused in 64-bit mode, but FS and GS are used for special purposes.

### SIMD Registers
- **XMM0 - XMM15** - Used for floating-point and SIMD operations.

### Flags Register
- **RFLAGS** - Contains flags indicating the state of the processor (e.g., Zero Flag, Carry Flag, etc.).

## 💡 Instructions
### Data Movement
- `MOV`, `PUSH`, `POP`, `LEA`, `MOVZX`, `MOVSX`

### Arithmetic
- `ADD`, `SUB`, `MUL`, `IMUL`, `DIV`, `IDIV`

### Logic
- `AND`, `OR`, `XOR`, `NOT`

### Control Flow
- `JMP`, `JE`, `JNE`, `CALL`, `RET`

### Bit Manipulation
- `SHL`, `SHR`, `ROL`, `ROR`

### SIMD Instructions (Basic)
- `MOVAPS`, `ADDPS`, `SUBPS`, `MULPS`

## 🪟 Windows-Specific Considerations
### Calling Conventions
- **x64 Windows Calling Convention** - First four arguments passed via registers: `RCX`, `RDX`, `R8`, `R9`. Remaining arguments passed on the stack.

## 🚀 Optimization Tips
- Writing efficient code using registers effectively.
- Using SIMD instructions for performance boost.
- Reducing memory access by using registers instead.

## 🤝 How to Contribute
Contributions are welcome! Feel free to **fork this repository**, submit **pull requests**, or **open issues** for suggestions and improvements.

## 📜 License & Acknowledgments
This project is licensed under the MIT License.

---
⭐️ If you like this repository, don't forget to **star** it! 😄

