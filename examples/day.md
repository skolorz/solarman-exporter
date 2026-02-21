# Day Statistics Documentation

## Overview
This document describes the structure and fields of the `day.json` file, which contains daily energy statistics from the Solarman PV monitoring platform.

## Structure
The JSON file contains two main sections:
1. A `statistics` object with aggregated data for the day.
2. A `records` array with detailed data for each time interval.

### Statistics Object
The `statistics` object contains the following fields:

### Key Fields
- **`systemId`**: Identifier for the Solarman system (e.g., `1387806`).
- **`year`**: Year of the record (e.g., `2026`).
- **`month`**: Month of the record (e.g., `1` for January).
- **`day`**: Day of the record (e.g., `13`).
- **`generationValue`**: Energy generated on the day (in kWh, e.g., `0.0`).
- **`incomeValue`**: Income generated from energy production (e.g., `0.0`).
- **`fullPowerHoursDay`**: Full power hours for the day (e.g., `0.0`).

### Additional Fields
- **`acceptDay`**: Date of the record in `YYYYMMDD` format (e.g., `20260113`).

## Records Array
The `records` array contains detailed data for each time interval. Each record includes the following fields:

### Key Fields
- **`systemId`**: Identifier for the Solarman system (e.g., `1387806`).
- **`acceptDay`**: Date of the record in `YYYYMMDD` format (e.g., `20260113`).
- **`acceptMonth`**: Month of the record in `YYYYMM` format (e.g., `202601`).
- **`generationPower`**: Power generated at the time interval (in kW, e.g., `0.0`).
- **`generationCapacity`**: Generation capacity at the time interval (in kW, e.g., `0.0`).
- **`dateTime`**: Unix timestamp for the time interval (e.g., `1768292700.000000000`).
- **`timeZoneOffset`**: Time zone offset in seconds (e.g., `3600` for UTC+1).

### Additional Fields

## Example
```json
{
  "statistics": {
    "systemId": 1387806,
    "year": 2026,
    "month": 1,
    "day": 13,
    "generationValue": 0.0,
    "incomeValue": 0.0,
    "fullPowerHoursDay": 0.0,
    "acceptDay": "20260113",
  },
  "records": [
    {
      "systemId": 1387806,
      "acceptDay": 20260113,
      "acceptMonth": 202601,
      "generationPower": 0.0,
      "dateTime": 1768292700.000000000,
      "generationCapacity": 0.0,
      "timeZoneOffset": 3600,
    }
  ]
}
```

## Notes
- The `systemId` is a unique identifier for the Solarman system.
- The `acceptDay` field provides the date in a compact format (`YYYYMMDD`).
- The `records` array contains detailed data for each time interval, providing a more granular view of the day's energy production and usage.
