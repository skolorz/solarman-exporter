# Year Statistics Documentation

## Overview
This document describes the structure and fields of the `year.json` file, which contains yearly energy statistics from the Solarman PV monitoring platform.

## Structure
The JSON file contains two main sections:
1. A `statistics` object with aggregated data for the year.
2. A `records` array with detailed data for each month in the year.

### Statistics Object
The `statistics` object contains the following fields:

### Key Fields
- **`systemId`**: Identifier for the Solarman system (e.g., `1387806`).
- **`year`**: Year of the record (e.g., `2025`).
- **`month`**: Month of the record (always `0` for yearly records).
- **`day`**: Day of the record (always `0` for yearly records).
- **`generationValue`**: Energy generated in the year (in kWh, e.g., `4669.51`).
- **`incomeValue`**: Income generated from energy production (e.g., `28017.06`).
- **`fullPowerHoursDay`**: Full power hours for the year (e.g., `933.902`).

### Additional Fields

## Records Array
The `records` array contains detailed data for each month in the year. Each record includes the following fields:

### Key Fields
- **`systemId`**: Identifier for the Solarman system (e.g., `1387806`).
- **`year`**: Year of the record (e.g., `2025`).
- **`month`**: Month of the record (e.g., `1` for January).
- **`day`**: Day of the record (always `0` for monthly records).
- **`generationValue`**: Energy generated in the month (in kWh, e.g., `164.55`).
- **`incomeValue`**: Income generated from energy production (e.g., `987.3`).
- **`fullPowerHoursDay`**: Full power hours for the month (e.g., `32.910000000000004`).

### Additional Fields

## Example
```json
{
  "statistics": {
    "systemId": 1387806,
    "year": 2025,
    "month": 0,
    "day": 0,
    "generationValue": 4669.51,
    "incomeValue": 28017.06,
    "fullPowerHoursDay": 933.902,
  },
  "records": [
    {
      "systemId": 1387806,
      "year": 2025,
      "month": 1,
      "day": 0,
      "generationValue": 164.55,
      "incomeValue": 987.3,
      "fullPowerHoursDay": 32.910000000000004,
    }
  ]
}
```

## Notes
- The `systemId` is a unique identifier for the Solarman system.
- The `month` and `day` fields are always `0` for yearly records.
- The `records` array contains detailed data for each month in the year, providing a more granular view of the year's energy production and usage.
