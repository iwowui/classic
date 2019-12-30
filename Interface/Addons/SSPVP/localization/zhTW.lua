if( GetLocale() ~= "zhTW" ) then return end
local L = {}

local SSPVP = select(2, ...)
SSPVP.L = setmetatable(L, {__index = SSPVP.L})
