def ftoc(farenheit)
    celsius = ((farenheit - 32) / 1.8).round()
end

def ctof(celsius)
    farenheit = ((celsius * (1.8)) + 32 ).round(1)
end