# eur -> usd, usd -> eur, canadische usd -> usd, usd -> canadische usd
eurToUsd = 1.22
usdToEur = 0.82
usdToCan = 1.28
canToUsd = 0.78
print("Optionen:")
print("1 ) eur -> usd")
print("2 ) usd -> eur")
print("3 ) canadische usd -> usd")
print("4 ) usd -> canadische usd")
option = int(input("Welche umrechnung willst du: "))
betrag = float(input("Betrag: "))

if option == 1:
    print("eur -> usd")
    erg = betrag * eurToUsd
    print(erg)
elif option == 2:
    print("usd -> eur")
    erg = betrag * usdToEur
    print(erg)
elif option == 3:
    print("canadische usd -> usd")
    erg = betrag * canToUsd
    print(erg)
elif option == 4:
    print("usd -> canadische usd")
    erg = betrag * usdToCan
    print(erg)
else:
    print("Not a valid option!")
