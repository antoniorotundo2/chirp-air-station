# Chirp Air Station
The project aims to create a complete service for meteorological station to detect the temperature, pressure, humidity and air quality index of the same connected urban environment.

## Requirements

### Hardware
- 2 ESP32 Microcontrollers with LoRa and Wi-Fi connectivity
- A BME680 sensor to be attached on Sensor Node
- I2C bus to interface the BME680 with the Sensor Node
- [Optional] A battery pack for the Sensor Node

### Software
- Docker Community Edition
- Docker Compose
- NodeJS >= v18.14.2
- [Optional] ReactJS
- [Optional] Visual Studio Code with PlatformIO extension

## Configuration
Each service has a configuration file where the MQTT and MongoDB url are defined:
```json
{
    "mqtt-broker":"mqtt://broker.hivemq.com:1883",
    "mongodb-url":"mongodb://cas-db:27017/cas-db",
    "mqtt-topic":"cas/sensor"
}
```

## Install
This project uses the git submodule, then you must install and update them:
```bash
make install
make update
```

## Run
To run the project you can use two methods, the first one (recommended) is the usage of Docker to run the entire project with a MongoDB service, the second one is the manually way where you need to setup a new MongoDB service, edit the configuration files and then run each service manually.

### Docker (Recommended)
```bash
make run
```

### Manually
Before start services you must edit the `config.json` file with the MongoDB connection url.

#### MQTT Service
```bash
cd cas-mqtt-service
npm run start
```

#### Web Service
```bash
cd cas-web-service
npm run start
```

## Development
### Firmware
The firmware of the Gateway and the Sensor Node were develop by using Arduino Framework with PlatformIO extension.
If you want edit or extend the firmware capabilities you must open the relative project with PlatformIO.

### Web Client
The Web Client was developed by using ReactJS Framework. In the Web Service there are already a client build but if you want edit or upgrade the Web Client you could open the `client` directory inside of the Web Service where the source code is stored. Once you made the desired modifications on the code, you must build the final solution with `npm run build` command.