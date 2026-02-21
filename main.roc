app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br",
    json: "https://github.com/lukewilliamboswell/roc-json/releases/download/0.13.0/RqendgZw5e1RsQa3kFhgtnMP8efWoqGRsAvubx4-zus.tar.br",
}

import pf.Http
import pf.File
import pf.Stdout
import json.Json
# Data structures for SolarMan API responses

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

write_respone_to_file! = |response, out_file_name|
    body_str = (Str.from_utf8(response.body))?
    File.write_utf8!(body_str, out_file_name) |> dbg

fetch_year! = |{ year }|
    fetch! "https://home.solarmanpv.com/maintain-s/history/power/1387806/stats/year?year=${year}"

fetch_month! = |{ year, month }|
    fetch! "https://home.solarmanpv.com/maintain-s/history/power/1387806/stats/month?year=${year}&month=${month}"

fetch_day! = |{ year, month, day }|
    fetch! "https://home.solarmanpv.com/maintain-s/history/power/1387806/record?year=${year}&month=${month}&day=${day}"

fetch_and_write_examples! = |{ year, month, day }|
    (
        (fetch_day! { year, month, day })?
        |> write_respone_to_file! "./out/day_${year}_${month}_${day}.json"
    )?

    (
        (fetch_month! { year, month })?
        |> write_respone_to_file! "./out/month_${year}_${month}.json"
    )?

    (
        (fetch_year! { year })?
        |> write_respone_to_file! "./out/year_${year}.json"
    )

main! = |_args|
    year = "2026"
    month = "1"
    day = "13"

    decoder = Json.utf8_with({ field_name_mapping: PascalCase })

    year_respone = (fetch_year! { year })?
    year_record = Decode.from_bytes(year_respone.body, decoder)?

    month_response = (fetch_month! { year, month })?
    month_record = Decode.from_bytes(month_response.body, decoder)?

    day_response = (fetch_day! { year, month, day })?
    day_record = Decode.from_bytes(day_response.body, decoder)?

    Stdout.line!("Year ${year_record}")?
    Stdout.line!("Month ${month_record}")?
    Stdout.line!("Day ${day_record}")

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
