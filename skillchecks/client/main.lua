local p
--###############################################
--##                 Alphabet                  ##
--###############################################

-- Functie / export
function alphabet(cb, name, desc, time, amountKeys)
    p = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "skillchecks:settings",
        data = {
            active = "alphabet",
            show = true,
            name = name,
            description = desc,
            gameTimeoutDuration = time or 20000,
            gameFinishedEndpoint = 'alphabet',
            numKeys = amountKeys
        }
    })
   
    local result = Citizen.Await(p)
    if cb then cb(result) end
end
exports('alphabet', alphabet)

-- NUI Callback
RegisterNuiCallback('alphabet', function(data, cb)
    SetNuiFocus(false, false)
    if p then
        p:resolve(data.result)
    end
    cb('ok')
end)

-- Debug commando
RegisterCommand('alphabet', function ()
    alphabet(function (result)
        if result then
            print('Success')
        else
            print('Failed')
        end
    end, "Name", "Placeholder!", 15000, 15)
end)

--###############################################
--##                 Lockpick                  ##
--###############################################

-- Functie / export
function lockpick(cb, name, desc, time, locks, rings)
    p = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "skillchecks:settings",
        data = {
            active = "lockpicking",
            show = true,
            name = name,
            description = desc,
            gameTimeoutDuration = time or 20000,
            gameFinishedEndpoint = 'lockpick',
            numLocks = locks,
            numLevels = rings
        }
    })
   
    local result = Citizen.Await(p)
    if cb then cb(result) end
end
exports('lockpick', lockpick)

-- NUI Callback
RegisterNuiCallback('lockpick', function(data, cb)
    SetNuiFocus(false, false)
    if p then
        p:resolve(data.result)
    end
    cb('ok')
end)

-- Debug commando
RegisterCommand('lockpicks', function ()
    lockpick(function (result)
        if result then
            print('Success')
        else
            print('Failed')
        end
    end, "Name", "Placeholder!", 30000, 12, 5)
end)

--###############################################
--##                   Words                   ##
--###############################################

-- Functie / export
function words(cb, name, desc, time, amountWords)
    p = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "skillchecks:settings",
        data = {
            active = "words",
            show = true,
            name = name,
            description = desc,
            gameTimeoutDuration = time or 20000,
            gameFinishedEndpoint = 'words',
            requiredCorrectChoices = amountWords
        }
    })
   
    local result = Citizen.Await(p)
    if cb then cb(result) end
end
exports('words', words)

-- NUI Callback
RegisterNuiCallback('words', function(data, cb)
    SetNuiFocus(false, false)
    if p then
        p:resolve(data.result)
    end
    cb('ok')
end)

-- Debug commando
RegisterCommand('words', function ()
    words(function (result)
        if result then
            print('Success')
        else
            print('Failed')
        end
    end, "Name", "Placeholder!", 15000, 5)
end)

--###############################################
--##                 Untangle                  ##
--###############################################

-- Functie / export
function untangle(cb, name, desc, time, amountPoints)
    p = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "skillchecks:settings",
        data = {
            active = "untangle",
            show = true,
            name = name,
            description = desc,
            gameTimeoutDuration = time or 20000,
            gameFinishedEndpoint = 'untangle',
            numPoints = amountPoints
        }
    })
   
    local result = Citizen.Await(p)
    if cb then cb(result) end
end
exports('untangle', untangle)

-- NUI Callback
RegisterNuiCallback('untangle', function(data, cb)
    SetNuiFocus(false, false)
    if p then
        p:resolve(data.result)
    end
    cb('ok')
end)

-- Debug commando
RegisterCommand('untangle', function ()
    untangle(function (result)
        if result then
            print('Success')
        else
            print('Failed')
        end
    end, "Name", "Placeholder!", 15000, 5)
end)

--###############################################
--##                    Flood                  ##
--###############################################

function flood(cb, name, desc, time, count, grid)
    p = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "skillchecks:settings",
        data = {
            active = "flood",
            show = true,
            name = name,
            description = desc,
            gameTimeoutDuration = time or 20000,
            gameFinishedEndpoint = 'flood',
            moveCountLeniency = count,
            gridSize = grid
        }
    })
   
    local result = Citizen.Await(p)
    if cb then cb(result) end
end
exports('flood', flood)

-- NUI Callback
RegisterNuiCallback('flood', function(data, cb)
    SetNuiFocus(false, false)
    if p then
        p:resolve(data.result)
    end
    cb('ok')
end)

-- Debug commando
RegisterCommand('flood', function ()
    flood(function (result)
        if result then
            print('Success')
        else
            print('Failed')
        end
    end, "Name", "Placeholder!", 15000, 5, 5)
end)

--###############################################
--##                    Same                   ##
--###############################################

function sameMini(cb, name, desc, time, gridx, gridy)
    p = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "skillchecks:settings",
        data = {
            active = "same",
            show = true,
            name = name,
            description = desc,
            gameTimeoutDuration = time or 20000,
            gameFinishedEndpoint = 'same',
            gridSizeX = gridx,
            gridSizeY = gridy,
        }
    })
   
    local result = Citizen.Await(p)
    if cb then cb(result) end
end
exports('same', sameMini)

-- NUI Callback
RegisterNuiCallback('same', function(data, cb)
    SetNuiFocus(false, false)
    if p then
        p:resolve(data.result)
    end
    cb('ok')
end)

-- Debug commando
RegisterCommand('same', function ()
    sameMini(function (result)
        if result then
            print('Success')
        else
            print('Failed')
        end
    end, "Name", "Placeholder!", 15000, 11, 8)
end)

--###############################################
--##                    flip                   ##
--###############################################

function flip(cb, name, desc, time, grid)
    p = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "skillchecks:settings",
        data = {
            active = "flip",
            show = true,
            name = name,
            description = desc,
            gameTimeoutDuration = time or 20000,
            gameFinishedEndpoint = 'flip',
            gridSize = grid
        }
    })
   
    local result = Citizen.Await(p)
    if cb then cb(result) end
end
exports('flip', flip)

-- NUI Callback
RegisterNuiCallback('flip', function(data, cb)
    SetNuiFocus(false, false)
    if p then
        p:resolve(data.result)
    end
    cb('ok')
end)

-- Debug commando
RegisterCommand('flip', function ()
    flip(function (result)
        if result then
            print('Success')
        else
            print('Failed')
        end
    end, "Name", "Placeholder!", 15000, 5)
end)

--###############################################
--##                 Direction                 ##
--###############################################

function direction(cb, name, desc, time, reqChoices, minGrid, maxGrid)
    p = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "skillchecks:settings",
        data = {
            active = "direction",
            show = true,
            name = name,
            description = desc,
            gameTimeoutDuration = time or 20000,
            gameFinishedEndpoint = 'direction',
            requiredCorrectChoices = reqChoices,
            minGridSize = minGrid,
            maxGridSize = maxGrid,
        }
    })
   
    local result = Citizen.Await(p)
    if cb then cb(result) end
end
exports('direction', direction)

-- NUI Callback
RegisterNuiCallback('direction', function(data, cb)
    SetNuiFocus(false, false)
    if p then
        p:resolve(data.result)
    end
    cb('ok')
end)

-- Debug commando
RegisterCommand('direction', function ()
    direction(function (result)
        if result then
            print('Success')
        else
            print('Failed')
        end
    end, "Name", "Placeholder!", 15000, 2, 3, 7)
end)