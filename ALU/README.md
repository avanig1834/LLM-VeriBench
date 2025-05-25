## Features

- **Comprehensive Feature Coverage**  
  Validates ALU behaviors such as:
  - Addition correctness
  - Carry and overflow flag behavior
  - Parity and zero flag conditions
  - Signed overflow detection
  - Boundary conditions with max positive operands

- **Performance Logging**  
  Logs token usage, generation time, and Verilog constructs (e.g., `always` block detection) in a CSV summary.

- **Organized Output Structure**  
  Saves testbenches as individual `.v` files in the `alu_outputs/` folder for easy access and simulation.

---

## How to run in Google Colab
1. upload the file `alu_LLM` to your Colab workspace
2. Ensure GPU is enabled under Runtime > Change runtime type
3. Install dependencies `pip install torch transformers peft`
4. Run the scripts and outputs files will be saved in `alu_outputs` folder and can be downloaded from there.

##  Requirements

- Python 3.8+
- PyTorch
- Hugging Face Transformers
- PEFT (LoRA)
- CUDA-enabled GPU (recommended for fast generation)


