f = open("D:\\2_Projekte\\Go\\CodeAdvent\\2015\\3\\input.txt", "r")
data = f.read()

def housesThatGotPresents():
    global data
    x = 0
    y = 0
    houses = { "0x0" : 1}
    for i in range(len(data)):
        if data[i] == "^":
            y -= 1
        elif data[i] == ">":
            x += 1
        elif data[i] == "v":
            y += 1
        elif data[i] == "<":
            x -= 1
        
        if f"{x}x{y}" in houses:
            houses[f"{x}x{y}"] = houses[f"{x}x{y}"] + 1
        else:
            houses[f"{x}x{y}"] = 1
    print(len(houses.keys()))

def housesThatGotPresentsWithRoboSanta():
    global data
    sx = 0
    sy = 0
    rsx = 0
    rsy = 0
    houses = { "0x0" : 1}
    for i in range(len(data)):
        if data[i] == "^":
            if (i+1) % 2 == 0:
                rsy -= 1
            else:
                sy -= 1
        elif data[i] == ">":
            if (i+1) % 2 == 0:
                rsx += 1
            else:
                sx += 1
        elif data[i] == "v":
            if (i+1) % 2 == 0:
                rsy += 1
            else:
                sy += 1
        elif data[i] == "<":
            if (i+1) % 2 == 0:
                rsx -= 1
            else:
                sx -= 1

        if (i+1) % 2 == 0:
            if f"{rsx}x{rsy}" in houses:
                houses[f"{rsx}x{rsy}"] = houses[f"{rsx}x{rsy}"] + 1
            else:
                houses[f"{rsx}x{rsy}"] = 1
        else:
            if f"{sx}x{sy}" in houses:
                houses[f"{sx}x{sy}"] = houses[f"{sx}x{sy}"] + 1
            else:
                houses[f"{sx}x{sy}"] = 1
    print(len(houses.keys()))

# housesThatGotPresents()
housesThatGotPresentsWithRoboSanta()