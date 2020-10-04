color = '#'
for i=1, 6 do
   hexDigit = math.random(0, 15)
   if hexDigit < 10 then
      color = color .. hexDigit
   else
      color = color .. string.sub('ABCDEF', hexDigit - 9, hexDigit - 9)
   end
end
print('Random 24bit rgb hex color: ' .. color)