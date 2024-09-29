---
sidebar_position: 40
---

# Run Box Opener Node (Python) 🐍

To run the box opener node without containerization, you'll need Python 3 installed on your system and some basic command line knowledge.

:::info

It's recommended to [use the Docker version of the box opener](/docs/box-openers/box-opener-node.md) because it is easier to manage and maintain. Running the standalone Python program requires more setup, and you'll need to keep the code updated by pulling the latest changes from the repository whenever a new release is available.

:::

### Prerequisites

- **Python 3:** Ensure you have Python 3 installed. You can check by running `python --version` or `python3 --version` in your terminal. If you don't have it, you can download it from the [Python website](https://www.python.org/downloads/).
- **Git:** Installed on your system. You can check by running `git --version`. If you need it, you can download it from [Git's official site](https://git-scm.com/downloads).
- **Virtual Environment (Optional but recommended):** A virtual environment helps isolate your project’s dependencies. You can check if it's available by running `python -m venv` or `python3 -m venv`.

### Steps

1. **Clone the Repository**

   Open your terminal, then clone the repository and navigate to the project directory:

   ```bash
   git clone https://github.com/Erwin-Schrodinger-Token/ewn-box-opener
   cd ewn-box-opener
   ```

2. **Create a Virtual Environment (Optional but recommended)**

   This ensures a clean Python environment:

   ```bash
   # For systems where Python 3 uses `python3`
   python3 -m venv venv
   # Or just use `python` depending on your system
   python -m venv venv
   ```

   To activate the virtual environment:

   - **Linux/macOS**:

     ```bash
     source venv/bin/activate
     ```

   - **Windows**:
     ```bash
     venv\Scripts\activate
     ```

3. **Install Dependencies**

   With the virtual environment activated, install the required Python packages from `requirements.txt`:

   ```bash
   pip install -r requirements.txt
   ```

   **Note:** If you face issues, try using `pip3` instead of `pip`.

4. **Set Up Environment Variables**

   Copy the `.env.example` file to `.env` and add your API key.

   - **Linux/macOS**:
     ```bash
     cp .env.example .env
     ```
   - **Windows**: Use File Explorer to copy `.env.example` to `.env` or use the command:
     ```bash
     copy .env.example .env
     ```

   Open the `.env` file in a text editor (e.g., Notepad, VS Code) and replace `api_key_here` with your actual API key.

5. **Run the Python Script**

   Run the script using:

   ```bash
   python run_box_opener.py
   ```

   **Note:** Ensure you're using the correct Python command (`python` or `python3`) depending on your system.

6. **Logging**

   You should see logs in your terminal. If you receive "❌ Guesses rejected (429)" errors at first, it's normal, and the system should stabilize.

---

### Additional Notes for Windows Users

- Make sure Python 3 is added to your PATH during installation. You can download Python from the [official Python website](https://www.python.org/downloads/).
- Some commands may require `python` instead of `python3` and `pip` instead of `pip3`.
