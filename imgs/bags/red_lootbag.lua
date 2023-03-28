
local config = {
-- chance = 800 -> 100% , 80 - 10%, 8 - 1%
{["itemID"] = 5508, ["count"] = 1, ["chance"] = 120}, -- Spirit Cloak
{["itemID"] = 9289, ["count"] = 1, ["chance"] = 120}, -- Spellbook of Enlightenment
{["itemID"] = 2392, ["count"] = 1, ["chance"] = 120}, -- Fire Sword
{["itemID"] = 2432, ["count"] = 1, ["chance"] = 120}, -- Fire Axe
{["itemID"] = 10247, ["count"] = 1, ["chance"] = 120}, -- Magma Monocle
{["itemID"] = 5263, ["count"] = 1, ["chance"] = 120}, -- Magma Boots
{["itemID"] = 5264, ["count"] = 1, ["chance"] = 80} -- Magma Coat
}

function onUse(cid, item, frompos, item2, topos)
                                                                      
      for i = 1, #config do
            reward = config[i]
            if (math.random(0,999) < reward.chance) then
                  doSendMagicEffect(frompos, CONST_ME_CRAPS)
                  doCreatureSay(cid, "Try your luck!", TALKTYPE_ORANGE)
                  doPlayerAddItem(cid, reward.itemID, reward.count)
                  doRemoveItem(item.uid, 1)
                  if reward.count > 1 then
                  doPlayerSendTextMessage(cid, 25, "You have found ".. reward.count .."x ".. getItemName(reward.itemID) .." in red lootbag.")
                  else
                  doPlayerSendTextMessage(cid, 25, "You have found ".. getItemName(reward.itemID) .." in red lootbag.")
                  end
            break
            end
      end


return true
end