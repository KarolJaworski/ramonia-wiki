
local config = {
-- chance = 800 -> 100% , 80 - 10%, 8 - 1%
{["itemID"] = 9243, ["count"] = 1, ["chance"] = 120}, -- 15% to get Scary Hat[10]
{["itemID"] = 9247, ["count"] = 1, ["chance"] = 120}, -- 15% to get Witchy Legs [30]
{["itemID"] = 9235, ["count"] = 1, ["chance"] = 120}, -- 15% to get archer's armor 40]
{["itemID"] = 5269, ["count"] = 1, ["chance"] = 120}, -- 15% to get Onyx Flail[100]
{["itemID"] = 5504, ["count"] = 1, ["chance"] = 120}, -- 10% to get lightning robe[100]
{["itemID"] = 13305, ["count"] = 1, ["chance"] = 80}, -- 15% to get heroic axe [100]
{["itemID"] = 9236, ["count"] = 1, ["chance"] = 80}, -- 15% to get ghost armor [100]
{["itemID"] = 9241, ["count"] = 1, ["chance"] = 80} -- 15% to get ornament cape [100]
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
                  doPlayerSendTextMessage(cid, 25, "You have found ".. reward.count .."x ".. getItemName(reward.itemID) .." in blue surprise bag.")
                  else
                  doPlayerSendTextMessage(cid, 25, "You have found ".. getItemName(reward.itemID) .." in blue surprise bag.")
                  end
            break
            end
      end


return true
end