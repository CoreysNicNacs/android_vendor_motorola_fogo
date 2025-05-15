-- Set FTM mode
local mode = ftm_send('4B0F0000'):gsub(' ', '')

if mode:len() < 18 or mode:sub(17, 18) ~= '01' then
    ftm_send('290300')
    delay(1000)
end

tcmd_send('0C1F00010000')

delay(2000)

ftm_send_msm('4B0B160000004400000000000000000005000000020000000000000018000000FF0000000000000000000000450000007E77C70B01000000E40000001C5E834400000000')
