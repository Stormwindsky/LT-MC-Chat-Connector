-- Project: LT-MC-Chat-Connector (LTMCCC)
-- Created by: Stormwindsky
-- License: CC0 1.0 Universal

local http = minetest.request_http_api()

if not http then
    minetest.log("error", "[LTMCCC] HTTP API denied! Check secure.http_mods in minetest.conf")
    return
end

local timer = 0
minetest.register_globalstep(function(dtime)
    timer = timer + dtime
    if timer > 2 then
        timer = 0
        http.fetch({
            url = "http://127.0.0.1:5000/receive/luanti",
            method = "GET",
        }, function(res)
            if res.succeeded and res.data ~= "" then
                local data = minetest.parse_json(res.data)
                if data and data.msg and data.msg ~= "" then
                    minetest.chat_send_all(data.msg)
                end
            end
        end)
    end
end)

minetest.register_on_chat_message(function(name, message)
    http.fetch({
        url = "http://127.0.0.1:5000/send",
        method = "POST",
        extra_headers = {"Content-Type: application/json"},
        data = minetest.write_json({origin="luanti", msg=name .. ": " .. message}),
    }, function() end)
end)
