app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br",
    json: "https://github.com/lukewilliamboswell/roc-json/releases/download/0.13.0/RqendgZw5e1RsQa3kFhgtnMP8efWoqGRsAvubx4-zus.tar.br",
}

import pf.Stdout
import json.Json
import Solarman exposing [Year, Month, Day, fetch_day!, fetch_month!, fetch_year!]
# Data structures for SolarMan API responses

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
