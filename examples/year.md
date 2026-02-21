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
- **`chargeRatio`**: Ratio of energy used for charging (can be `null`).
- **`useDischargeRatio`**: Ratio of energy used from discharge (can be `null`).
- **`acceptDay`**: Can be `null`.
- **`theoreticalGeneration`**: Theoretical energy generation (can be `null`).
- **`cpr`**: Can be `null`.
- **`offsetDay`**: Can be `null`.
- **`deviceData`**: Device-specific data (can be `null`).
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
- **`dischargeForGrid`**: Energy discharged for the grid (can be `null`).

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
- **`chargeRatio`**: Ratio of energy used for charging (can be `null`).
- **`useDischargeRatio`**: Ratio of energy used from discharge (can be `null`).
- **`acceptDay`**: Can be `null`.
- **`theoreticalGeneration`**: Theoretical energy generation (can be `null`).
- **`cpr`**: Can be `null`.
- **`offsetDay`**: Can be `null`.
- **`deviceData`**: Device-specific data (can be `null`).
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
- **`dischargeForGrid`**: Energy discharged for the grid (can be `null`).
- **`chargeFromBuyRatio`**: Can be `null`.
- **`dischargeForGridRatio`**: Can be `null`.

## Example
```json
{
  "statistics": {
    "systemId": 1387806,
    "year": 2025,
    "month": 0,
    "day": 0,
    "generationValue": 4669.51,
    "useValue": null,
    "gridValue": null,
    "buyValue": null,
    "chargeValue": null,
    "dischargeValue": null,
    "incomeValue": 28017.06,
    "gridRatio": null,
    "useRatio": null,
    "buyRatio": null,
    "generationRatio": null,
    "irradiate": null,
    "pr": null,
    "fullPowerHoursDay": 933.902,
    "chargeRatio": null,
    "useDischargeRatio": null,
    "acceptDay": null,
    "theoreticalGeneration": null,
    "cpr": null,
    "offsetDay": null,
    "deviceData": null,
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
      "year": 2025,
      "month": 1,
      "day": 0,
      "generationValue": 164.55,
      "useValue": null,
      "gridValue": null,
      "buyValue": null,
      "chargeValue": null,
      "dischargeValue": null,
      "incomeValue": 987.3,
      "gridRatio": null,
      "useRatio": null,
      "buyRatio": null,
      "generationRatio": null,
      "irradiate": null,
      "pr": null,
      "fullPowerHoursDay": 32.910000000000004,
      "chargeRatio": null,
      "useDischargeRatio": null,
      "acceptDay": null,
      "theoreticalGeneration": null,
      "cpr": null,
      "offsetDay": null,
      "deviceData": null,
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
    }
  ]
}
```

## Notes
- Fields marked as `null` indicate that the data is not available or not applicable for the given record.
- The `systemId` is a unique identifier for the Solarman system.
- The `month` and `day` fields are always `0` for yearly records.
- The `records` array contains detailed data for each month in the year, providing a more granular view of the year's energy production and usage.