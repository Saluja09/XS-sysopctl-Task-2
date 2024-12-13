#!/bin/bash
# sysopctl - A system management command line tool
# Version: v0.1.0

# ASCII Art
cat << "EOF"

  ___  __   __  ___    ___    ___    ___   _____   _    
 / __| \ \ / / / __|  / _ \  | _ \  / __| |_   _| | |   
 \__ \  \ V /  \__ \ | (_) | |  _/ | (__    | |   | |__ 
 |___/   |_|   |___/  \___/  |_|    \___|   |_|   |____|
                                                        


EOF

# Version information
VERSION="v0.1.0"

# Display help message
function display_help() {
    cat <<EOF
sysopctl - A system management command-line tool

Usage: sysopctl [command] [options]

Commands:
  service list                     List all active services
  service start <service-name>     Start a specified service
  service stop <service-name>      Stop a specified service
  system load                      Display the current system load
  disk usage                       Display disk usage by partition
  process monitor                  Monitor system processes in real-time
  logs analyze                     Analyze recent critical system logs
  backup <path>                    Backup system files from the specified path

Options:
  --help                           Display this help message
  --version                        Display the command version

Examples:
  sysopctl service list
  sysopctl system load
  sysopctl backup /etc
EOF
}

# Display version
function display_version() {
    echo "sysopctl version $VERSION"
}

# List running services
function list_services() {
    systemctl list-units --type=service --state=running
}

# Start a service
function start_service() {
    local service_name="$1"
    if [ -z "$service_name" ]; then
        echo "Error: Service name required."
        return 1
    fi
    sudo systemctl start "$service_name" && echo "Service '$service_name' started successfully."
}

# Stop a service
function stop_service() {
    local service_name="$1"
    if [ -z "$service_name" ]; then
        echo "Error: Service name required."
        return 1
    fi
    sudo systemctl stop "$service_name" && echo "Service '$service_name' stopped successfully."
}

# View system load
function system_load() {
    uptime
}

# Display disk usage
function disk_usage() {
    df -h
}

# Monitor processes
function process_monitor() {
    top
}

# Analyze system logs
function logs_analyze() {
    journalctl -p crit --since=yesterday
}

# Backup system files
function backup_files() {
    local path="$1"
    if [ -z "$path" ]; then
        echo "Error: Path required."
        return 1
    fi
    tar -czf backup_$(date +%Y%m%d_%H%M%S).tar.gz "$path" && echo "Backup of '$path' created successfully."
}

# Main script logic
case "$1" in
    --help)
        display_help
        ;;
    --version)
        display_version
        ;;
    service)
        case "$2" in
            list)
                list_services
                ;;
            start)
                start_service "$3"
                ;;
            stop)
                stop_service "$3"
                ;;
            *)
                echo "Invalid service command. Use 'sysopctl --help' for usage."
                ;;
        esac
        ;;
    system)
        case "$2" in
            load)
                system_load
                ;;
            *)
                echo "Invalid system command. Use 'sysopctl --help' for usage."
                ;;
        esac
        ;;
    disk)
        case "$2" in
            usage)
                disk_usage
                ;;
            *)
                echo "Invalid disk command. Use 'sysopctl --help' for usage."
                ;;
        esac
        ;;
    process)
        case "$2" in
            monitor)
                process_monitor
                ;;
            *)
                echo "Invalid process command. Use 'sysopctl --help' for usage."
                ;;
        esac
        ;;
    logs)
        case "$2" in
            analyze)
                logs_analyze
                ;;
            *)
                echo "Invalid logs command. Use 'sysopctl --help' for usage."
                ;;
        esac
        ;;
    backup)
        backup_files "$2"
        ;;
    *)
        echo "Invalid command. Use 'sysopctl --help' for usage."
        ;;
esac
