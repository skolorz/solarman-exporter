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
- **`id`**: Unique identifier for the record (can be `null`).
- **`systemId`**: Identifier for the Solarman system (e.g., `1387806`).
- **`year`**: Year of the record (e.g., `2026`).
- **`month`**: Month of the record (e.g., `1` for January).
- **`day`**: Day of the record (e.g., `13`).
- **`generationValue`**: Energy generated on the day (in kWh, e.g., `0.0`).
- **`incomeValue`**: Income generated from energy production (e.g., `0.0`).
- **`fullPowerHoursDay`**: Full power hours for the day (e.g., `0.0`).

### Additional Fields
- **`useValue`**: Energy used (can be `null`).
- **`gridValue`**: Energy sent to the grid (can be `null`).
- **`buyValue`**: Energy bought from the grid (can be `null`).
- **`chargeValue`**: Energy used for charging (can be `null`).
- **`dischargeValue`**: Energy discharged (can be `null`).
- **`gridRatio`**: Ratio of energy sent to the grid (can be `null`).
- **`useRatio`**: Ratio of energy used (can be `null`).
- **`buyRatio`**: Ratio of energy bought (can be `null`).
- **`generationRatio`**: Ratio of energy generated (can be `null`).
- **`irradiate`**: Solar irradiance (can be `null`).
- **`pr`**: Performance ratio (can be `null`).
- **`irradiateIntensity`**: Solar irradiance intensity (can be `null`).
- **`chargeRatio`**: Ratio of energy used for charging (can be `null`).
- **`useDischargeRatio`**: Ratio of energy used from discharge (can be `null`).
- **`deviceData`**: Device-specific data (can be `null`).
- **`acceptDay`**: Date of the record in `YYYYMMDD` format (e.g., `20260113`).
- **`cpr`**: Can be `null`.
- **`theoreticalGeneration`**: Theoretical energy generation (can be `null`).
- **`loss`**: Energy loss (can be `null`).
- **`lossRatio`**: Ratio of energy loss (can be `null`).
- **`absorbedUseValue`**: Absorbed energy used (can be `null`).
- **`genForGrid`**: Energy generated for the grid (can be `null`).
- **`useFromBuy`**: Energy used from bought energy (can be `null`).
- **`selfGenAndUseValue`**: Self-generated and used energy (can be `null`).
- **`selfSufficiencyValue`**: Self-sufficiency value (can be `null`).
- **`acCouplingGen`**: AC coupling generation (can be `null`).
- **`pvGen`**: PV generation (can be `null`).
- **`dynamoGen`**: Dynamo generation (can be `null`).
- **`normalLoad`**: Normal load (can be `null`).
- **`epsLoad`**: EPS load (can be `null`).
- **`recoverGenValue`**: Recovered energy generation (can be `null`).
- **`chargePile`**: Charge pile (can be `null`).
- **`calculatedByNewAlgorithm`**: Flag indicating if calculated by a new algorithm (can be `null`).
- **`analyseTime`**: Analysis time (can be `null`).
- **`lastUpdateTime`**: Last update time (can be `null`).
- **`genForCharge`**: Energy generated for charging (can be `null`).
- **`genForUse`**: Energy generated for use (can be `null`).
- **`useFromDischarge`**: Energy used from discharge (can be `null`).
- **`useFromGen`**: Energy used from generation (can be `null`).
- **`cfp`**: Can be `null`.

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
- **`usePower`**: Power used (can be `null`).
- **`gridPower`**: Power sent to the grid (can be `null`).
- **`buyPower`**: Power bought from the grid (can be `null`).
- **`chargePower`**: Power used for charging (can be `null`).
- **`dischargePower`**: Power discharged (can be `null`).
- **`temperature`**: Temperature (can be `null`).
- **`pr`**: Performance ratio (can be `null`).
- **`irradiate`**: Solar irradiance (can be `null`).
- **`weather`**: Weather condition (can be `null`).
- **`useOffset`**: Can be `null`.
- **`useOffsetIncome`**: Can be `null`.
- **`irradiateIntensity`**: Solar irradiance intensity (can be `null`).
- **`wirePower`**: Can be `null`.
- **`batterySoc`**: Battery state of charge (can be `null`).
- **`batteryPower`**: Battery power (can be `null`).
- **`deviceData`**: Device-specific data (can be `null`).
- **`generationRatio`**: Ratio of energy generated (can be `null`).
- **`updateTime`**: Update time (can be `null`).
- **`upsPower`**: Can be `null`.
- **`acCouplingGenPower`**: AC coupling generation power (can be `null`).
- **`pvGenPower`**: PV generation power (can be `null`).
- **`dynamoGenPower`**: Dynamo generation power (can be `null`).
- **`normalLoadPower`**: Normal load power (can be `null`).
- **`wireStatus`**: Can be `null`.
- **`batteryStatus`**: Can be `null`.
- **`chargePilePower`**: Charge pile power (can be `null`).
- **`smartLoadStatus`**: Can be `null`.
- **`smartLoadPower`**: Can be `null`.

## Example
```json
{
  "statistics": {
    "id": null,
    "systemId": 1387806,
    "year": 2026,
    "month": 1,
    "day": 13,
    "generationValue": 0.0,
    "useValue": null,
    "gridValue": null,
    "buyValue": null,
    "chargeValue": null,
    "dischargeValue": null,
    "incomeValue": 0.0,
    "gridRatio": null,
    "useRatio": null,
    "buyRatio": null,
    "generationRatio": null,
    "irradiate": null,
    "pr": null,
    "fullPowerHoursDay": 0.0,
    "irradiateIntensity": null,
    "chargeRatio": null,
    "useDischargeRatio": null,
    "deviceData": null,
    "acceptDay": "20260113",
    "cpr": null,
    "theoreticalGeneration": null,
    "loss": null,
    "lossRatio": null,
    "absorbedUseValue": null,
    "genForGrid": null,
    "useFromBuy": null,
    "selfGenAndUseValue": null,
    "selfSufficiencyValue": null,
    "acCouplingGen": null,
    "pvGen": null,
    "dynamoGen": null,
    "normalLoad": null,
    "epsLoad": null,
    "recoverGenValue": null,
    "chargePile": null,
    "calculatedByNewAlgorithm": null,
    "analyseTime": null,
    "lastUpdateTime": null,
    "genForCharge": null,
    "genForUse": null,
    "useFromDischarge": null,
    "useFromGen": null,
    "cfp": null,
    "dischargeForGrid": null,
    "chargeFromBuyRatio": null,
    "dischargeForGridRatio": null
  },
  "records": [
    {
      "systemId": 1387806,
      "acceptDay": 20260113,
      "acceptMonth": 202601,
      "generationPower": 0.0,
      "usePower": null,
      "gridPower": null,
      "buyPower": null,
      "chargePower": null,
      "dischargePower": null,
      "temperature": null,
      "pr": null,
      "irradiate": null,
      "weather": null,
      "useOffset": null,
      "useOffsetIncome": null,
      "dateTime": 1768292700.000000000,
      "irradiateIntensity": null,
      "wirePower": null,
      "batterySoc": null,
      "batteryPower": null,
      "deviceData": null,
      "generationRatio": null,
      "generationCapacity": 0.0,
      "updateTime": null,
      "upsPower": null,
      "acCouplingGenPower": null,
      "pvGenPower": null,
      "dynamoGenPower": null,
      "normalLoadPower": null,
      "wireStatus": null,
      "batteryStatus": null,
      "timeZoneOffset": 3600,
      "chargePilePower": null,
      "smartLoadStatus": null,
      "smartLoadPower": null
    }
  ]
}
```

## Notes
- Fields marked as `null` indicate that the data is not available or not applicable for the given record.
- The `systemId` is a unique identifier for the Solarman system.
- The `acceptDay` field provides the date in a compact format (`YYYYMMDD`).
- The `records` array contains detailed data for each time interval, providing a more granular view of the day's energy production and usage.