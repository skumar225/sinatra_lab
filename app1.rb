class Greeter
  def greet
  
  end

  def quote(tag)
  	  quotes = {
    :life => [
      "The best is yet to come.",
      "The best revenge is massive success."
    ],
    :love => [
      "....A simple I love you means more than money....",
      "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
    ]
  }

  [
    "<h2>Quotes matching tag: '#{tag}'</h2>", #Array with two string elements. One interpolating value of param
    "<ul>"
  ].concat(    
    quotes[tag.to_sym].map do |quote|   #Taking quotes hash, sorting parameters in tag, mapping for each quote to perform function, spits out quote in h3 format
      "<li><h3>#{quote}</h3></li>"
    end
  ).push("</ul>")  #push string onto end 
  end
end
