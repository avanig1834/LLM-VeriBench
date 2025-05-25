## Features

- **Pipeline Stall Logic Validation**  
  Automatically generates testbenches for common MIPS stall scenarios, including:
  - Load-use hazards
  - Data hazards in ID/EX stages
  - Branch stalls and control hazards
  - Structural stalls
  - Multi-cycle operation stalls
  - Forwarding logic conflicts

- **Prompt-to-Verilog Automation**  
  Converts descriptive feature prompts into working Verilog testbenches, utilizing `$monitor`, `initial`, and `always` blocks.

- **Performance Analytics**  
  Logs testbench generation time, token usage, and structural details (e.g., use of `always` blocks) to CSV.

- **Well-Organized Output**  
  Each generated testbench is saved as a `.v` file in a dedicated folder (`stall_unit_outputs/`), with a CSV summary of all generated files.

---

## How to run in Google Colab
1. upload the file `stallunit_tb.py` to your Colab workspace
2. Ensure GPU is enabled under Runtime > Change runtime type
3. Install dependencies `pip install torch transformers peft`
4. Run the scripts and outputs files can be downloaded from Colab.

## Requirements

- Python 3.8+
- PyTorch
- Hugging Face Transformers
- PEFT (LoRA)
- CUDA-enabled GPU (recommended)


