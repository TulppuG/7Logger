# 7Logger
This is a simple discord logger script for Fivem

exports.7Logger:Log(webhook, title, fields, text, color, username)

    Argument	Data Type	    Optional	Default Value	Explanation

    webhook	    string	        No 	        -	            Webhook link
    title	    string	        Yes	        New Log	        Webhook Title
    fields      table/string    No          -               Fields of the webhook (all of the information)
    text	    string	        Yes	        '-'	            Description of the log
    color	    string	        Yes     	Green	        Color of the webhook
    username    string          Yes         New log         Username of the log

Color options: 'red', 'green', 'yellow', 'white', 'black', 'blue', 'grey', 'orange', 'aqua', 'darkAqua', 'darkGreen', 'darkBlue', 'purple', 'darkPurple', 'luminousVividPink', 'darkVividPink', 'gold', 'darkGold', 'darkOrange', 'darkRed', 'darkGrey', 'darkerGrey', 'lightGrey', 'navy', 'darkNavy'

Example: 
exports.7Logger:Log(
    "https://discord.com/api/webhooks/1326621382909493350/a0Sd5pe0dJYHKdni5mUycUEQTJXPxBVxfLzwic-sxMhIbKwx9Wu4_IckJrbwf48qY1B0",
    "New robbery",
    {
        {
            name = 'Robbery Place',
            value = '`Legion Square`',
            inline = true
        },
        {
            name = 'Name of the robbed store',
            value = '```\n' .. source .. '```',
            inline = true
        }
    },
    "New alert",
    "aqua",
    "Robbery Alerts"
) 

Example 2 (fields data type string)

Example: exports.7Logger:Log(
    "https://discord.com/api/webhooks/1326621382909493350/a0Sd5pe0dJYHKdni5mUycUEQTJXPxBVxfLzwic-sxMhIbKwx9Wu4_IckJrbwf48qY1B0",
    "New robbery",
    "New robbery alert from Legion Square"
    "New alert",
    "aqua",
    "Robbery Alerts"
)


![image](https://github.com/user-attachments/assets/dc87661a-3e76-4232-bb25-dc7917401453)
