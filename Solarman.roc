module [DayStatistics, Year, Month, Day, fetch_day!, fetch_month!, fetch_year!]

import pf.Http
import pf.File

fetch! = |uri|
    authToken = Str.trim(File.read_utf8!("./auth_token")?)

    headers = [
        Http.header(("accept", "application/json")),
        Http.header(("authorization", authToken)),
    ]

    Http.send!(
        {
            method: GET,
            headers: headers,
            uri,
            body: [],
            timeout_ms: TimeoutMilliseconds(5000),
        },
    )

# write_respone_to_file! = |response, out_file_name|
#    body_str = (Str.from_utf8(response.body))?
#    File.write_utf8!(body_str, out_file_name) |> dbg

fetch_year! = |{ year }|
    fetch! "https://home.solarmanpv.com/maintain-s/history/power/1387806/stats/year?year=${year}"

fetch_month! = |{ year, month }|
    fetch! "https://home.solarmanpv.com/maintain-s/history/power/1387806/stats/month?year=${year}&month=${month}"

fetch_day! = |{ year, month, day }|
    fetch! "https://home.solarmanpv.com/maintain-s/history/power/1387806/record?year=${year}&month=${month}&day=${day}"

# Day structure - contains detailed records for each timestamp
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
