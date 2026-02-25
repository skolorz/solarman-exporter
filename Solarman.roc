module [fetch_day!, fetch_month!, fetch_year!]

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
    |> Result.map_ok |response| response.body
    |> Result.map_err |_| FetchError

# write_respone_to_file! = |response, out_file_name|
#    body_str = (Str.from_utf8(response.body))?
#    File.write_utf8!(body_str, out_file_name) |> dbg
cached_fetch! = |uri, file_name|
    exists = (File.exists! file_name)?

    if exists then
        File.read_bytes! file_name
    else
        fetch! uri
        |> Result.map_ok |body| body
# body_str = (Str.from_utf8(body))?
# (File.write_utf8! body_str file_name)?

fetch_year! = |{ year }|
    url = "https://home.solarmanpv.com/maintain-s/history/power/1387806/stats/year?year=${year}"
    file_name = "year_${year}.json"
    cached_fetch! url file_name

fetch_month! = |{ year, month }|
    url = "https://home.solarmanpv.com/maintain-s/history/power/1387806/stats/month?year=${year}&month=${month}"
    file_name = "month ${year}-${month}.json"
    cached_fetch! url file_name

fetch_day! = |{ year, month, day }|
    url = "https://home.solarmanpv.com/maintain-s/history/power/1387806/record?year=${year}&month=${month}&day=${day}"
    file_name = "day_${year}_${month}_${day}.json"
    cached_fetch! url file_name

# Day structure - contains detailed records for each timestamp
