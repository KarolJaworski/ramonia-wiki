
local config = {
-- chance = 800 -> 100% , 80 - 10%, 8 - 1%
{["itemID"] = 9243, ["count"] = 1, ["chance"] = 120}, -- 15% to get Scary Hat[10]
{["itemID"] = 9247, ["count"] = 1, ["chance"] = 120}, -- 15% to get Witchy Legs [30]
{["itemID"] = 9229, ["count"] = 1, ["chance"] = 120}, -- 15% to get Rotten Staff 40]
{["itemID"] = 5269, ["count"] = 1, ["chance"] = 120}, -- 15% to get Onyx Flail[100]
{["itemID"] = 10248, ["count"] = 1, ["chance"] = 120}, -- 15% to get lightning headband [100]
{["itemID"] = 5502, ["count"] = 1, ["chance"] = 120}, -- 15% to get lightning boots [100]
{["itemID"] = 5504, ["count"] = 1, ["chance"] = 80} -- 10% to get lightning robe[100]
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
                  doPlayerSendTextMessage(cid, 25, "You have found ".. reward.count .."x ".. getItemName(reward.itemID) .." in blue lootbag.")
                  else
                  doPlayerSendTextMessage(cid, 25, "You have found ".. getItemName(reward.itemID) .." in blue lootbag.")
                  end
            break
            end
      end


return true
end