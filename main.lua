local function UpdateResolutionScale()
	local fps = GetFramerate()
    local targetfps = GetCVar("targetFPS")
	local minscale = 0.7
	local maxscale = 1.1
	local renderscale = GetCVar("RenderScale")
	local newrenderscale = renderscale + ((fps / targetfps)-1)
	if newrenderscale < minscale then
		newrenderscale = minscale
	elseif newrenderscale > maxscale then
		newrenderscale = maxscale
	end
	if math.abs(renderscale-newrenderscale) >= 0.05 then
		SetCVar("RenderScale", newrenderscale)
	end
end
C_Timer.NewTicker(1, UpdateResolutionScale)
