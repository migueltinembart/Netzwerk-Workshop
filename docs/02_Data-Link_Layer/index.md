# Einleitung

Der Data-Link Layer ist die zweite Schicht im OSI-Modell und ist verantwortlich für die Übertragung von Datenpaketen von einem Knoten zum nächsten. Er stellt eine zuverlässige Verbindung zwischen zwei **direkt** verbundenen Netzwerkknoten her und ermöglicht die Kommunikation zwischen ihnen. Der Data-Link Layer ist in zwei Subschichten unterteilt: 

- Logical Link Control (LLC) und Media Access Control (MAC).
- Die LLC-Schicht ist verantwortlich für die Fehlerkontrolle, Flusskontrolle und Rahmen-Synchronisation.

Zusammen bieten beide Subschichten das Fundament für das Ethernet Protokol und werden im Kapitel [Ethernet](/02_Data-Link-Layer/Ethernet)

## Mac Schicht

Die MAC-Schicht ist verantwortlich für die Kontrolle des Zugriffs auf das gemeinsame Medium. Der Data-Link Layer verwendet Hardwareadressen (MAC-Adressen) zur Identifizierung von Geräten in einem Netzwerk. Er kann auch Fehlererkennung und -korrektur durchführen, um die Integrität der übertragenen Daten zu gewährleisten. Der Data-Link Layer ist auch für die Erstellung und Verarbeitung von Frames verantwortlich. Er ist der Vermittler zwischen dem physischen Layer, der sich mit den physischen Aspekten der Datenübertragung befasst, und dem Netzwerk-Layer, der sich mit der Datenrouting befasst. Insgesamt spielt der Data-Link Layer eine entscheidende Rolle bei der Bereitstellung einer zuverlässigen und effizienten Kommunikation zwischen Netzwerkknoten.

## LLC Schicht

Die Logical Link Control befasst sich mit den Apsekten der ordentlichen Bitübertragung in der direkten Verbindung. Sie stellt die Integrität der Datenübertragung her und verwaltet die Logik für verschiedene Übertragungsformen wie Multiplexing und Fehlerkorrekturen. 