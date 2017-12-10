newInstance = function(options, healthMultiplier, removeWreckage, getRandomPlayer, killUnitsOnceExpired, hpIncreaseDelayInSeconds, ScenarioFramework, spawnOutEffect, TransportDestinations)
    local transportDetails = {
        ARMY_9 = {
            spawnPosition = {
                x = 500,
                y = 10
            },
            finalDestination = TransportDestinations.SouthernAttackerEnd
        },
        NEUTRAL_CIVILIAN = {
            spawnPosition = {
                x = 10,
                y = 500
            },
            finalDestination = TransportDestinations.NorthernAttackerEnd
        }
    }

    local GetNearestCommander = function(unitgroup,range)
        local unitattackerpos
        local unit_pos
        local dist
        local CommandersInRange
        local commandertoattack = false

        for _,unitattacker in unitgroup do
            if not unitattacker:IsDead() then
                unitattackerpos = unitattacker:GetPosition()
                local brain = unitattacker:GetAIBrain()
                CommandersInRange = brain:GetUnitsAroundPoint( categories.COMMAND, unitattackerpos, range, 'Enemy' )
            end
        end

        if CommandersInRange then
            for _, unit in CommandersInRange do
                unit_pos = unit:GetPosition()
                dist = VDist2(unitattackerpos.x,unitattackerpos.z,unit_pos.x,unit_pos.z)
                commandertoattack = unit
            end
        end

        return commandertoattack
    end

    local function issueAttackCommands(attackingArmyName, unitgroup)
        if attackingArmyName == "ARMY_9" then
            IssueAggressiveMove(unitgroup, getRandomPlayer(1))
            IssueAggressiveMove(unitgroup, getRandomPlayer(1))
        else
            IssueAggressiveMove(unitgroup, getRandomPlayer(2))
            IssueAggressiveMove(unitgroup, getRandomPlayer(2))
        end

        WaitSeconds(90)
        local range = 50
        while GetNearestCommander(unitgroup, range) == false and range < 400 do
            range = range + 50
            WaitSeconds(1)
        end

        local nearestCommander = GetNearestCommander(unitgroup, range)

        if nearestCommander ~= false then
            IssueAttack(unitgroup, nearestCommander)
        end

        ForkThread(killUnitsOnceExpired, unitgroup)
    end

    local function spawnOutOnceNotMoving(unit)
        ForkThread(function()
            WaitSeconds(5)

            while unit:IsUnitState('Moving') do
                WaitSeconds(0.5)
            end

            spawnOutEffect(unit)
        end)
    end

    local function spawnUnitsForArmy(units, armyName, transportDesination, transportName)
        local spawnPosition = transportDetails[armyName].spawnPosition
        local transport = CreateUnitHPR(transportName, armyName, spawnPosition.x, 80, spawnPosition.y, 0, 0, 0)

        if not options.canKillTransports() then
            transport:SetReclaimable(false);
            transport:SetCanTakeDamage(false);
            transport:SetDoNotTarget(true);
            transport:SetCanBeKilled(false);
        end

        local transports = { transport }

        removeWreckage(units)

        healthMultiplier.increaseHealth(units, hpIncreaseDelayInSeconds)

        ScenarioFramework.AttachUnitsToTransports(units, transports)

        IssueTransportUnload(transports, transportDesination)

        ForkThread(issueAttackCommands, armyName, units)

        IssueMove(transports, transportDetails[armyName].finalDestination)

        spawnOutOnceNotMoving(transport)
    end

    local function spawnUnitsFromName(unitNames, armyName)
        local units = {}

        for _, unitName in unitNames do
            table.insert(units, CreateUnitHPR(unitName, armyName, 255.5, 25.9844, 255.5, 0, 0, 0))
        end

        return units
    end

    return {
        spawnWithTransports = function(unitNames, transportName)
            local transportDesination = VECTOR3(Random(220, 290), 80, Random(220, 290))

            spawnUnitsForArmy(
                spawnUnitsFromName(unitNames, "ARMY_9"),
                "ARMY_9",
                transportDesination,
                transportName
            )

            spawnUnitsForArmy(
                spawnUnitsFromName(unitNames, "NEUTRAL_CIVILIAN"),
                "NEUTRAL_CIVILIAN",
                transportDesination,
                transportName
            )
        end
    }
end

