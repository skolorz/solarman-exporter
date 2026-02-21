# Month2 Weather Data Documentation

## Overview
This document describes the structure and fields of the `month2.json` file, which contains weather data for a specific month from the Solarman PV monitoring platform.

## Structure
The JSON file is an array of objects, where each object represents a day's weather data. Each object contains the following fields:

### Key Fields
- **`datetime`**: Unix timestamp representing the date and time (e.g., `1769940000`).
- **`temp`**: Temperature in Celsius (e.g., `-9.0`).
- **`weatherPic`**: Weather condition as a string (e.g., `cloudy`, `snow-s`).
- **`sunrise`**: Unix timestamp for sunrise (e.g., `1769926760`).
- **`sunset`**: Unix timestamp for sunset (e.g., `1769960293`).
- **`weatherPicName`**: Localized weather condition name (e.g., `Pochmurny` for "Cloudy" in Polish).
- **`sunshineDuration`**: Duration of sunshine in seconds (e.g., `33533`).
- **`timeZoneOffset`**: Time zone offset (can be `null`).

## Example
```json
[
  {
    "datetime": 1769940000,
    "temp": -9.0,
    "weatherPic": "cloudy",
    "sunrise": 1769926760,
    "sunset": 1769960293,
    "weatherPicName": "Pochmurny",
    "sunshineDuration": 33533,
    "timeZoneOffset": null
  },
  {
    "datetime": 1770026400,
    "temp": -8.0,
    "weatherPic": "cloudy",
    "sunrise": 1770013074,
    "sunset": 1770046797,
    "weatherPicName": "Pochmurny",
    "sunshineDuration": 33723,
    "timeZoneOffset": null
  }
]
```

## Notes
- The `datetime` field is a Unix timestamp and can be converted to a human-readable date using standard libraries.
- The `weatherPic` field provides a general weather condition, while `weatherPicName` provides a localized description.
- The `sunshineDuration` field is in seconds and can be converted to hours by dividing by `3600`.
- The `timeZoneOffset` field is typically `null` and may not be populated in all records.