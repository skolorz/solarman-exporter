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

main! = |_args|

    response = (fetch! "https://home.solarmanpv.com/maintain-s/history/power/1387806/record?year=2026&month=1&day=13")?
    body_str = (Str.from_utf8(response.body))?

    Stdout.line!("Response body:\n\t${body_str}.\n")
