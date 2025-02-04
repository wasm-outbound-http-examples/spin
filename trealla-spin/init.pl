% partially based on https://github.com/guregu/trealla-spin/blob/1f3ccca77eb28e785598c9373ec71450a422a156/templates/http-prolog/content/src/init.pl
:- use_module(library(spin)).

http_handler(get("/", _QueryParams), _RequestHeaders, _RequestBody, 200) :-
	text_content,

	http_fetch("https://httpbin.org/anything", Resp, []),
	
	write(http_body, "Got response: "),
	write(http_body, Resp).
