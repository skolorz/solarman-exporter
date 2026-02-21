app [main!] {
    pf: platform "https://github.com/roc-lang/basic-cli/releases/download/0.20.0/X73hGh05nNTkDHU06FHC0YfFaQB1pimX7gncRcao5mU.tar.br",
}

import pf.Http
import pf.Stdout
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

fetch_day! = |{ year, month, day }|
    fetch! "https://home.solarmanpv.com/maintain-s/history/power/1387806/record?year=${year}&month=${month}&day=${day}"

main! = |_args|
    year = "2026"
    month = "1"
    day = "13"
    response = (fetch_day! { year, month, day })?
    body_str = (Str.from_utf8(response.body))?

    out_file_name = "./out/day_${year}_${month}_${day}.json"
    dbg out_file_name
    File.write_utf8!(body_str, out_file_name)
# Stdout.line!("Done")
