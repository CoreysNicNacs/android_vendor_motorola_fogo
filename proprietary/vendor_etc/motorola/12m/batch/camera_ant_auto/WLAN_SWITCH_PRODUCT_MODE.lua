-- Set FTM mode
local mode = ftm_send('4B0F0000'):gsub(' ', '')

if mode:len() < 18 or mode:sub(17, 18) ~= '01' then
    ftm_send('290300')
    delay(1000)
end

tcmd_send('0C1F00010001')

delay(2000)