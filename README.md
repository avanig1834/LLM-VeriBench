# LLM-VeriBench
LLM-VeriBench is an automated Verilog testbench generator powered by large language models (LLMs). This project uses transformer-based models, fine-tuned with LoRA (Low-Rank Adaptation), to generate complete and functional testbenches for verifying a 16-bit Arithmetic Logic Unit (ALU) module and Stall Unit in a MIPS Processor.

## Features
- **Promt-to-Verilog Pipeline:** Converts high-level functional descriptions into fully-synthesized Verilog testbenches.
- **LLM Integration:** Uses DeepSeek Coder-7B Instruct with PEFT (LoRA) fine-tuning to guide test generation.
- **Intelligent Verification:** Covers edge cases like carry flags, overflow detection, parity, and zero flags—based solely on natural language feature prompts.
- **Performance Logging:** Tracks token usage, generation time, and presence of critical constructs (like `always` blocks).
- **Structured Outputs:** Testbenches are auto-saved in .v format and logged in a CSV for easy evaluation.

## Technologies Used
- [Transformers (OriGen LLM)](https://huggingface.co/henryen/OriGen)
- [DeepSeek Coder-7B Instruct](https://huggingface.co/deepseek-ai/deepseek-coder-7b-instruct-v1.5)
- [PEFT](https://github.com/huggingface/peft)
- Verilog HDL
- Python 3



