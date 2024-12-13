# XS-sysopctl-Task-2
My submission for XenonStack Technical Task 2

# sysopctl 🚀

**sysopctl** is a powerful command-line utility designed for managing system services, processes, and system health. With **sysopctl**, you can monitor system load, check disk usage, start/stop services, backup files, and analyze system logs — all from a single command. 

This tool is perfect for system administrators or anyone looking to streamline system resource management.

## 💻 Features

- **Service Management**: List, start, and stop system services.
- **System Health Monitoring**: View system load and disk usage.
- **Process Monitoring**: Real-time process activity monitoring.
- **Log Analysis**: Summarized critical log entries.
- **Backup Files**: Backup system files with ease.

## 🔧 Installation

### 1. Clone the repository
First, clone the repository to your local machine:

```bash
git clone <repository-url>
cd sysopctl
2. Make the script executable
Ensure the sysopctl.sh file is executable:

bash
Copy code
chmod +x bin/sysopctl.sh
3. Optional: Move the script to your $PATH
To use the sysopctl command globally, you can move it to a directory that's in your $PATH:

bash
Copy code
sudo mv bin/sysopctl.sh /usr/local/bin/sysopctl
📋 Usage
Once installed, you can use the sysopctl command followed by different subcommands to manage your system.

🔹 Display Version
To check the version of the sysopctl command:

bash
Copy code
sysopctl --version
🔹 List Running Services
To list all active services:

bash
Copy code
sysopctl service list
🔹 View System Load
To view the current system load:

bash
Copy code
sysopctl system load
🔹 Start/Stop Services
You can start or stop services using the following commands:

Start a service:

bash
Copy code
sysopctl service start <service-name>
Stop a service:

bash
Copy code
sysopctl service stop <service-name>
🔹 Check Disk Usage
To check disk usage by partition:

bash
Copy code
sysopctl disk usage
🔹 Monitor System Processes
To monitor real-time system processes:

bash
Copy code
sysopctl process monitor
🔹 Analyze System Logs
To analyze recent critical system logs:

bash
Copy code
sysopctl logs analyze
🔹 Backup System Files
To backup system files to a specified path:

bash
Copy code
sysopctl backup <path>
📝 Manual Page
To view the full documentation of sysopctl, use the following command:

bash
Copy code
man sysopctl
🛠️ Testing
To test the functionality of sysopctl, you can run the tests located in the tests/ directory. For example:

bash
Copy code
bash tests/test_sysopctl.sh
📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

🙋‍♂️ Contributing
If you'd like to contribute to this project, feel free to fork the repository and submit pull requests. Contributions are always welcome!

📞 Contact
For any questions or feedback, feel free to reach out:

Email: your-email@example.com
GitHub: @your-username
