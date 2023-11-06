use context essentials2021
########################################################## 2b
#Kodeeksempel 2

include shared-gdrive(
             "dcic-2021",
             "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

########################################################## 2a
#Skriver inn kodeeksempel 1 og bruk sanitize for å få kolonnedata for kolonnen energi returnert som data av typen String

include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
  load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
  end


print(kWh-wealthy-consumer-data) 

########################################################### 2b
#Fullførte Kodeeksempel 3, og overfører data fra type String til type Number


fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where:
  energi-to-number("") is 0
  energi-to-number("30") is 30
  energi-to-number("37") is 37
  energi-to-number("5") is 5
  energi-to-number("4") is 4
  energi-to-number("15") is 15
  energi-to-number("48") is 48
  energi-to-number("12") is 12
  energi-to-number("4") is 4
end

########################################################### 2c
#Lagde mitt eget navn for tabellen "transform-tabel"

transform-table = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

print(transform-table)

########################################################### 2d
#Kopierte funksjon fra Github oppgave. Finner på tall og lager mine egne navn car-energy-per-day og total-energiforburk. Bruker sum funksjonen fra dcic-2021

distance-travelled-per-day = 40
distance-per-unit-of-fuel = 4
energy-per-unit-of-fuel = 10

car-energy-per-day = ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                        energy-per-unit-of-fuel
print(car-energy-per-day)

total-energiforbruk = sum(transform-table, "energi")
print(total-energiforbruk)

########################################################## 2e
#Bruker funksjon fra dcic-2021 pakken

bar-chart(transform-table, "komponent", "energi")