import configparser
from netmiko import ConnectHandler

def read_inventory(inventory_file):
    devices = {}
    config = configparser.ConfigParser()
    config.read(inventory_file)

    for section in config.sections():
        devices[section] = dict(config[section])

    return devices

def main():
    inventory_file = "~/NDE_ME/NDE_ME/python/inventory/inventory.ini" #path do inventory.ini file
    devices = read_inventory(inventory_file)

    # Specify the device(s) names you want to target in a list
    target_devices = ["lsw1", "r1"] 

    for target_device in target_devices:
        if target_device in devices:
            device_info = devices[target_device]
            try:
                connection = ConnectHandler(**device_info)

                # Run the "show running-config" command
                output = connection.send_command("show running-config")
                print(f"Device: {target_device}\n{output}\n")

                connection.disconnect()

            except Exception as e:
                print(f"Failed to connect to {target_device}: {str(e)}")
        else:
            print(f"Device '{target_device}' not found in the inventory.")

if __name__ == "__main__":
    main()

