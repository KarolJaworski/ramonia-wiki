
local config = {
-- chance = 800 -> 100% , 80 - 10%, 8 - 1%
{["itemID"] = 2323, ["count"] = 1, ["chance"] = 120}, -- 15% to get Hat of the Mad [10]
{["itemID"] = 9249, ["count"] = 1, ["chance"] = 120}, -- 15% to get Urban Legs [30]
{["itemID"] = 2393, ["count"] = 1, ["chance"] = 120}, -- 15% to get Giant Sword [40]
{["itemID"] = 2427, ["count"] = 1, ["chance"] = 120}, -- 15% to get Guardian Halberd [100]
{["itemID"] = 7490, ["count"] = 1, ["chance"] = 120}, -- 15% to get Terra Hood [100]
{["itemID"] = 5282, ["count"] = 1, ["chance"] = 120}, -- 15% to get Terra Boots [100]
{["itemID"] = 5284, ["count"] = 1, ["chance"] = 80} -- 10% to get Terra Mantle [100]
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
                  doPlayerSendTextMessage(cid, 25, "You have found ".. reward.count .."x ".. getItemName(reward.itemID) .." in green lootbag.")
                  else
                  doPlayerSendTextMessage(cid, 25, "You have found ".. getItemName(reward.itemID) .." in green lootbag.")
                  end
            break
            end
      end


return true
end