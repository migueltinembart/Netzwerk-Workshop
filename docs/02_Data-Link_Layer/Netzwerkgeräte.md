# Netzwerkgeräte

in der zweiten Schicht kennt man heutzutage nciht mehr viele Geräte. Der Netzwerkswitch hat sich seit Jahren als die einzige Alternative erwiesen und bleibt bis heute die Kernkomponente für Ethernetbasierte Netzwerke. Trotzdem beschreibe ich hier noch ein paar namenhafte Komponenten aus der Frühzeit und wie Ethernet mit diesen Komponenten funktionierte und Lösungen gefunden wurde um auf den Stand eines Switches zu kommen.

# Repeaters und Hubs

![Repeater mit Koaxialeingang und Twister-Pair Verbindung](https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Network_card.jpg/330px-Network_card.jpg){align=right}
Ein Netzwerkhub oder ein Netzwerkrepeater wurde früher noch benötigt um mehrfache Verbindungen über eine Bus-Topologie zu realisieren. Dies hatte zum Vorteil, dass so mehrere Geräte mit weniger teuren Kabeln in einem Netzwerk eingebunden werden konnte. Doch die Netzwerkstörungen nahmen schnell zu wenn immer mehr Netzwerkkomponenten in das Netzwerk geschlauft wurde. Darum wurden Kerntechnologien für das Ethernet-Protokol entwickelt um die Qualität der Verbindungen zu verbessern.

Repeater sind protokolunabhängig und verarbeiten keine Pakete wie ein Switch, sondern verteilen auf allen Ports jedes übermittelte Signal aus, ausser an dem Port von welcher Netzwerkframes eingegangen sind.

Der Vorteil von Hubs war offentsichtlich. Zumal konnte man mehrere Netzwerkgeräte mit weniger Kabelaufwand verbinden. Doch dies war auch der einzige Vorteil der angeboten wurde. Frames welche nur an ein Gerät gesendet werden musste, sind auf allen Ports ausgestrahlt worden und die Technologie basierte auf Halb-Duplex. Das heisst es konnte nur ein Gerät zur selben Zeit senden und alle anderen Geräte mussten Frames welche nicht an sie gerichtet wurden, trotzdem verarbeiten und schlussendlich verwerfen.

Um die Kommunikation über einen Hub zu vereinfachen und keine Signalkollisionen zu verursachen, musste ein Mechanismus entwickelt werden der Signalkollisionen entdecken und umgehen kann. Dafür wurde CSMA/CD entwickelt.

## CSMA/CD

[Carrier Sense Multiple Access/Collision Detection](https://de.wikipedia.org/wiki/Carrier_Sense_Multiple_Access/Collision_Detection) bezeichnet ein asynchrones Medienzugriffsverhalten, dass den Zugriff verschiedener Stationen auf ein gemeinsames Übertragungsmedium regelt.

Damit mehrere Komponenten gleichzeitig senden und lauschen können musste ein Verfahren entwickelt werden, welches diese Handhabung regelt und standardisiert. Der Ablauf sieht insofern so aus:

**Schritt 1 Horchen: Überprüfe ob das Medium belegt ist**

Frei: => Weiter mit Schritt 2

Belegt: => Weiter mit Schritt 1

**Schritt 2 Senden: Während dem Abhören wird die Information auf das Medium übertragen**

   Erfolg: => Die Übertragung ist erfolgreich. Weiter mit Schritt 5

   Kollision: => Wird eine Kollision entdeckt, beendet die Komponente die Übertragung und sendet ein Jam-Signal welches alle Geräte informiert, dass eine Kollision stattgefunden hat. Weiter mit Schritt 3

**Schritt 3 Leitung ist belegt: Überprüfe die Anzahl der Übertragungsversuche**

   Maximum nicht erreicht: eine zufällige Backof-Zeit wird abgewartet. Weiter mit Schritt 1

   Maximux erreicht: Weiter mit Schritt 4

**Schritt 4 Fehler: Maximale Anzahl an Übertragunsversuchen wurde überschritten und ein Fehler wird an die übergeordnete Schicht (Layer 3) zurückgeschickt.**

Weiter mit Schritt 5

**Schritt 5** Übertragungsmodus beenden


# Switches

![Netzwerkswitches von Cisco](https://cdn.competec.ch/images2/3/9/0/56267093/56267093_xxl3.jpg){align=right width=400}
Switches sind die weiterentwicklung von Hubs und bieten nebst dem Komfort mehrere Geräte in ein Netzwerk aufzunehmen auch die Kapazizät mit dem Ethernet Protokol zu arbeiten. Switches funktionieren wahrlich auf der zweiten Schicht, d.h. der Switch kann gezielt Frames anhand der Quell- und Zieladresse die Datenpakete am richtigen Port raussenden, ohne dabei alle Ports mit Frames zu überschütten. Anders als bei einem Hub, sind bei Switches intelligente Komponenten eingebaut um die Verarbeitung von Daten schnell zu verarbeiten.

Seit der Erfindung des Switches im Vergleich zu den heutigen am Markt verfügbaren Geräten hat sich einiges geändert. Switches kommen mit Voll-Duplex hervorragend aus und haben sogar gelernt Verkabelungsfehler vorzeitig zu korrigieren. Wie zum Beispiel das zusammenstecken von 2 Switches mit einem nicht-Crossoverkabel führte früher zu Problemen, da Switches anders als Computer nicht über die gleichen Pins senden und empfangen. Heute einigen sich Switches selbstständig mit welchen Pins sie senden und empfangen wollen.

Switches können in verschienenen Arten und Formen auftauchen. Festverbaut oder modular in einem Chassis, mit RJ45 oder SFP+ Modulen zu Erweiterung von Schnittstellen oder auch mit direkter Spannungsversorgung mittels PoE.
