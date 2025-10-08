# SOAR File System

## Overview

The SOAR File System is a wrapper around FatFS that provides a simplified interface for file operations on USB storage devices. It allows users to create, open, close, read, and write files that will be accessible from a computer when the USB device is connected.

## Features

- **Simple API**: Easy-to-use functions for common file operations
- **USB Mass Storage**: Files are accessible from file explorer when USB is connected
- **Error Handling**: Comprehensive error codes for robust operation
- **Space Management**: Built-in checks for available storage space
- **Multiple Files**: Support for multiple simultaneous open files
- **Binary and Text**: Support for both binary and text file formats

## Quick Start

### 1. Initialization

```cpp
#include "SoarFileSystem.hpp"

// Initialize the file system
SoarFS_Result_t result = SoarFS_Init();
if (result == SOAR_FS_OK) {
    // File system ready
    if (SoarFS_IsMounted()) {
        // USB storage connected and ready
    }
}
```

### 2. Creating Files

```cpp
// Create a text file
const char* data = "Hello, SOAR!";
SoarFS_Result_t result = SoarFS_CreateFile("hello.txt",
                                          (const uint8_t*)data,
                                          strlen(data));
```

### 3. File Operations

```cpp
// Open file
SoarFS_OpenFile("data.log");

// Read from file
uint8_t buffer[256];
uint32_t bytesRead;
SoarFS_ReadFile("data.log", buffer, sizeof(buffer), &bytesRead);

// Append to file
const char* newData = "New entry\\n";
SoarFS_WriteFile("data.log", (const uint8_t*)newData, strlen(newData));

// Close file
SoarFS_CloseFile("data.log");
```

## API Reference

### Core Functions

#### `SoarFS_Init()`

Initializes the SOAR File System. Must be called before any other operations.

**Returns:** `SoarFS_Result_t`

#### `SoarFS_IsMounted()`

Checks if USB storage is connected and mounted.

**Returns:** `bool` - true if mounted, false otherwise

#### `SoarFS_GetFreeSpace(uint32_t* freeBytes)`

Gets available free space on the storage device.

**Parameters:**

- `freeBytes`: Pointer to store free bytes available

**Returns:** `SoarFS_Result_t`

### File Operations

#### `SoarFS_CreateFile(filename, data, dataSize)`

Creates a new file with specified content.

**Parameters:**

- `filename`: Name of file (max 32 characters)
- `data`: Pointer to data to write
- `dataSize`: Size of data in bytes

**Returns:** `SoarFS_Result_t`

#### `SoarFS_OpenFile(filename)`

Opens an existing file for read/write operations.

**Parameters:**

- `filename`: Name of file to open

**Returns:** `SoarFS_Result_t`

#### `SoarFS_CloseFile(filename)`

Closes an opened file.

**Parameters:**

- `filename`: Name of file to close

**Returns:** `SoarFS_Result_t`

#### `SoarFS_ReadFile(filename, buffer, bufferSize, bytesRead)`

Reads data from an opened file.

**Parameters:**

- `filename`: Name of file to read from
- `buffer`: Buffer to store read data
- `bufferSize`: Size of buffer
- `bytesRead`: Pointer to store actual bytes read

**Returns:** `SoarFS_Result_t`

#### `SoarFS_WriteFile(filename, data, dataSize)`

Appends data to an opened file.

**Parameters:**

- `filename`: Name of file to write to
- `data`: Data to append
- `dataSize`: Size of data in bytes

**Returns:** `SoarFS_Result_t`

### Utility Functions

#### `SoarFS_DeleteFile(filename)`

Deletes a file from storage.

#### `SoarFS_FileExists(filename)`

Checks if a file exists.

#### `SoarFS_GetFileSize(filename, fileSize)`

Gets the size of a file.

#### `SoarFS_CloseAllFiles()`

Closes all open files (emergency function).

## Error Codes

| Code                        | Description                |
| --------------------------- | -------------------------- |
| `SOAR_FS_OK`                | Operation successful       |
| `SOAR_FS_ERROR`             | Generic error              |
| `SOAR_FS_NOT_MOUNTED`       | USB storage not connected  |
| `SOAR_FS_FILE_NOT_FOUND`    | File doesn't exist         |
| `SOAR_FS_FILE_EXISTS`       | File already exists        |
| `SOAR_FS_DISK_FULL`         | Not enough storage space   |
| `SOAR_FS_INVALID_PARAMETER` | Invalid function parameter |
| `SOAR_FS_FILE_ALREADY_OPEN` | File is already open       |
| `SOAR_FS_FILE_NOT_OPEN`     | File must be opened first  |
| `SOAR_FS_WRITE_PROTECTED`   | Storage is write-protected |
| `SOAR_FS_TIMEOUT`           | Operation timed out        |

## Usage Examples

### Data Logging

```cpp
void LogSensorData(float temperature, float pressure) {
    if (!SoarFS_FileExists("sensors.csv")) {
        const char* header = "Time,Temperature,Pressure\\n";
        SoarFS_CreateFile("sensors.csv", (uint8_t*)header, strlen(header));
    }

    SoarFS_OpenFile("sensors.csv");

    char dataLine[64];
    snprintf(dataLine, sizeof(dataLine), "%lu,%.2f,%.2f\\n",
             HAL_GetTick(), temperature, pressure);

    SoarFS_WriteFile("sensors.csv", (uint8_t*)dataLine, strlen(dataLine));
    SoarFS_CloseFile("sensors.csv");
}
```

### Binary Data Storage

```cpp
typedef struct {
    uint32_t timestamp;
    float altitude;
    float velocity;
} FlightData_t;

void SaveFlightData(FlightData_t* data) {
    SoarFS_CreateFile("flight.bin", (uint8_t*)data, sizeof(FlightData_t));
}
```

### Configuration Files

```cpp
void SaveConfiguration(void) {
    const char* config = "mode=flight\\nlog_level=info\\n";
    SoarFS_CreateFile("config.txt", (uint8_t*)config, strlen(config));
}
```

## Best Practices

1. **Always check return codes** - Handle errors appropriately
2. **Check if mounted** - Verify USB storage is connected before operations
3. **Close files** - Always close files when done to free resources
4. **Check free space** - Verify sufficient space before creating large files
5. **Use appropriate filenames** - Avoid special characters, keep names short
6. **Handle disconnection** - Be prepared for USB disconnection during operation

## Hardware Requirements

- STM32G491 microcontroller (or compatible)
- USB connector configured for MSC (Mass Storage Class)
- FatFS middleware configured
- USB storage device (flash drive, SD card, etc.)

## Dependencies

- FatFS middleware
- STM32 HAL library
- USB Device library (MSC class)
- app_fatfs.h and related files

## Integration

To integrate into your project:

1. Include the header file: `#include "SoarFileSystem.hpp"`
2. Add the source files to your build system
3. Initialize the file system in your main application
4. Ensure USB MSC is properly configured in STM32CubeMX

## Troubleshooting

### File System Not Mounting

- Check USB cable connection
- Verify USB MSC is enabled in STM32CubeMX
- Ensure USB storage device is functional
- Check power supply to USB port

### Write Operations Failing

- Verify USB device is not write-protected
- Check available free space
- Ensure file is opened before writing
- Verify filename is valid (no special characters)

### Performance Issues

- Limit concurrent open files (max 4 by default)
- Close files promptly after use
- Consider buffer sizes for large data transfers
- Sync files periodically for data integrity
