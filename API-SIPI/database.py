from neo4j import GraphDatabase

class Neo4jConnection:
    def __init__(self, uri, user, password):
        self._driver = GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self._driver.close()

    def query(self, query, parameters=None, **kwargs):
        with self._driver.session() as session:
            result = session.run(query, parameters, **kwargs)
            return [record for record in result]

# Configura tu conexión
conn = Neo4jConnection(uri="bolt://localhost:7687", user="Adminsipi", password="sipiPower")
