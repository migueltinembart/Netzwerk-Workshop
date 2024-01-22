# Internet Protocol

Das Internetprotokol ist das meistverbreitete Protokol unter den Netzwerkprotokollen und stellt somit die Grundlage für unser Internet dar. Durch das IP-Protokol wird die Übertragungs über weite gespannte Netzwerke vereinfacht und mit Rounting sichergestellt, dass IP-Pakete an die richtige Stelle weitergeleitet werden.

In einem IP-Netzwerk werden keine Frames, sondern Pakete gesendet. Dieser Ausdruck wird zur Unterscheidung der einzelnen Layer-Komponenten verwendet und somit wissen Netzwerkadministratoren auf Anhieb ob man von Switching- oder Routing-Thematiken redet. Das IP-Protokol gibt es in 2 Varianten und wird werden auf ersteres besonderen Wert legen. _IPv4_ und _IPv6_. IPv4 gibt es schon seit 1981 und ist bis jetzt immernoch weiter verbreitet als der jüngere Standard.

## Aufbau eines IP-Pakets

![Aufbau eines IP-Pakets](https://www.tutorialspoint.com/de/ipv4/images/ip_header.jpg)

Das IP-Paket ist in 2 Teile aufgeteilt. Den Header und den Payload. Der Header ist der Teil des Pakets, welcher die Informationen über das Paket beinhaltet. Der Payload ist der Teil des Pakets, welcher die Daten beinhaltet welche übertragen werden sollen.

### Version

Die Version gibt an, um welche Version des IP-Protokols es sich handelt.

### IHL

Das Internet Header Length (IHL) Feld beschreibt die Länge des Headers in 32 Bit Wörtern. Das heisst, wenn das IHL Feld den Wert 5 hat, dann ist die Länge des Headers 5x32 Bit gross.

### Type of Service

Das Type of Service Feld beschreibt die Art des Service. Dieses Feld wird heute nicht mehr verwendet und ist nur noch für Kompatibilitätszwecke vorhanden.

### Total Length

Das Total Length Feld beschreibt die Gesamtlänge des IP-Pakets. Das heisst, wenn das IP-Paket eine Gesamtlänge von 1500 Bytes hat, dann ist das Total Length Feld 1500 Bytes gross. Dieses Feld kennt man auch als Maximum Transmission Unit (MTU)

### Identification

Das Identification Feld beschreibt die Identifikation des IP-Pakets. Dieses Feld wird für die Fragmentierung und die Defragmentierung des Payloads verwendet. So können mehrere IP-Pakete wieder zusammengeführt werden, wenn alle angekommen sind.

### Flags

Das Flags Feld beschreibt den Status der Fragmentierung. Damit wird sichergestellt ob dieses Paket fragmentiert werden kann, oder ob dies das Ende des Fragments ist.

### Fragment Offset

Beschreibt die Position im Fragment und kennzeichnet die Positoon im orgininalen Paket.

### Time to Live

Das Time to Live Feld beschreibt die Lebensdauer des IP-Pakets. Wird verwendet um die Lebensdauer eines IP-Pakets festzustellen. So wird sichergestellt, dass IP-Pakete nicht unendlich lange weiterversendet werden. Bei jedem durchwandern eines IP-Pakets durch einen Router, wird dieser Wert um 1 verringert. wenn das Time To Live 0 erreicht, wird es vom empfangenen Router abgeworfen und nicht mehr weiterverarbeitet.

### Protocol

Das Protocol Feld beschreibt das darüberliegende Protokol. Das heisst, wenn ein IP-Paket an ein Gerät gesendet wird, muss dieses Gerät wissen, wie es das IP-Paket verarbeiten soll. Dafür wird das Protocol Feld verwendet. Meistens wird da ein Wert für TCP oder UDP verwendet.

### Header Checksum

Das Header Checksum Feld prüft wie bei einer CRC Checksumme die Richtigkeit eines IP-Pakets und kann bei einem Fehler, ein Wiedersenden des Pakets anfordern.

### Source und Destination Address

In den Source- und Destionationfeldern sind schliesslich die Sender und Empfängeradressen eingetragen. Diese helfen dem Router die IP-Pakete in die richtigen Subnetze weiterzuschicken. 