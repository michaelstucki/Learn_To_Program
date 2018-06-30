toc = []
toc.push("Table of Contents".center(40))
toc.push("Chapter 1: Getting Started".ljust(30) + "page 1".rjust(10))
toc.push("Chapter 2: Numbers".ljust(30) + "page 9".rjust(10))
toc.push("Chapter 3: Letters".ljust(30) + "page 13".rjust(10))

toc.each do |line|
  puts line
  puts ''
end

