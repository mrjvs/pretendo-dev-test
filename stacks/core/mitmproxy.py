from mitmproxy import http
from mitmproxy.proxy import server_hooks

account_domains = [
    "conntest.pretendo.cc",
    "cbvc.cdn.pretendo.cc",
    'c.account.pretendo.cc', 'account.pretendo.cc',
    "nasc.pretendo.cc",
    "datastore.pretendo.cc",
    "api.pretendo.cc",
    "local-cdn.pretendo.cc",
    "assets.pretendo.cc",
]

s3_domains = [
    "cdn.pretendo.cc",
    "r2-cdn.pretendo.cc"
]

def request(flow: http.HTTPFlow):
    if flow.request.pretty_host in account_domains:
        old = flow.request.host
        flow.request.host = "localhost"
        flow.request.scheme = "http"
        flow.request.port = 8200
        flow.request.host_header = old
    elif flow.request.pretty_host in s3_domains:
        old = flow.request.host
        flow.request.host = "localhost"
        flow.request.scheme = "http"
        flow.request.port = 9000
