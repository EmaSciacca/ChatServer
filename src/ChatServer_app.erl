%%%-------------------------------------------------------------------
%% @doc ChatServer public API
%% @end
%%%-------------------------------------------------------------------

-module(ChatServer_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    ChatServer_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
