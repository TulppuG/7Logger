local colors = {
    ['red'] = 16720402,
    ['green'] = 515594,
    ['yellow'] = 16757025,
    ['white'] = 16777215,
    ['black'] = 0,
    ['blue'] = 255,
    ['grey'] = 8421504,
    ['orange'] = 16753920,
    ['aqua'] = 1752220,
    ['darkAqua'] = 1146986,
    ['darkGreen'] = 2067276,
    ['darkBlue'] = 2123412,
    ['purple'] = 10181046,
    ['darkPurple'] = 7419530,
    ['luminousVividPink'] = 15277667,
    ['darkVividPink'] = 11342935,
    ['gold'] = 15844367,
    ['darkGold'] = 12745742,
    ['darkOrange'] = 11027200,
    ['darkRed'] = 10038562,
    ['darkGrey'] = 9936031,
    ['darkerGrey'] = 8359053,
    ['lightGrey'] = 12370112,
    ['navy'] = 3426654,
    ['darkNavy'] = 2899536,
}

exports('Log', function(webhook, title, fields, text, color, name)
    if not webhook then
        error("Caught an error while sending the log to discord, invalid webhook")
        return 
    end

    if type(fields) == 'string' then
        fields = {
            {
                name = "Information",
                value = fields,
                inline = true
            }
        }
    end

    PerformHttpRequest(
        webhook,
        function(err, text, headers)
             if err == 400 then
                 error('Caught an error while sending the log to discord')
                 return
             end
         end, 'POST',
         json.encode({
             username = name or "New log",
             embeds = {{
                 ['color'] = colors[color] or 515594,
                 ['title'] = title or 'New Log',
                 ['fields'] = fields,
                 ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%S'),
                 ['footer'] = {
                     ['text'] = text or '-'
                 }
             }}
         }), {
             ['Content-Type'] = 'application/json'
         }
     )
end)