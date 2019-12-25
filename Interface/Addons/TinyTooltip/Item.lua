
local LibEvent = LibStub:GetLibrary("LibEvent.7000")

local addon = TinyTooltip

local function ColorBorder(tip, r, g, b)
    if (addon.db.item.coloredItemBorder) then
        LibEvent:trigger("tooltip.style.border.color", tip, r, g, b)
    end
end

if (GameTooltip_SetBackdropStyle) then
    hooksecurefunc("GameTooltip_SetBackdropStyle", function(self, style)
        if (self.style) then
            self:SetBackdrop(nil)
        end
    end)
end

local function ItemIcon(tip, link)
    if (addon.db.item.showItemIcon) then
        local texture = select(10, GetItemInfo(link))
        local text = addon:GetLine(tip,1):GetText()
        if (texture) then
            addon:GetLine(tip,1):SetFormattedText("|T%s:18|t %s", texture, text)
        end
    end
end

local function ItemStackCount(tip, link)
    if (addon.db.item.showStackCount) then
        local stackCount = select(8, GetItemInfo(link))
        if (stackCount and stackCount > 1) then
            local text = addon:GetLine(tip,1):GetText() .. format(" |cff00eeee/%s|r", stackCount)
            addon:GetLine(tip,1):SetText(text)
        end
    end
end

local function ItemPrice(tip, link)
    local itemSellPrice = select(11, GetItemInfo(link))
    if (itemSellPrice and itemSellPrice > 0) then
        local count = 1
        local mouse = GetMouseFocus()
        if (mouse) then
            count = mouse.count or count
        end
        tip:AddLine(" ")
        if (count > 1) then
            SetTooltipMoney(tip, itemSellPrice, nil, "單價")
        end
        itemSellPrice = itemSellPrice * count
        SetTooltipMoney(tip, itemSellPrice, nil, SELL_PRICE)
    end
end

LibEvent:attachTrigger("tooltip:item", function(self, tip, link)
    local quality = select(3, GetItemInfo(link)) or 0
    local r, g, b = GetItemQualityColor(quality)
    ColorBorder(tip, r, g, b)
    ItemStackCount(tip, link)
    ItemIcon(tip, link)
    -- ItemPrice(tip, link)
end)

hooksecurefunc("EmbeddedItemTooltip_OnTooltipSetItem", function(self)
    local tip = self:GetParent()
    if (not tip or tip:GetObjectType() ~= "GameTooltip") then return end
    local r, g, b = self.IconBorder:GetVertexColor()
    ColorBorder(tip, r, g, b)
end)
