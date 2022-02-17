# Wallet for qb-core
edited and fixed for me Nema#2245

# About
- Script for QBCore.
- The script allows you to buy a wallet in a store and then when using it, it gives the option of 4 slots to put the player's personal documents.

# Required
- qb-core/shared/items.lua info

		["billetera"] 			 = {["name"] = "billetera", 			["label"] = "Billetera", 		["weight"] = 500, 		["type"] = "item", 		["image"] = "billetera.png", 			["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Billetera test)"},



# - go to lj-inventory\html\js\app.js
# Find: stickynote and paste below

	} else if (itemData.name == "billetera") {
		    $(".item-info-title").html('<p>'+itemData.label+'</p>')
		    $(".item-info-description").html('<p><strong>Número de identificación billetera: </strong><span>' + itemData.info.billeteraid);

# -go to lj-inventory/server/main.lua
# Find:
- **elseif QBCore.Shared.SplitStr(shopType, "_")[1] == "Itemshop" then**

- After that if and cash put this: 
	
		if itemData.name == 'billetera' then itemData.info.billeteraid = math.random(11111,99999) end -- billetera item

# Like this: 
- https://media.discordapp.net/attachments/923652833713225839/943952794921107587/deberia_verse_asi.png?width=1200&height=100

# Find:
- **elseif itemData["name"] == "markedbills" then**

- After that elseif put this:

		elseif itemData['name'] == 'billetera' then
							info.billeteraid = math.random(11111,99999)

it should stay like this

	elseif itemData["name"] == "markedbills" then
					info.worth = math.random(5000, 10000)
				elseif itemData['name'] == 'bolso' then
					info.bagid = math.random(11111,99999)

# Like this: 
https://media.discordapp.net/attachments/923652833713225839/943952956246589550/unknown.png

- qb-shops/config.lua
 
		 [20] = {
			    name = "billetera",
			    price = 300,
			    amount = 50,
			    info = {},
			    type = "item",
			    slot = 20,
			}, 
	
- Image:
https://media.discordapp.net/attachments/923652833713225839/943953384396976208/unknown.png

Thanks!
