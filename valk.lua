repeat game:GetService("RunService").Stepped:wait()
until game:IsLoaded() and game:GetService("Players").LocalPlayer

pcall(function()
   local plr = game:GetService("Players").LocalPlayer
   local giver = workspace:WaitForChild("Valkyrie Helm giver")

   local head = plr.Character:WaitForChild("Head")
   firetouchinterest(head, giver, 0)

   plr.CharacterAdded:Connect(function(char)
       head = char:WaitForChild("Head")
       firetouchinterest(head, giver, 0)
   end)
end)
