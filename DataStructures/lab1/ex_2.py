print(" *** Wind classification ***")
speed = float(input("Enter wind speed (km/h) : "))
if(speed>=0 and speed <=51.99):
    print("Wind classification is Breeze.")
elif (speed <=55.99):
    print("Wind classification is Depression.")
elif (speed <=101.99):
    print("Wind classification is Tropical Storm.")
elif (speed <=208.99):
    print("Wind classification is Typhoon.")
else:
    print("Wind classification is Super Typhoon.")
