app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br",
    json: "https://github.com/lukewilliamboswell/roc-json/releases/download/0.13.0/RqendgZw5e1RsQa3kFhgtnMP8efWoqGRsAvubx4-zus.tar.br",
}

import json.Json
import Solarman exposing [DayResponse, DayStatistics, Year, Month, Day, fetch_day!, fetch_month!, fetch_year!]
import Repository exposing [initialize!]
import pf.Stdout

store! = |db|

    year = "2026"
    month = "1"
    day = "13"

    # decoder = Json.utf8_with({ field_name_mapping: CamelCase })

    # year_respone = (fetch_year! { year })?
    # year_record = Decode.from_bytes(year_respone.body, decoder)?

    ## month_response = (fetch_month! { year, month })?
    # month_record = Decode.from_bytes(month_response.body, decoder)?

    day_response = (fetch_day! { year, month, day })?

    day_record : DayResponse
    day_record = Decode.from_bytes(day_response, Json.utf8)?

    Stdout.write! (Inspect.to_str day_record)

main! = |_args|
    db = "./out/solarman.db"
    (Repository.initialize! db)?
    store! db
