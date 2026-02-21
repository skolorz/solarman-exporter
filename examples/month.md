# Month Statistics Documentation

## Overview
This document describes the structure and fields of the `month.json` file, which contains monthly energy statistics from the Solarman PV monitoring platform.

## Structure
The JSON file contains two main sections:
1. A `statistics` object with aggregated data for the month.
2. A `records` array with detailed data for each day in the month.

### Statistics Object
The `statistics` object contains the following fields:

### Key Fields
- **`systemId`**: Identifier for the Solarman system (e.g., `1387806`).
- **`year`**: Year of the record (e.g., `2026`).
- **`month`**: Month of the record (e.g., `2` for February).
- **`day`**: Day of the record (always `0` for monthly records).
- **`generationValue`**: Energy generated in the month (in kWh, e.g., `81.66`).
- **`incomeValue`**: Income generated from energy production (e.g., `489.96`).
- **`fullPowerHoursDay`**: Full power hours for the month (e.g., `16.332`).

### Additional Fields

## Records Array
The `records` array contains detailed data for each day in the month. Each record includes the following fields:

### Key Fields
- **`systemId`**: Identifier for the Solarman system (e.g., `1387806`).
- **`year`**: Year of the record (e.g., `2026`).
- **`month`**: Month of the record (e.g., `2` for February).
- **`day`**: Day of the record (e.g., `1`).
- **`generationValue`**: Energy generated on the day (in kWh, e.g., `1.07`).
- **`incomeValue`**: Income generated from energy production (e.g., `6.42`).
- **`fullPowerHoursDay`**: Full power hours for the day (e.g., `0.21`).
- **`acceptDay`**: Date of the record in `YYYYMMDD` format (e.g., `20260201`).

### Additional Fields

## Example
```json
{
  "statistics": {
    "systemId": 1387806,
    "year": 2026,
    "month": 2,
    "day": 0,
    "generationValue": 81.66,
    "incomeValue": 489.96,
    "fullPowerHoursDay": 16.332,
  },
  "records": [
    {
      "systemId": 1387806,
      "year": 2026,
      "month": 2,
      "day": 1,
      "generationValue": 1.07,
      "incomeValue": 6.42,
      "fullPowerHoursDay": 0.21,
      "acceptDay": "20260201",
    }
  ]
}
```

## Notes
- The `systemId` is a unique identifier for the Solarman system.
- The `day` field is always `0` for monthly records.
- The `records` array contains detailed data for each day in the month, providing a more granular view of the month's energy production and usage.
