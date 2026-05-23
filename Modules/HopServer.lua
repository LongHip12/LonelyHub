getgenv().JobIdToJoin = ""

local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local PlaceId = game.PlaceId

local Modules = {}

local function GetServers()
    local Servers = {}
    local Cursor = ""

    repeat
        local Url = ("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100%s")
            :format(
                PlaceId,
                Cursor ~= "" and ("&cursor=" .. Cursor) or ""
            )

        local Success, Response = pcall(function()
            return game:HttpGet(Url)
        end)

        if Success then
            local Data = HttpService:JSONDecode(Response)

            for _, Server in ipairs(Data.data) do
                if Server.id ~= game.JobId and Server.playing < Server.maxPlayers then
                    table.insert(Servers, Server)
                end
            end

            Cursor = Data.nextPageCursor
        else
            Cursor = nil
        end

        task.wait()
    until not Cursor

    return Servers
end

function Modules:JoinJobId(JobId)
    if not JobId or JobId == "" then
        return
    end

    local Success = pcall(function()
        ReplicatedStorage:WaitForChild("__ServerBrowser"):InvokeServer("teleport", JobId)
    end)

    if not Success then
        TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
    end
end

function Modules:HopLess()
    local Servers = GetServers()

    for _, Server in ipairs(Servers) do
        if Server.playing < 10 then
            self:JoinJobId(Server.id)
            break
        end
    end
end

function Modules:Hop()
    local Servers = GetServers()

    for _, Server in ipairs(Servers) do
        if Server.playing >= 10 then
            self:JoinJobId(Server.id)
            break
        end
    end
end

return Modules
