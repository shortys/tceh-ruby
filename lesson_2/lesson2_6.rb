string = "жыло-было шыбко шыпящее жывотное"

puts string.scan("шы")                                        #=> ["шы", "шы"]
puts string.scan("шы").size                                #=> 2
puts string.scan("жы").size                                #=> 2
puts string.scan("жы").size + string.scan("шы").size    #=> 4