local pickone = {}
local picktwo = {}
local pickthree = {}
local pickfour = {}
local pickfive = {}
announcestring = false
lastfor = 10
local assert = assert
local MenuV = assert(MenuV)

local lotterystart = MenuV:CreateMenu(false, "Lottery", "topleft", 255, 0, 0, "size-125", "default", "menuv", "Lottery")
local lotterypick =
    MenuV:CreateMenu(false, "Pick your numbers", "topleft", 255, 0, 0, "size-125", "default", "menuv", "LotteryPick")
local lotterypick2 =
    MenuV:CreateMenu(false, "Pick your numbers", "topleft", 255, 0, 0, "size-125", "default", "menuv", "LotteryPick2")
local lotterypick3 =
    MenuV:CreateMenu(false, "Pick your numbers", "topleft", 255, 0, 0, "size-125", "default", "menuv", "LotteryPick3")
local lotterypick4 =
    MenuV:CreateMenu(false, "Pick your numbers", "topleft", 255, 0, 0, "size-125", "default", "menuv", "LotteryPick4")
local lotterypick5 =
    MenuV:CreateMenu(false, "Pick your numbers", "topleft", 255, 0, 0, "size-125", "default", "menuv", "LotteryPick5")
local lotterypickconfirm =
    MenuV:CreateMenu(false, "Confirm", "topleft", 255, 0, 0, "size-125", "default", "menuv", "LotteryPickConfirm")
local lotterypickQ =
    MenuV:CreateMenu(false, "Quick pick Lottery", "topleft", 255, 0, 0, "size-125", "default", "menuv", "LotteryPickQ")
local lotterystartY_button =
    lotterystart:AddButton(
    {icon = "💰", label = "Pick your numbers", value = lotterypick, description = "Join Lottery"}
)
local lotterystartN_button =
    lotterystart:AddButton(
    {icon = "💰", label = "Use quickpick numbers", value = lotterypickQ, description = "Join Lottery"}
)
local confirm = lotterypickQ:AddConfirm({icon = "💰", label = "Are you sure?", value = false})
local confirm1 = lotterypickconfirm:AddConfirm({icon = "💰", label = "Are you sure?", value = false})
local number1 =
    lotterypick:AddSlider(
    {
        icon = "💰",
        label = "Number 1",
        value = "1",
        values = {
            {label = "1", value = "1", description = "1"},
            {label = "2", value = "2", description = "2"},
            {label = "3", value = "3", description = "3"},
            {label = "4", value = "4", description = "4"},
            {label = "5", value = "5", description = "5"},
            {label = "6", value = "6", description = "6"},
            {label = "7", value = "7", description = "7"},
            {label = "8", value = "8", description = "8"},
            {label = "9", value = "9", description = "9"},
            {label = "10", value = "10", description = "10"},
            {label = "11", value = "11", description = "11"},
            {label = "12", value = "12", description = "12"},
            {label = "13", value = "13", description = "13"},
            {label = "14", value = "14", description = "14"},
            {label = "15", value = "15", description = "15"},
            {label = "16", value = "16", description = "16"},
            {label = "17", value = "17", description = "17"},
            {label = "18", value = "18", description = "18"},
            {label = "19", value = "19", description = "19"},
            {label = "20", value = "20", description = "20"},
            {label = "21", value = "21", description = "21"},
            {label = "22", value = "22", description = "22"},
            {label = "23", value = "23", description = "23"},
            {label = "24", value = "24", description = "24"},
            {label = "25", value = "25", description = "25"},
            {label = "26", value = "26", description = "26"},
            {label = "27", value = "27", description = "27"},
            {label = "28", value = "28", description = "28"},
            {label = "29", value = "29", description = "29"},
            {label = "30", value = "30", description = "30"},
            {label = "31", value = "31", description = "31"},
            {label = "32", value = "32", description = "32"},
            {label = "33", value = "33", description = "33"},
            {label = "34", value = "34", description = "34"},
            {label = "35", value = "35", description = "35"},
            {label = "36", value = "36", description = "36"},
            {label = "37", value = "37", description = "37"},
            {label = "38", value = "38", description = "38"},
            {label = "39", value = "39", description = "39"},
            {label = "40", value = "40", description = "40"},
            {label = "41", value = "41", description = "41"},
            {label = "42", value = "42", description = "42"},
            {label = "43", value = "43", description = "43"},
            {label = "44", value = "44", description = "44"},
            {label = "45", value = "45", description = "45"},
            {label = "46", value = "46", description = "46"},
            {label = "47", value = "47", description = "47"},
            {label = "48", value = "48", description = "48"},
            {label = "49", value = "49", description = "49"},
            {label = "50", value = "50", description = "50"},
            {label = "51", value = "51", description = "51"},
            {label = "52", value = "52", description = "52"},
            {label = "53", value = "53", description = "53"},
            {label = "54", value = "54", description = "54"},
            {label = "55", value = "55", description = "55"},
            {label = "56", value = "56", description = "56"},
            {label = "57", value = "57", description = "57"},
            {label = "58", value = "58", description = "58"},
            {label = "59", value = "59", description = "59"},
            {label = "60", value = "60", description = "60"},
            {label = "61", value = "61", description = "61"},
            {label = "62", value = "62", description = "62"},
            {label = "63", value = "63", description = "63"},
            {label = "64", value = "64", description = "64"},
            {label = "65", value = "65", description = "65"},
            {label = "66", value = "66", description = "66"},
            {label = "67", value = "67", description = "67"},
            {label = "68", value = "68", description = "68"},
            {label = "69", value = "69", description = "69"},
            {label = "70", value = "70", description = "70"},
            {label = "71", value = "71", description = "71"},
            {label = "72", value = "72", description = "72"},
            {label = "73", value = "73", description = "73"},
            {label = "74", value = "74", description = "74"},
            {label = "75", value = "75", description = "75"},
            {label = "76", value = "76", description = "76"},
            {label = "77", value = "77", description = "77"},
            {label = "78", value = "78", description = "78"},
            {label = "79", value = "79", description = "79"},
            {label = "80", value = "80", description = "80"},
            {label = "81", value = "81", description = "81"},
            {label = "82", value = "82", description = "82"},
            {label = "83", value = "83", description = "83"},
            {label = "84", value = "84", description = "84"},
            {label = "85", value = "85", description = "85"},
            {label = "86", value = "86", description = "86"},
            {label = "87", value = "87", description = "87"},
            {label = "88", value = "88", description = "88"},
            {label = "89", value = "89", description = "89"},
            {label = "90", value = "90", description = "90"},
            {label = "91", value = "91", description = "91"},
            {label = "92", value = "92", description = "92"},
            {label = "93", value = "93", description = "93"},
            {label = "94", value = "94", description = "94"},
            {label = "95", value = "95", description = "95"},
            {label = "96", value = "96", description = "96"},
            {label = "97", value = "97", description = "97"},
            {label = "98", value = "98", description = "98"},
            {label = "99", value = "99", description = "99"}
        }
    }
)
local number2 =
    lotterypick2:AddSlider(
    {
        icon = "💰",
        label = "Number 2",
        value = "2",
        values = {
            {label = "1", value = "1", description = "1"},
            {label = "2", value = "2", description = "2"},
            {label = "3", value = "3", description = "3"},
            {label = "4", value = "4", description = "4"},
            {label = "5", value = "5", description = "5"},
            {label = "6", value = "6", description = "6"},
            {label = "7", value = "7", description = "7"},
            {label = "8", value = "8", description = "8"},
            {label = "9", value = "9", description = "9"},
            {label = "10", value = "10", description = "10"},
            {label = "11", value = "11", description = "11"},
            {label = "12", value = "12", description = "12"},
            {label = "13", value = "13", description = "13"},
            {label = "14", value = "14", description = "14"},
            {label = "15", value = "15", description = "15"},
            {label = "16", value = "16", description = "16"},
            {label = "17", value = "17", description = "17"},
            {label = "18", value = "18", description = "18"},
            {label = "19", value = "19", description = "19"},
            {label = "20", value = "20", description = "20"},
            {label = "21", value = "21", description = "21"},
            {label = "22", value = "22", description = "22"},
            {label = "23", value = "23", description = "23"},
            {label = "24", value = "24", description = "24"},
            {label = "25", value = "25", description = "25"},
            {label = "26", value = "26", description = "26"},
            {label = "27", value = "27", description = "27"},
            {label = "28", value = "28", description = "28"},
            {label = "29", value = "29", description = "29"},
            {label = "30", value = "30", description = "30"},
            {label = "31", value = "31", description = "31"},
            {label = "32", value = "32", description = "32"},
            {label = "33", value = "33", description = "33"},
            {label = "34", value = "34", description = "34"},
            {label = "35", value = "35", description = "35"},
            {label = "36", value = "36", description = "36"},
            {label = "37", value = "37", description = "37"},
            {label = "38", value = "38", description = "38"},
            {label = "39", value = "39", description = "39"},
            {label = "40", value = "40", description = "40"},
            {label = "41", value = "41", description = "41"},
            {label = "42", value = "42", description = "42"},
            {label = "43", value = "43", description = "43"},
            {label = "44", value = "44", description = "44"},
            {label = "45", value = "45", description = "45"},
            {label = "46", value = "46", description = "46"},
            {label = "47", value = "47", description = "47"},
            {label = "48", value = "48", description = "48"},
            {label = "49", value = "49", description = "49"},
            {label = "50", value = "50", description = "50"},
            {label = "51", value = "51", description = "51"},
            {label = "52", value = "52", description = "52"},
            {label = "53", value = "53", description = "53"},
            {label = "54", value = "54", description = "54"},
            {label = "55", value = "55", description = "55"},
            {label = "56", value = "56", description = "56"},
            {label = "57", value = "57", description = "57"},
            {label = "58", value = "58", description = "58"},
            {label = "59", value = "59", description = "59"},
            {label = "60", value = "60", description = "60"},
            {label = "61", value = "61", description = "61"},
            {label = "62", value = "62", description = "62"},
            {label = "63", value = "63", description = "63"},
            {label = "64", value = "64", description = "64"},
            {label = "65", value = "65", description = "65"},
            {label = "66", value = "66", description = "66"},
            {label = "67", value = "67", description = "67"},
            {label = "68", value = "68", description = "68"},
            {label = "69", value = "69", description = "69"},
            {label = "70", value = "70", description = "70"},
            {label = "71", value = "71", description = "71"},
            {label = "72", value = "72", description = "72"},
            {label = "73", value = "73", description = "73"},
            {label = "74", value = "74", description = "74"},
            {label = "75", value = "75", description = "75"},
            {label = "76", value = "76", description = "76"},
            {label = "77", value = "77", description = "77"},
            {label = "78", value = "78", description = "78"},
            {label = "79", value = "79", description = "79"},
            {label = "80", value = "80", description = "80"},
            {label = "81", value = "81", description = "81"},
            {label = "82", value = "82", description = "82"},
            {label = "83", value = "83", description = "83"},
            {label = "84", value = "84", description = "84"},
            {label = "85", value = "85", description = "85"},
            {label = "86", value = "86", description = "86"},
            {label = "87", value = "87", description = "87"},
            {label = "88", value = "88", description = "88"},
            {label = "89", value = "89", description = "89"},
            {label = "90", value = "90", description = "90"},
            {label = "91", value = "91", description = "91"},
            {label = "92", value = "92", description = "92"},
            {label = "93", value = "93", description = "93"},
            {label = "94", value = "94", description = "94"},
            {label = "95", value = "95", description = "95"},
            {label = "96", value = "96", description = "96"},
            {label = "97", value = "97", description = "97"},
            {label = "98", value = "98", description = "98"},
            {label = "99", value = "99", description = "99"}
        }
    }
)
local number3 =
    lotterypick3:AddSlider(
    {
        icon = "💰",
        label = "Number 3",
        value = "3",
        values = {
            {label = "1", value = "1", description = "1"},
            {label = "2", value = "2", description = "2"},
            {label = "3", value = "3", description = "3"},
            {label = "4", value = "4", description = "4"},
            {label = "5", value = "5", description = "5"},
            {label = "6", value = "6", description = "6"},
            {label = "7", value = "7", description = "7"},
            {label = "8", value = "8", description = "8"},
            {label = "9", value = "9", description = "9"},
            {label = "10", value = "10", description = "10"},
            {label = "11", value = "11", description = "11"},
            {label = "12", value = "12", description = "12"},
            {label = "13", value = "13", description = "13"},
            {label = "14", value = "14", description = "14"},
            {label = "15", value = "15", description = "15"},
            {label = "16", value = "16", description = "16"},
            {label = "17", value = "17", description = "17"},
            {label = "18", value = "18", description = "18"},
            {label = "19", value = "19", description = "19"},
            {label = "20", value = "20", description = "20"},
            {label = "21", value = "21", description = "21"},
            {label = "22", value = "22", description = "22"},
            {label = "23", value = "23", description = "23"},
            {label = "24", value = "24", description = "24"},
            {label = "25", value = "25", description = "25"},
            {label = "26", value = "26", description = "26"},
            {label = "27", value = "27", description = "27"},
            {label = "28", value = "28", description = "28"},
            {label = "29", value = "29", description = "29"},
            {label = "30", value = "30", description = "30"},
            {label = "31", value = "31", description = "31"},
            {label = "32", value = "32", description = "32"},
            {label = "33", value = "33", description = "33"},
            {label = "34", value = "34", description = "34"},
            {label = "35", value = "35", description = "35"},
            {label = "36", value = "36", description = "36"},
            {label = "37", value = "37", description = "37"},
            {label = "38", value = "38", description = "38"},
            {label = "39", value = "39", description = "39"},
            {label = "40", value = "40", description = "40"},
            {label = "41", value = "41", description = "41"},
            {label = "42", value = "42", description = "42"},
            {label = "43", value = "43", description = "43"},
            {label = "44", value = "44", description = "44"},
            {label = "45", value = "45", description = "45"},
            {label = "46", value = "46", description = "46"},
            {label = "47", value = "47", description = "47"},
            {label = "48", value = "48", description = "48"},
            {label = "49", value = "49", description = "49"},
            {label = "50", value = "50", description = "50"},
            {label = "51", value = "51", description = "51"},
            {label = "52", value = "52", description = "52"},
            {label = "53", value = "53", description = "53"},
            {label = "54", value = "54", description = "54"},
            {label = "55", value = "55", description = "55"},
            {label = "56", value = "56", description = "56"},
            {label = "57", value = "57", description = "57"},
            {label = "58", value = "58", description = "58"},
            {label = "59", value = "59", description = "59"},
            {label = "60", value = "60", description = "60"},
            {label = "61", value = "61", description = "61"},
            {label = "62", value = "62", description = "62"},
            {label = "63", value = "63", description = "63"},
            {label = "64", value = "64", description = "64"},
            {label = "65", value = "65", description = "65"},
            {label = "66", value = "66", description = "66"},
            {label = "67", value = "67", description = "67"},
            {label = "68", value = "68", description = "68"},
            {label = "69", value = "69", description = "69"},
            {label = "70", value = "70", description = "70"},
            {label = "71", value = "71", description = "71"},
            {label = "72", value = "72", description = "72"},
            {label = "73", value = "73", description = "73"},
            {label = "74", value = "74", description = "74"},
            {label = "75", value = "75", description = "75"},
            {label = "76", value = "76", description = "76"},
            {label = "77", value = "77", description = "77"},
            {label = "78", value = "78", description = "78"},
            {label = "79", value = "79", description = "79"},
            {label = "80", value = "80", description = "80"},
            {label = "81", value = "81", description = "81"},
            {label = "82", value = "82", description = "82"},
            {label = "83", value = "83", description = "83"},
            {label = "84", value = "84", description = "84"},
            {label = "85", value = "85", description = "85"},
            {label = "86", value = "86", description = "86"},
            {label = "87", value = "87", description = "87"},
            {label = "88", value = "88", description = "88"},
            {label = "89", value = "89", description = "89"},
            {label = "90", value = "90", description = "90"},
            {label = "91", value = "91", description = "91"},
            {label = "92", value = "92", description = "92"},
            {label = "93", value = "93", description = "93"},
            {label = "94", value = "94", description = "94"},
            {label = "95", value = "95", description = "95"},
            {label = "96", value = "96", description = "96"},
            {label = "97", value = "97", description = "97"},
            {label = "98", value = "98", description = "98"},
            {label = "99", value = "99", description = "99"}
        }
    }
)
local number4 =
    lotterypick4:AddSlider(
    {
        icon = "💰",
        label = "Number 4",
        value = "4",
        values = {
            {label = "1", value = "1", description = "1"},
            {label = "2", value = "2", description = "2"},
            {label = "3", value = "3", description = "3"},
            {label = "4", value = "4", description = "4"},
            {label = "5", value = "5", description = "5"},
            {label = "6", value = "6", description = "6"},
            {label = "7", value = "7", description = "7"},
            {label = "8", value = "8", description = "8"},
            {label = "9", value = "9", description = "9"},
            {label = "10", value = "10", description = "10"},
            {label = "11", value = "11", description = "11"},
            {label = "12", value = "12", description = "12"},
            {label = "13", value = "13", description = "13"},
            {label = "14", value = "14", description = "14"},
            {label = "15", value = "15", description = "15"},
            {label = "16", value = "16", description = "16"},
            {label = "17", value = "17", description = "17"},
            {label = "18", value = "18", description = "18"},
            {label = "19", value = "19", description = "19"},
            {label = "20", value = "20", description = "20"},
            {label = "21", value = "21", description = "21"},
            {label = "22", value = "22", description = "22"},
            {label = "23", value = "23", description = "23"},
            {label = "24", value = "24", description = "24"},
            {label = "25", value = "25", description = "25"},
            {label = "26", value = "26", description = "26"},
            {label = "27", value = "27", description = "27"},
            {label = "28", value = "28", description = "28"},
            {label = "29", value = "29", description = "29"},
            {label = "30", value = "30", description = "30"},
            {label = "31", value = "31", description = "31"},
            {label = "32", value = "32", description = "32"},
            {label = "33", value = "33", description = "33"},
            {label = "34", value = "34", description = "34"},
            {label = "35", value = "35", description = "35"},
            {label = "36", value = "36", description = "36"},
            {label = "37", value = "37", description = "37"},
            {label = "38", value = "38", description = "38"},
            {label = "39", value = "39", description = "39"},
            {label = "40", value = "40", description = "40"},
            {label = "41", value = "41", description = "41"},
            {label = "42", value = "42", description = "42"},
            {label = "43", value = "43", description = "43"},
            {label = "44", value = "44", description = "44"},
            {label = "45", value = "45", description = "45"},
            {label = "46", value = "46", description = "46"},
            {label = "47", value = "47", description = "47"},
            {label = "48", value = "48", description = "48"},
            {label = "49", value = "49", description = "49"},
            {label = "50", value = "50", description = "50"},
            {label = "51", value = "51", description = "51"},
            {label = "52", value = "52", description = "52"},
            {label = "53", value = "53", description = "53"},
            {label = "54", value = "54", description = "54"},
            {label = "55", value = "55", description = "55"},
            {label = "56", value = "56", description = "56"},
            {label = "57", value = "57", description = "57"},
            {label = "58", value = "58", description = "58"},
            {label = "59", value = "59", description = "59"},
            {label = "60", value = "60", description = "60"},
            {label = "61", value = "61", description = "61"},
            {label = "62", value = "62", description = "62"},
            {label = "63", value = "63", description = "63"},
            {label = "64", value = "64", description = "64"},
            {label = "65", value = "65", description = "65"},
            {label = "66", value = "66", description = "66"},
            {label = "67", value = "67", description = "67"},
            {label = "68", value = "68", description = "68"},
            {label = "69", value = "69", description = "69"},
            {label = "70", value = "70", description = "70"},
            {label = "71", value = "71", description = "71"},
            {label = "72", value = "72", description = "72"},
            {label = "73", value = "73", description = "73"},
            {label = "74", value = "74", description = "74"},
            {label = "75", value = "75", description = "75"},
            {label = "76", value = "76", description = "76"},
            {label = "77", value = "77", description = "77"},
            {label = "78", value = "78", description = "78"},
            {label = "79", value = "79", description = "79"},
            {label = "80", value = "80", description = "80"},
            {label = "81", value = "81", description = "81"},
            {label = "82", value = "82", description = "82"},
            {label = "83", value = "83", description = "83"},
            {label = "84", value = "84", description = "84"},
            {label = "85", value = "85", description = "85"},
            {label = "86", value = "86", description = "86"},
            {label = "87", value = "87", description = "87"},
            {label = "88", value = "88", description = "88"},
            {label = "89", value = "89", description = "89"},
            {label = "90", value = "90", description = "90"},
            {label = "91", value = "91", description = "91"},
            {label = "92", value = "92", description = "92"},
            {label = "93", value = "93", description = "93"},
            {label = "94", value = "94", description = "94"},
            {label = "95", value = "95", description = "95"},
            {label = "96", value = "96", description = "96"},
            {label = "97", value = "97", description = "97"},
            {label = "98", value = "98", description = "98"},
            {label = "99", value = "99", description = "99"}
        }
    }
)
local number5 =
    lotterypick5:AddSlider(
    {
        icon = "💰",
        label = "Number 5",
        value = "5",
        values = {
            {label = "1", value = "1", description = "1"},
            {label = "2", value = "2", description = "2"},
            {label = "3", value = "3", description = "3"},
            {label = "4", value = "4", description = "4"},
            {label = "5", value = "5", description = "5"},
            {label = "6", value = "6", description = "6"},
            {label = "7", value = "7", description = "7"},
            {label = "8", value = "8", description = "8"},
            {label = "9", value = "9", description = "9"},
            {label = "10", value = "10", description = "10"},
            {label = "11", value = "11", description = "11"},
            {label = "12", value = "12", description = "12"},
            {label = "13", value = "13", description = "13"},
            {label = "14", value = "14", description = "14"},
            {label = "15", value = "15", description = "15"},
            {label = "16", value = "16", description = "16"},
            {label = "17", value = "17", description = "17"},
            {label = "18", value = "18", description = "18"},
            {label = "19", value = "19", description = "19"},
            {label = "20", value = "20", description = "20"},
            {label = "21", value = "21", description = "21"},
            {label = "22", value = "22", description = "22"},
            {label = "23", value = "23", description = "23"},
            {label = "24", value = "24", description = "24"},
            {label = "25", value = "25", description = "25"},
            {label = "26", value = "26", description = "26"},
            {label = "27", value = "27", description = "27"},
            {label = "28", value = "28", description = "28"},
            {label = "29", value = "29", description = "29"},
            {label = "30", value = "30", description = "30"},
            {label = "31", value = "31", description = "31"},
            {label = "32", value = "32", description = "32"},
            {label = "33", value = "33", description = "33"},
            {label = "34", value = "34", description = "34"},
            {label = "35", value = "35", description = "35"},
            {label = "36", value = "36", description = "36"},
            {label = "37", value = "37", description = "37"},
            {label = "38", value = "38", description = "38"},
            {label = "39", value = "39", description = "39"},
            {label = "40", value = "40", description = "40"},
            {label = "41", value = "41", description = "41"},
            {label = "42", value = "42", description = "42"},
            {label = "43", value = "43", description = "43"},
            {label = "44", value = "44", description = "44"},
            {label = "45", value = "45", description = "45"},
            {label = "46", value = "46", description = "46"},
            {label = "47", value = "47", description = "47"},
            {label = "48", value = "48", description = "48"},
            {label = "49", value = "49", description = "49"},
            {label = "50", value = "50", description = "50"},
            {label = "51", value = "51", description = "51"},
            {label = "52", value = "52", description = "52"},
            {label = "53", value = "53", description = "53"},
            {label = "54", value = "54", description = "54"},
            {label = "55", value = "55", description = "55"},
            {label = "56", value = "56", description = "56"},
            {label = "57", value = "57", description = "57"},
            {label = "58", value = "58", description = "58"},
            {label = "59", value = "59", description = "59"},
            {label = "60", value = "60", description = "60"},
            {label = "61", value = "61", description = "61"},
            {label = "62", value = "62", description = "62"},
            {label = "63", value = "63", description = "63"},
            {label = "64", value = "64", description = "64"},
            {label = "65", value = "65", description = "65"},
            {label = "66", value = "66", description = "66"},
            {label = "67", value = "67", description = "67"},
            {label = "68", value = "68", description = "68"},
            {label = "69", value = "69", description = "69"},
            {label = "70", value = "70", description = "70"},
            {label = "71", value = "71", description = "71"},
            {label = "72", value = "72", description = "72"},
            {label = "73", value = "73", description = "73"},
            {label = "74", value = "74", description = "74"},
            {label = "75", value = "75", description = "75"},
            {label = "76", value = "76", description = "76"},
            {label = "77", value = "77", description = "77"},
            {label = "78", value = "78", description = "78"},
            {label = "79", value = "79", description = "79"},
            {label = "80", value = "80", description = "80"},
            {label = "81", value = "81", description = "81"},
            {label = "82", value = "82", description = "82"},
            {label = "83", value = "83", description = "83"},
            {label = "84", value = "84", description = "84"},
            {label = "85", value = "85", description = "85"},
            {label = "86", value = "86", description = "86"},
            {label = "87", value = "87", description = "87"},
            {label = "88", value = "88", description = "88"},
            {label = "89", value = "89", description = "89"},
            {label = "90", value = "90", description = "90"},
            {label = "91", value = "91", description = "91"},
            {label = "92", value = "92", description = "92"},
            {label = "93", value = "93", description = "93"},
            {label = "94", value = "94", description = "94"},
            {label = "95", value = "95", description = "95"},
            {label = "96", value = "96", description = "96"},
            {label = "97", value = "97", description = "97"},
            {label = "98", value = "98", description = "98"},
            {label = "99", value = "99", description = "99"}
        }
    }
)

confirm:On(
    "confirm",
    function(item)
        quickpick()
    end
)
confirm:On(
    "deny",
    function(item)
        lotterypickQ:Close()
    end
)

confirm1:On(
    "confirm",
    function(item)
        TriggerEvent("lottery:passinfo")

        MenuV:OpenMenu(
            lotterystart,
            function()
            end
        )
    end
)
confirm1:On(
    "deny",
    function(item)
        MenuV:OpenMenu(
            lotterystart,
            function()
            end
        )
    end
)
number1:On(
    "select",
    function(item, value)
        pickone = {}
        table.insert(pickone, value)
        Notify("Number one chosen, " .. value)
        MenuV:OpenMenu(
            lotterypick2,
            function()
            end
        )
    end
)
number2:On(
    "select",
    function(item, value)
        picktwo = {}
        table.insert(picktwo, value)
        Notify("Number two chosen, " .. value)
        MenuV:OpenMenu(
            lotterypick3,
            function()
            end
        )
    end
)
number3:On(
    "select",
    function(item, value)
        pickthree = {}
        table.insert(pickthree, value)
        Notify("Number three chosen, " .. value)
        MenuV:OpenMenu(
            lotterypick4,
            function()
            end
        )
    end
)
number4:On(
    "select",
    function(item, value)
        pickfour = {}
        table.insert(pickfour, value)
        Notify("Number four chosen, " .. value)
        MenuV:OpenMenu(
            lotterypick5,
            function()
            end
        )
    end
)
number5:On(
    "select",
    function(item, value)
        pickfive = {}
        table.insert(pickfive, value)
        Notify("Number five chosen, " .. value)
        print("last number chosen")
        MenuV:OpenMenu(
            lotterypickconfirm,
            function()
            end
        )
    end
)

function quickpick()
    local num1 = math.random(99)
    local num2 = math.random(99)
    local num3 = math.random(99)
    local num4 = math.random(99)
    local num5 = math.random(99)
    TriggerServerEvent("lottery:passtoserver", num1, num2, num3, num4, num5)
    lotterypickQ:Close()
end

Notify = function(text, timer)
    if timer == nil then
        timer = 5000
    end
    exports["mythic_notify"]:DoCustomHudText("inform", text, timer)
    -- exports.pNotify:SendNotification({layout = 'centerLeft', text = text, type = 'error', timeout = timer})
    --ESX.ShowNotification(text)
end

function dump(o)
    if type(o) == "table" then
        local s = "{ "
        for k, v in pairs(o) do
            if type(k) ~= "number" then
                k = '"' .. k .. '"'
            end
            s = s .. "[" .. k .. "] = " .. dump(v) .. ","
        end
        return s .. "} "
    else
        return tostring(o)
    end
end

RegisterCommand(
    "tabletest",
    function(source, args, raw)
        print(dump(pickone))
        print(dump(picktwo))
        print(dump(pickthree))
        print(dump(pickfour))
        print(dump(pickfive))
    end,
    false
)

RegisterNetEvent("lottery:passinfo")
AddEventHandler(
    "lottery:passinfo",
    function()
        for i = 1, #pickone do
            local result1 = pickone[i]

            for i = 1, #picktwo do
                local result2 = picktwo[i]

                for i = 1, #pickthree do
                    local result3 = pickthree[i]

                    for i = 1, #pickfour do
                        local result4 = pickfour[i]

                        for i = 1, #pickfive do
                            local result5 = pickfive[i]

                            TriggerServerEvent("lottery:passtoserver", result1, result2, result3, result4, result5)
                        end
                    end
                end
            end
        end
    end
)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(8)
            local pos = GetEntityCoords(PlayerPedId(), true)
            local sleep = true
            for k, v in pairs(Config.Locations) do
                local distance = #(pos - v)
                if distance < 1 then
                    sleep = false
                    Draw3DText(v.x, v.y, v.z, "Press E to join the lottery")
                    if IsControlJustReleased(0, 51) and distance < 1 then
                        MenuV:OpenMenu(
                            lotterystart,
                            function()
                            end
                        )
                    end
                end
            end
        end
    end
)

function Draw3DText(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function Initialize(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end
    PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieFunctionParameterString("Lottery being drawn in..")
    PushScaleformMovieFunctionParameterString(announcestring)
    PopScaleformMovieFunctionVoid()
    return scaleform
end
RegisterNetEvent("announce")
announcestring = false
AddEventHandler(
    "announce",
    function(msg)
        announcestring = msg
        PlaySoundFrontend(-1, "Timer_10s", "DLC_HALLOWEEN_FVJ_Sounds", 1)
        Citizen.Wait(lastfor * 1000)
        announcestring = false
    end
)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(0)
            if announcestring then
                scaleform = Initialize("mp_big_message_freemode")
                DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255, 0)
            end
        end
    end
)
