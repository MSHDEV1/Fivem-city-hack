local QBCore = exports['qb-core']:GetCoreObject()

local center = vec3(757.22, -1912.16, 29.46)
local uiText = "Şehiri Hacklemek İçin [E]"

local point = lib.points.new({
  coords = center,
  distance = 5,
})
 
local marker = lib.marker.new({
  coords = center,
  type = 2,
  width = 0.5,
  height = 0.5,
})
 
function point:nearby()
  marker:draw()
 
  if self.currentDistance < 1.5 then
    if not lib.isTextUIOpen() then
      lib.showTextUI("Şehiri Hacklemek İçin [E]")
    end
    local Player = QBCore.Functions.GetPlayerData()


      
    if IsControlJustPressed(0, 51) then
   if Player.job.name == "hacker" and Player.job.grade.name == "God" then
      lib.notify({
           position = "bottom",
           type = "success",
           title = "Hack",
        description = "Hack Başlıyor"
      })

      Wait(3000)
      SetEntityCoords(PlayerPedId(),757.48, -1912.08, 29.46)

       RequestAnimDict("anim@heists@prison_heiststation@cop_reactions")

	   while (not HasAnimDictLoaded("anim@heists@prison_heiststation@cop_reactions")) do Citizen.Wait(0) end

	  TaskPlayAnim(PlayerPedId(),"anim@heists@prison_heiststation@cop_reactions","cop_b_idle",1.0,-1.0, -1, 1, 1, false, false, false)

    local truefalse = exports['simonsays']:StartSimonSays(buttonGrid, length)
    if truefalse then
        lib.notify({
        position = "bottom",
           type = "success",
           title = "Hack",
        description = "Şehiri Hacklediniz"
      })
     
      StopAnimTask(PlayerPedId(), "anim@heists@prison_heiststation@cop_reactions" , "cop_b_idle" , -1 
)
  TriggerServerEvent("msh-hack-city:server:black")
Wait(100000)

 TriggerServerEvent("msh-hack-city:server:blacknotvisible")
   else 
   lib.notify({
               position = "bottom",
               title = "Hack",
                  type = "error",
               alignIcon = "top",
        description = "Başaramadın"
      })
       StopAnimTask(PlayerPedId(), "anim@heists@prison_heiststation@cop_reactions" , "cop_b_idle" , -1 
) 
end 
else
  lib.notify({
               position = "bottom",
                  type = "error",
                   alignIcon = "top",
                  title = "Hack",
        description = "Hacker Mesleğine Sahip Değilsiniz Veya Rankınız Yetersiz"
      })
end
end
  else
  local isOpen, currentText = lib.isTextUIOpen()
    if isOpen and currentText == uiText then
      lib.hideTextUI()
    end
  end
end




local isik = false
RegisterCommand("hack" ,function()
  TriggerServerEvent("msh-hack-city:server:black")
end)