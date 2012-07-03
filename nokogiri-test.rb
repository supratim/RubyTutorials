require 'rubygems'
require 'nokogiri'
require 'open-uri'

url ="http://www.licindia.in/plan_navs.htm"
value_on_launch=0.0
effective_value_today=0.0
sale_value_today=0.0

doc = Nokogiri::HTML(open(url))
doc.css(".plan_numbers").each do |item|
  s = item.at_css(".content").text
 
  if s.include?"20.12.2006"
    i=s.index("20.12.2006")
   
    
    s= s[i ,1200]
    i=s.index("BALANCED    FUND")
    s=s.strip[i,250]
    
    counter =1
    
    s.each_line { 
        |l|
        
        if ( counter == 2 )
          value_on_launch = l.strip.to_f
         
        end
        if (counter == 4)  
          effective_value_today  = l.strip.to_f
         
        end
        if (counter == 5)
          sale_value_today = l.strip.to_f
       
        end
        counter= counter+1
        
        }
    
        puts " The NAV value of my investment in Money Plus "
        puts " on lunch date was Rs. #{value_on_launch}"
        puts " Effective value as of #{Date.today().to_s} is Rs. #{effective_value_today}"
        puts " Sale value  as of #{Date.today().to_s} is Rs. #{sale_value_today}"
    break
  else 
    puts 'not ok'
  end
  
   
end
