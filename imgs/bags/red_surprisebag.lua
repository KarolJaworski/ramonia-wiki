
local config = {
-- chance = 800 -> 100% , 80 - 10%, 8 - 1%
{["itemID"] = 7483, ["count"] = 1, ["chance"] = 160}, -- zaoan robe
{["itemID"] = 9242, ["count"] = 1, ["chance"] = 160}, -- firewalker helmet
{["itemID"] = 10843, ["count"] = 1, ["chance"] = 160}, -- execowtioner axe
{["itemID"] = 9224, ["count"] = 1, ["chance"] = 160}, -- ruby amulet
{["itemID"] = 13306, ["count"] = 1, ["chance"] = 80}, -- the justice seeker
{["itemID"] = 7519, ["count"] = 1, ["chance"] = 80}, -- crude umbral spellbook
{["itemID"] = 10861, ["count"] = 1, ["chance"] = 80}, -- prismatic Boots
{["itemID"] = 9252, ["count"] = 1, ["chance"] = 80}, -- bony legs
{["itemID"] = 5238, ["count"] = 1, ["chance"] = 80} -- dragon robe
}

function onUse(cid, item, frompos, item2, topos)
                                                                      
      for i = 1, #config do
            reward = config[i]
            if (math.random(0,999) < reward.chance) then
                  doSendMagicEffect(frompos, CONST_ME_CRAPS)
                  doCreatureSay(cid, "Present has been created!", TALKTYPE_ORANGE)
                  doPlayerAddItem(cid, reward.itemID, reward.count)
                  doRemoveItem(item.uid, 1)
                  if reward.count > 1 then
                  doPlayerSendTextMessage(cid, 25, "You have found ".. reward.count .."x ".. getItemName(reward.itemID) .." in red lootbag.")
                  else
                  doPlayerSendTextMessage(cid, 25, "You have found ".. getItemName(reward.itemID) .." in red surprise bag.")
                  end
            break
            end
      end


return true
end