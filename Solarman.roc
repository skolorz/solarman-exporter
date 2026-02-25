module [fetch_day!, fetch_month!, fetch_year!]

import pf.Http
import pf.File

fetch! = |uri|
    dbg uri
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
    |> Result.map_ok |response| response.body
    |> Result.map_err |_| FetchError

write_respone_to_file! = |body, out_file_name|
    body_str = (Str.from_utf8 body)?
    File.write_utf8! body_str out_file_name

cached_fetch! = |uri, file_name|
    exists = (File.exists! file_name)?
    dbg exists
    if exists then
        File.read_bytes! file_name
    else
        body = (fetch! uri)?
        (write_respone_to_file! body file_name)?
        Ok body

fetch_year! = |{ year }|
    url = "https://home.solarmanpv.com/maintain-s/history/power/1387806/stats/year?year=${year}"
    file_name = "cache/year_${year}.json"
    cached_fetch! url file_name

fetch_month! = |{ year, month }|
    url = "https://home.solarmanpv.com/maintain-s/history/power/1387806/stats/month?year=${year}&month=${month}"
    file_name = "cache/month_${year}-${month}.json"
    cached_fetch! url file_name

fetch_day! = |{ year, month, day }|
    url = "https://home.solarmanpv.com/maintain-s/history/power/1387806/record?year=${year}&month=${month}&day=${day}"
    file_name = "cache/day_${year}_${month}_${day}.json"
    cached_fetch! url file_name

# Day structure - contains detailed records for each timestamp
