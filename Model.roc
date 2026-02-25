module [DayStatistics, Year, Month, Day]

DayStatistics : {
    systemId : I64,
    year : I64,
    month : I64,
    day : I64,
    generationValue : F64,
    incomeValue : F64,
    fullPowerHoursDay : F64,
    acceptDay : Str,
}

DayRecord : {
    systemId : I64,
    acceptDay : I64,
    acceptMonth : I64,
    generationPower : F64,
    dateTime : F64,
    generationCapacity : F64,
    timeZoneOffset : I64,
}

Day : {
    statistics : DayStatistics,
    records : List DayRecord,
}

# Month structure - contains daily summaries
MonthStatistics : {
    systemId : I64,
    year : I64,
    month : I64,
    day : I64,
    generationValue : F64,
    incomeValue : F64,
    fullPowerHoursDay : F64,
}

MonthRecord : {
    systemId : I64,
    year : I64,
    month : I64,
    day : I64,
    generationValue : F64,
    incomeValue : F64,
    fullPowerHoursDay : F64,
    acceptDay : Str,
}

Month : {
    statistics : MonthStatistics,
    records : List MonthRecord,
}

# Year structure - contains monthly summaries
YearStatistics : {
    systemId : I64,
    year : I64,
    month : I64,
    day : I64,
    generationValue : F64,
    incomeValue : F64,
    fullPowerHoursDay : F64,
}

YearRecord : {
    systemId : I64,
    year : I64,
    month : I64,
    day : I64,
    generationValue : F64,
    incomeValue : F64,
    fullPowerHoursDay : F64,
}

Year : {
    statistics : YearStatistics,
    records : List YearRecord,
}
