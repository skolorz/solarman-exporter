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
The `records` array contains detailed data for each day in the month. Each record includes the following fields:

### Key Fields
- **`id`**: Unique identifier for the record (can be `null`).
- **`systemId`**: Identifier for the Solarman system (e.g., `1387806`).
- **`year`**: Year of the record (e.g., `2026`).
- **`month`**: Month of the record (e.g., `2` for February).
- **`day`**: Day of the record (e.g., `1`).
- **`generationValue`**: Energy generated on the day (in kWh, e.g., `1.07`).
- **`incomeValue`**: Income generated from energy production (e.g., `6.42`).
- **`fullPowerHoursDay`**: Full power hours for the day (e.g., `0.21`).
- **`acceptDay`**: Date of the record in `YYYYMMDD` format (e.g., `20260201`).

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
- **`dischargeForGrid`**: Energy discharged for the grid (can be `null`).
- **`chargeFromBuyRatio`**: Can be `null`.
- **`dischargeForGridRatio`**: Can be `null`.

## Example
```json
{
  "statistics": {
    "systemId": 1387806,
    "year": 2026,
    "month": 2,
    "day": 0,
    "generationValue": 81.66,
    "useValue": null,
    "gridValue": null,
    "buyValue": null,
    "chargeValue": null,
    "dischargeValue": null,
    "incomeValue": 489.96,
    "gridRatio": null,
    "useRatio": null,
    "buyRatio": null,
    "generationRatio": null,
    "irradiate": null,
    "pr": null,
    "fullPowerHoursDay": 16.332,
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
      "id": null,
      "systemId": 1387806,
      "year": 2026,
      "month": 2,
      "day": 1,
      "generationValue": 1.07,
      "useValue": null,
      "gridValue": null,
      "buyValue": null,
      "chargeValue": null,
      "dischargeValue": null,
      "incomeValue": 6.42,
      "gridRatio": null,
      "useRatio": null,
      "buyRatio": null,
      "generationRatio": null,
      "irradiate": null,
      "pr": null,
      "fullPowerHoursDay": 0.21,
      "irradiateIntensity": null,
      "chargeRatio": null,
      "useDischargeRatio": null,
      "deviceData": null,
      "acceptDay": "20260201",
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
    }
  ]
}
```

## Notes
- Fields marked as `null` indicate that the data is not available or not applicable for the given record.
- The `systemId` is a unique identifier for the Solarman system.
- The `day` field is always `0` for monthly records.
- The `records` array contains detailed data for each day in the month, providing a more granular view of the month's energy production and usage.