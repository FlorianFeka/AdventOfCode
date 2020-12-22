wrappingPaperNeeded = 0
ribbonNeeded = 0

for line in open('input.txt'):
    args = line.split('x')
    length, width, height = int(args[0]), int(args[1]), int(args[2])

    #Part 1
    sideAreas = [width*length, width*height, length*height]
    wrappingPaperNeeded += 2 * sum(sideAreas) + min(sideAreas)

    #Part 2
    volume = length * width * height
    ribbonNeeded += 2 * min(width+length, width+height, length+height) + volume

print( "\nBuying list")
print( "-----------")
print( "Square feets of wrapping paper:",wrappingPaperNeeded)
print( "Feets of ribbon needed:",ribbonNeeded)