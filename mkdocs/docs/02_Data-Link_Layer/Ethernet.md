# Ethernet

Das Ethernet Protokol ist eine Familie von kabelgebundenen Technologien und wurde 1980 unter dem IEEE Standard IEEE802.3 festgelegt. Ethernet wurde über die Jahre immer weiterentwickelt um schnellere Übertragungen zu ermöglichen, längere Distanzen zu überbrücken um das darunterliegenden Twisted Pair Kabel besser ausnützen zu können oder einfachere Mehrverbindungen zuzulassen. In der Zeit ist aber Ethernet immer abwärtskompatibel zu deren älteren Definitionen gehalten worden.

Das originale [10BASE5](https://en.wikipedia.org/wiki/10BASE5) wurde damals mit dicken Koaxialkabeln betrieben und nach kurzer Zeit durch Twisted Pair und Optischen Kabeln ersetzt. In den letzten Jahren wurde Ethernet soweit entwickelt, dass bis zu 400Gbit/s übertragen werden können. 

Ethernet beschreibt mehrere Verkabelungs- und Signalisierungsvarianten und definiert sich über das OSI-Model über die ersten 2 Schichten und wird in diesem Bericht auf Layer 2 genauer betrachtet.


## Ethernet Frame

Ethernet arbeitet auf der 2 OSI-Layer Schicht und verarbeitet üblicherweise Frames. Ethernet Frames sind die letzte logische Einheit bevor diese Daten dann schlussendlich zu Bit verarbeitet wird beim Senden. beim Empfangen werden die Bits wieder zu einem Frame zusammengesetzt. Ein Frame besteht aus einem sogenannten Header, die Kopfzeile eines Frames und den eigentlichen zugrundeliegenden Daten. Am Ende des Frames wird noch eine CRC Checksume angereiht und um sicherzustellen, dass keine Fehler bei der Übertragung passiert sind. Wir gehen in [CRC Checksumme](#crc-checksumme) näher darauf ein. 

![Ethernet Frame](https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Ethernet_Type_II_Frame_format.svg/700px-Ethernet_Type_II_Frame_format.svg.png)

## Headers

Headers sind die Kopfzeile eines jeden Ethernet Frames. Darin stehen alle Addressinformationen die nötig sind um einem Switch zu sagen von wo und wohin ein Frame übertragen werden sollte. Folgende Einträge im Header definieren hauptsächlich die Hauptbestandteile des Headers

### Destination MAC Adresse

Dieses Feld hält den Wert der Mac-Adresse des Empfängergeräts bei sich. 

### Source MAC Adresse

Dieses Feld hält den Wert der Mac-Adresse des Absendergeräts bei sich.

### EtherType

Beschreibt mit einem vordefinierten Wert den Inhalt des überliegenden Protokols auf Layer 3. In einem reinen TCP/IP IP-Netzwerk wird dass meistens IPv4 sein. Der Wert für IPv4 in einem EtherType Feld wäre zum Beispiel 0x0800. 

Das Ethertype Feld dient dazu, das nächste übergeordnete Protokoll zu beschreiben, damit das ausgekapselte Paket an die richtige Protokolverarbeitung gelangt. Im Falle von IPv4 wird das ausgekapselte IP-Paket an die ÎP-Verarbeitungsschicht im Rechner weiterübergeben.

### Daten

Daten sind in diesem Fall das IP-Paket. Das Ethernet-Frame befasst sich nicht mit den darüberliegenden Daten. In den meisten Fällen sind das IP-Pakete, kann aber auch jedes andere Layer-3 Protokol sein.

### CRC Checksumme

Am Ende nach den Daten wird die Quersumme der Daten für die Checksumme ausgerechnet. Falls sich and den darunterliegenden Daten während der Übertragung etwas verändert hätte, würde die Neuberechnung nicht derselben Quersumme entsprechen und auf einen Fehler bei der Übertragung hindeuten. So kann das Ethernetprotokoll eine Neuübertragung des Frames anfragen und sicherstellen, dass alle Frames eindeutig übertragen werden. Dies ist eine leichte Erklärung auf eine komplexe Lösung von CRC-Checksummen. 

> [!NOTE]- Trivia
> Im hintergrund läuft da noch mehr ab. Falls du mehr wissen möchtest kannst du gerne [hier](https://de.wikipedia.org/wiki/Zyklische_Redundanzpr%C3%BCfung) die bessere Erklärung lesen.