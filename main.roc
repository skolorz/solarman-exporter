app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br",
    json: "https://github.com/lukewilliamboswell/roc-json/releases/download/0.13.0/RqendgZw5e1RsQa3kFhgtnMP8efWoqGRsAvubx4-zus.tar.br",
}

import json.Json
import Solarman exposing [DayStatistics, Year, Month, Day, fetch_day!, fetch_month!, fetch_year!]
import Repository exposing [initialize!]
import pf.Stdout

store! = |db|

    year = "2026"
    month = "1"
    day = "13"



    decoder = Json.utf8_with({ field_name_mapping: CamelCase })

    #year_respone = (fetch_year! { year })?
    #year_record = Decode.from_bytes(year_respone.body, decoder)?

    ##month_response = (fetch_month! { year, month })?
    #month_record = Decode.from_bytes(month_response.body, decoder)?

    #day_response = (fetch_day! { year, month, day })?
    #day_record = Decode.from_bytes(day_response.body, decoder)?

    #Stdout.write! (Inspect.to_str day_record)
    #Stdout.write! ("store")
    # DayStatistics
    day_record : DayStatistics
    day_record = { systemId: 1387806,
                    year: 2026,
                    month: 1,
                    day: 13,
                    generationValue: 0.0,
                    incomeValue: 0.0,
                    fullPowerHoursDay: 0.0,
                    acceptDay: "20260113"
                 }
    Repository.insert_day_statistics! db day_record

main! = |_args|
    db = "./out/solarman.db"
    (Repository.initialize! db) |> |_| store! db

# Stdout.line!("Year ${year_record}")?
# Stdout.line!("Month ${month_record}")?
# Stdout.line!("Day ${day_record}")
