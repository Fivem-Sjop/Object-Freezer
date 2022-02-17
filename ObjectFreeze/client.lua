
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(500)
    end
end)
	
--[[local peds = {
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
    [`s_m_y_swat_01`] = true,
    [`s_m_m_snowcop_01`] = true,
    [`s_m_m_paramedic_01`] = true,
    [`MerryWeatherCutscene`] = true,
    [-1275859404] = true,
    [2047212121 ] = true,
    [1349953339] = true,
}	
	
local function shouldDeletePed(ped)
    if not DoesEntityExist(ped) then
        return false
    end
end	
	
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local allPeds = GetGamePool("CPed")
        for i=1, #allPeds do
            local ped = allPeds[i]
            Citizen.Wait(0)
            if shouldDeletePed(ped) then
                local veh = GetVehiclePedIsIn(ped, false)
                Citizen.Wait(0)
                if not ESX.Game.TryDeleteEntity(ped) then
                    ESX.Game.DeletePed(ped)
                end
                if veh ~= 0 and DoesEntityExist(veh) then
                    if not ESX.Game.TryDeleteEntity(veh) then
                        ESX.Game.DeleteVehicle(ped)
                    end
                end
            end
            Citizen.Wait(0)
        end
        Citizen.Wait(500)
    end
end)]]	
	
local props = {
    "prop_trafficlight",
    "prop_traffic_lightset_01",
    "prop_traffic_03b",
    "prop_traffic_03a",
    "prop_traffic_02b",
    "prop_traffic_02a",
    "prop_traffic_01d",
    "prop_traffic_01b",
    "prop_traffic_01a",
    "prop_traffic_01",
    "prop_streetlight_01b",
    "prop_streetlight_01",
    "prop_streetlight_01b"
}


local trafficLightObjects = {
    [`prop_traffic_01a`] = true,   -- prop_traffic_01a
    [`prop_traffic_01b`] = true,   -- prop_traffic_01b
    [`prop_traffic_01d`] = true,   -- prop_traffic_01d
    [`prop_traffic_02a`] = true,   -- prop_traffic_02a
    [`prop_traffic_02b`] = true,   -- prop_traffic_02b
    [`prop_traffic_03a`] = true,   -- prop_traffic_03a
    [`prop_traffic_03b`] = true,    -- prop_traffic_03b
    [`prop_streetlight_01`] = true,
    [`prop_streetlight_01b`] = true,
    [`prop_streetlight_02`] = true,
    [`prop_streetlight_03`] = true,
    [`prop_streetlight_03b`] = true,
    [`prop_streetlight_03c`] = true,
    [`prop_streetlight_03d`] = true,
    [`prop_streetlight_03e`] = true,
    [`prop_streetlight_04`] = true,
    [`prop_streetlight_05`] = true,
    [`prop_streetlight_05_b`] = true,
    [`prop_streetlight_06`] = true,
    [`prop_streetlight_07a`] = true,
    [`prop_streetlight_07b`] = true,
    [`prop_streetlight_08`] = true,
    [`prop_streetlight_09`] = true,
    [`prop_streetlight_10`] = true,
    [`prop_streetlight_11a`] = true,
    [`prop_streetlight_11b`] = true,
    [`prop_streetlight_11c`] = true,
    [`prop_streetlight_12a`] = true,
    [`prop_streetlight_12b`] = true,
    [`prop_streetlight_14a`] = true,
    [`prop_streetlight_15a`] = true,
    [`prop_trafficlight`] = true,
    [`prop_traffic_lightset_01`] = true,
    [`prop_streetlight_16a`] = true,
    [-97646180] = true,
    [1803721002] = true, 
}

local blockNetworkingModels = {
    [`prop_sign_road_01a`] = "prop_sign_road_01a (stop sign)",
    [`prop_sign_road_01b`] = "prop_sign_road_01b (stop sign, wrong way)",
    [`prop_sign_road_01c `] = "prop_sign_road_01c ",
    [`prop_sign_road_02a`] = "prop_sign_road_02a (yield)",
    [`prop_sign_road_03a`] = "prop_sign_road_03a (Do not enter)",
    [`prop_sign_road_03b`] = "prop_sign_road_03b (Do not enter, wrong way)",
    [`prop_sign_road_03c`] = "prop_sign_road_03c (All traffic that way)",
    [`prop_sign_road_03d`] = "prop_sign_road_03d (Hospital)",
    [`prop_sign_road_03e`] = "prop_sign_road_03e (do not block inter.)",
    [`prop_sign_road_03f`] = "prop_sign_road_03f (keep right)",
    [`prop_sign_road_03g`] = "prop_sign_road_03g",
    [`prop_sign_road_03h`] = "prop_sign_road_03h",
    [`prop_sign_road_03i`] = "prop_sign_road_03i",
    [`prop_sign_road_03j`] = "prop_sign_road_03j",
    [`prop_sign_road_03k`] = "prop_sign_road_03k",
    [`prop_sign_road_03l`] = "prop_sign_road_03l",
    [`prop_sign_road_03m`] = "prop_sign_road_03m",
    [`prop_sign_road_03n`] = "prop_sign_road_03n",
    [`prop_sign_road_03o`] = "prop_sign_road_03o",
    [`prop_sign_road_03p`] = "prop_sign_road_03p",
    [`prop_sign_road_03q`] = "prop_sign_road_03q",
    [`prop_sign_road_03r`] = "prop_sign_road_03r",
    [`prop_sign_road_03s`] = "prop_sign_road_03s",
    [`prop_sign_road_03t`] = "prop_sign_road_03t",
    [`prop_sign_road_03u`] = "prop_sign_road_03u",
    [`prop_sign_road_03v`] = "prop_sign_road_03v",
    [`prop_sign_road_03w`] = "prop_sign_road_03w",
    [`prop_sign_road_03x`] = "prop_sign_road_03x",
    [`prop_sign_road_03y`] = "prop_sign_road_03y",
    [`prop_sign_road_03z`] = "prop_sign_road_03z",
    [`prop_sign_road_04a`] = "prop_sign_road_04a",
    [`prop_sign_road_04b`] = "prop_sign_road_04b",
    [`prop_sign_road_04c`] = "prop_sign_road_04c",
    [`prop_sign_road_04d`] = "prop_sign_road_04d",
    [`prop_sign_road_04e`] = "prop_sign_road_04e",
    [`prop_sign_road_04f`] = "prop_sign_road_04f",
    [`prop_sign_road_04g`] = "prop_sign_road_04g",
    [`prop_sign_road_04h`] = "prop_sign_road_04h",
    [`prop_sign_road_04i`] = "prop_sign_road_04i",
    [`prop_sign_road_04j`] = "prop_sign_road_04j",
    [`prop_sign_road_04k`] = "prop_sign_road_04k",
    [`prop_sign_road_04l`] = "prop_sign_road_04l",
    [`prop_sign_road_04m`] = "prop_sign_road_04m",
    [`prop_sign_road_04n`] = "prop_sign_road_04n",
    [`prop_sign_road_04o`] = "prop_sign_road_04o",
    [`prop_sign_road_04p`] = "prop_sign_road_04p",
    [`prop_sign_road_04q`] = "prop_sign_road_04q",
    [`prop_sign_road_04r`] = "prop_sign_road_04r",
    [`prop_sign_road_04s`] = "prop_sign_road_04s",
    [`prop_sign_road_04t`] = "prop_sign_road_04t",
    [`prop_sign_road_04u`] = "prop_sign_road_04u",
    [`prop_sign_road_04v`] = "prop_sign_road_04v",
    [`prop_sign_road_04w`] = "prop_sign_road_04w",
    [`prop_sign_road_04x`] = "prop_sign_road_04x",
    [`prop_sign_road_04y`] = "prop_sign_road_04y",
    [`prop_sign_road_04z`] = "prop_sign_road_04z",
    [`prop_sign_road_04za`] = "prop_sign_road_04za",
    [`prop_sign_road_04zb`] = "prop_sign_road_04zb",
    [`prop_sign_road_05a`] = "prop_sign_road_05a",
    [`prop_sign_road_05b`] = "prop_sign_road_05b",
    [`prop_sign_road_05c`] = "prop_sign_road_05c",
    [`prop_sign_road_05d`] = "prop_sign_road_05d",
    [`prop_sign_road_05e`] = "prop_sign_road_05e",
    [`prop_sign_road_05f`] = "prop_sign_road_05f",
    [`prop_sign_road_05g`] = "prop_sign_road_05g",
    [`prop_sign_road_05i`] = "prop_sign_road_05i",
    [`prop_sign_road_05j`] = "prop_sign_road_05j",
    [`prop_sign_road_05k`] = "prop_sign_road_05k",
    [`prop_sign_road_05l`] = "prop_sign_road_05l",
    [`prop_sign_road_05m`] = "prop_sign_road_05m",
    [`prop_sign_road_05n`] = "prop_sign_road_05n",
    [`prop_sign_road_05o`] = "prop_sign_road_05o",
    [`prop_sign_road_05p`] = "prop_sign_road_05q",
    [`prop_sign_road_05q`] = "prop_sign_road_05r",
    [`prop_sign_road_05r`] = "prop_sign_road_05s",
    [`prop_sign_road_05t`] = "prop_sign_road_05t",
    [`prop_sign_road_05u`] = "prop_sign_road_05u",
    [`prop_sign_road_05v`] = "prop_sign_road_05v",
    [`prop_sign_road_05w`] = "prop_sign_road_05w",
    [`prop_sign_road_05x`] = "prop_sign_road_05x",
    [`prop_sign_road_05y`] = "prop_sign_road_05y",
    [`prop_sign_road_05z`] = "prop_sign_road_05z",
    [`prop_sign_road_05za`] = "prop_sign_road_05za",
    [`prop_sign_road_06a`] = "prop_sign_road_06a",
    [`prop_sign_road_06b`] = "prop_sign_road_06b",
    [`prop_sign_road_06c`] = "prop_sign_road_06c",
    [`prop_sign_road_06d`] = "prop_sign_road_06d",
    [`prop_sign_road_06e`] = "prop_sign_road_06e",
    [`prop_sign_road_06f`] = "prop_sign_road_06f",
    [`prop_sign_road_06g`] = "prop_sign_road_06g",
    [`prop_sign_road_06h`] = "prop_sign_road_06h",
    [`prop_sign_road_06i`] = "prop_sign_road_06i",
    [`prop_sign_road_06j`] = "prop_sign_road_06j",
    [`prop_sign_road_06k`] = "prop_sign_road_06k",
    [`prop_sign_road_06l`] = "prop_sign_road_06l",
    [`prop_sign_road_06m`] = "prop_sign_road_06m",
    [`prop_sign_road_06n`] = "prop_sign_road_06n",
    [`prop_sign_road_06o`] = "prop_sign_road_06o",
    [`prop_sign_road_06p`] = "prop_sign_road_06p",
    [`prop_sign_road_06q`] = "prop_sign_road_06q",
    [`prop_sign_road_06r`] = "prop_sign_road_06r",
    [`prop_sign_road_06s`] = "prop_sign_road_06s",
    [`prop_sign_road_07a`] = "prop_sign_road_07a",
    [`prop_sign_road_07b`] = "prop_sign_road_07b",
    [`prop_sign_road_08a`] = "prop_sign_road_08a",
    [`prop_sign_road_08b`] = "prop_sign_road_08b",
    [`prop_sign_road_09a`] = "prop_sign_road_09a",
    [`prop_sign_road_09b`] = "prop_sign_road_09b",
    [`prop_sign_road_09c`] = "prop_sign_road_09c",
    [`prop_sign_road_09d`] = "prop_sign_road_09d",
    [`prop_sign_road_09e`] = "prop_sign_road_09e",
    [`prop_sign_road_09f`] = "prop_sign_road_09f",

    -- Street lights
    [`prop_streetlight_01`] = "prop_streetlight_01",
    [`prop_streetlight_01b`] = "prop_streetlight_01b",
    [`prop_streetlight_02`] = "prop_streetlight_02",
    [`prop_streetlight_03`] = "prop_streetlight_03",
    [`prop_streetlight_03b`] = "prop_streetlight_03b",
    [`prop_streetlight_03c`] = "prop_streetlight_03c",
    [`prop_streetlight_03d`] = "prop_streetlight_03d",
    [`prop_streetlight_03e`] = "prop_streetlight_03e",
    [`prop_streetlight_04`] = "prop_streetlight_04",
    [`prop_streetlight_05`] = "prop_streetlight_05",
    [`prop_streetlight_05_b`] = "prop_streetlight_05_b",
    [`prop_streetlight_06`] = "prop_streetlight_06",
    [`prop_streetlight_07a`] = "prop_streetlight_07a",
    [`prop_streetlight_07b`] = "prop_streetlight_07b",
    [`prop_streetlight_08`] = "prop_streetlight_08",
    [`prop_streetlight_09`] = "prop_streetlight_09",
    [`prop_streetlight_10`] = "prop_streetlight_10",
    [`prop_streetlight_11a`] = "prop_streetlight_11a",
    [`prop_streetlight_11b`] = "prop_streetlight_11b",
    [`prop_streetlight_11c`] = "prop_streetlight_11c",
    [`prop_streetlight_12a`] = "prop_streetlight_12a",
    [`prop_streetlight_12b`] = "prop_streetlight_12b",
    [`prop_streetlight_14a`] = "prop_streetlight_14a",
    [`prop_streetlight_15a`] = "prop_streetlight_15a",
    [`prop_streetlight_16a`] = "prop_streetlight_16a",

    [`prop_traffic_01a`] = "prop_traffic_01a",   -- prop_traffic_01a
    [`prop_traffic_01b`] = "prop_traffic_01b",   -- prop_traffic_01b
    [`prop_traffic_01d`] = "prop_traffic_01d",   -- prop_traffic_01d
    [`prop_traffic_02a`] = "prop_traffic_02a",   -- prop_traffic_02a
    [`prop_traffic_02b`] = "prop_traffic_02b",   -- prop_traffic_02b
    [`prop_traffic_03a`] = "prop_traffic_03a",   -- prop_traffic_03a
    [`prop_traffic_03b`] = "prop_traffic_03b",    -- prop_traffic_03b

    -- Dumpsters
    [`prop_dumpster_01a`] = "prop_dumpster_01a",
    [`prop_dumpster_02a`] = "prop_dumpster_02a",
    [`prop_dumpster_02b`] = "prop_dumpster_02b",
    [`prop_dumpster_03a`] = "prop_dumpster_03a",
    [`prop_dumpster_04a`] = "prop_dumpster_04a",
    [`prop_dumpster_04b`] = "prop_dumpster_04b",

     
    -- Andere Meuk
    [`prop_news_disp_02c`] = "prop_news_disp_02c",
    [`prop_phonebox_03`] = "prop_phonebox_03",
    [`prop_news_disp_05a`] = "prop_news_disp_05a",
    [`prop_news_disp_02e`] = "prop_news_disp_02e",
    [`prop_news_disp_03c`] = "prop_news_disp_03c",
    [`prop_gas_smallbin01`] = "prop_gas_smallbin01",
    [`prop_parknmeter_01`] = "prop_parknmeter_01",
    [`prop_news_disp_06a`] = "prop_news_disp_06a",
    [`prop_news_disp_02a`] = "prop_news_disp_02a",
    [`prop_news_disp_02d`] = "prop_news_disp_02d",
    [`prop_phonebox_01c`] = "prop_phonebox_01c",
    [`prop_postbox_01a`] = "prop_postbox_01a",
    [`prop_fire_hydrant_2_l1`] = "prop_fire_hydrant_2_l1",
    [`prop_fire_hydrant_1`] = "prop_fire_hydrant_1",
    [`prop_parkingpay`] = "prop_parkingpay",
    [`prop_valet_03`] = "prop_valet_03",
    [`prop_news_disp_02b`] = "prop_news_disp_02b",
    [`prop_fire_hydrant_4`] = "prop_fire_hydrant_4",
    [`prop_postbox_ss_01a`] = "prop_postbox_ss_01a",
    [`prop_phonebox_01b`] = "prop_phonebox_01b",
    [`prop_news_disp_01a`] = "prop_news_disp_01a",
    [`prop_news_disp_03a`] = "prop_news_disp_03a",
    [`prop_parknmeter_02`] = "prop_parknmeter_02",
    [`prop_fire_hydrant_2`] = "prop_fire_hydrant_2",
    [`prop_bin_07b`] = "prop_bin_07b",
    [`prop_recyclebin_04_a`] = "prop_recyclebin_04_a",
    [`prop_recyclebin_02_c`] = "prop_recyclebin_02_c",
    [`zprop_bin_01a_old`] = "zprop_bin_01a_old",
    [`prop_recyclebin_03_a`] = "prop_recyclebin_03_a",
    [`prop_bin_07c`] = "prop_bin_07c",
    [`prop_bin_10b`] = "prop_bin_10b",
    [`prop_bin_10a`] = "prop_bin_10a",
    [`prop_recyclebin_02b`] = "prop_recyclebin_02b",
    [`prop_bin_08a`] = "prop_bin_08a",
    [`prop_recyclebin_04_b`] = "prop_recyclebin_04_b",
    [`prop_bin_02a`] = "prop_bin_02a",
    [`prop_bin_03a`] = "prop_bin_03a",
    [`prop_recyclebin_02_d`] = "prop_recyclebin_02_d",
    [`prop_bin_08open`] = "prop_bin_08open",
    [`prop_bin_12a`] = "prop_bin_12a",
    [`prop_recyclebin_02a`] = "prop_recyclebin_02a",
    [`prop_bin_05a`] = "prop_bin_05a",
    [`prop_bin_07a`] = "prop_bin_07a",
    [`prop_recyclebin_01a`] = "prop_recyclebin_01a",
    [`prop_elecbox_02b`] = "prop_elecbox_02b",
    [`prop_elecbox_02a`] = "prop_elecbox_02a",
    [`prop_phonebox_04`] = "prop_phonebox_04",
	[`prop_bikerack_1a`] = "prop_bikerack_1a",
	[`prop_elecbox_04a`] = "prop_elecbox_04a",

}

local attachedObjects = {
    [`prop_ld_flow_bottle`] = true,
    [`prop_cs_burger_01`] = true,
    [`prop_cs_hand_radio`] = true,
    [`prop_tool_broom`] = true,
    [`bkr_prop_coke_spatula_04`] = true,
    [-2054442544] = true,
    [`ba_prop_battle_glowstick_01`] = true,
    [`ba_prop_battle_hobby_horse`] = true,
    [`p_amb_brolly_01`] = true,
    [`prop_notepad_01`] = true,
    [`hei_prop_heist_box`] = true,
    [`prop_single_rose`] = true,
    [`prop_cs_ciggy_01`] = true,
    [`hei_heist_sh_bong_01`] = true,
    [`prop_ld_suitcase_01`] = true,
    [`prop_security_case_01`] = true,
    [`prop_tool_pickaxe`] = true,
    [`p_amb_coffeecup_01`] = true,
    [`prop_police_id_board`] = true,
    [`prop_drink_whisky`] = true,
    [`prop_amb_beer_bottle`] = true,
    [`prop_plastic_cup_02`] = true,
    [`prop_amb_donut`] = true,
    [`prop_sandwich_01`] = true,
    [`prop_ecola_can`] = true,
    [`prop_choc_ego`] = true,
    [`prop_drink_redwine`] = true,
    [`prop_champ_flute`] = true,
    [`prop_drink_champ`] = true,
    [`prop_cigar_02`] = true,
    [`prop_cigar_01`] = true,
    [`prop_acc_guitar_01`] = true,
    [`prop_el_guitar_01`] = true,
    [`prop_el_guitar_03`] = true,
    [`prop_novel_01`] = true,
    [`prop_snow_flower_02`] = true,
    [`v_ilev_mr_rasberryclean`] = true,
    [`p_michael_backpack_s`] = true,
    [`p_amb_clipboard_01`] = true,
    [`prop_tourist_map_01`] = true,
    [`prop_beggers_sign_03`] = true,
    [`prop_anim_cash_pile_01`] = true,
    [`prop_pap_camera_01`] = true,
    [`ba_prop_battle_champ_open`] = true,
    [`p_cs_joint_02`] = true,
    [`prop_amb_ciggy_01`] = true,
    [`prop_ld_case_01`] = true,
    [`w_ar_carbinerifle`] = true,
    [`w_ar_assaultrifle`] = true,
    [`w_sb_smg`] = true,
    [`w_me_poolcue`] = true,
    [`prop_golf_iron_01`] = true,
    [`w_me_bat`] = true,
    [`bkr_prop_fakeid_binbag_01`] = true,
    [`hei_prop_heist_binbag`] = true,
    [`prop_rub_tyre_01`] = true,
    [`prop_bongos_01`] = true,
}
-- These objects will get deleted if not visible
local visibleObjects = {
    [`p_parachute1_mp_s`] = true
}

Citizen.CreateThread(function()
    local GetEntityModel, SetEntityInvincible = GetEntityModel, SetEntityInvincible
    while true do
        DisablePlayerVehicleRewards(PlayerId())
        local objects = GetGamePool("CObject")
        local count = 0
        for i=1, #objects do
            if count > 5 then
                count = 0
                Citizen.Wait(50)
            end
            count = count + 1
            local model = GetEntityModel(objects[i])
            if trafficLightObjects[model] then
                SetEntityInvincible(objects[i], true)
                FreezeEntityPosition(objects[i], true)
            end
            if model == -1581502570 or model == 1129053052 then
                ESX.Game.DeleteObject(objects[i])
                Citizen.Wait(1000)
            end
        end
        Citizen.Wait(1000)
    end
end)


Citizen.CreateThread(function()
    local GetEntityModel, SetEntityInvincible = GetEntityModel, SetEntityInvincible
    while true do
        DisablePlayerVehicleRewards(PlayerId())
        local objects = GetGamePool("CObject")
        local count = 0
        for i=1, #objects do
            if count > 5 then
                count = 0
                Citizen.Wait(50)
            end
            count = count + 1
            local model = GetEntityModel(objects[i])
            if blockNetworkingModels[model] then
                SetEntityInvincible(objects[i], true)
                FreezeEntityPosition(objects[i], true)
            end
            if model == -1581502570 or model == 1129053052 then
                ESX.Game.DeleteObject(objects[i])
                Citizen.Wait(1000)
            end
        end
        Citizen.Wait(1000)
    end
end)

