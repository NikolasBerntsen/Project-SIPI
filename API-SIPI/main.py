from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from database import conn

app = FastAPI()

# Modelos Pydantic
class Usuario(BaseModel):
    nombre: str
    email: str
    password: str

class Comentario(BaseModel):
    usuario_id: str
    texto: str

# Endpoints de Usuarios
@app.post("/usuarios/registro")
async def registrar_usuario(usuario: Usuario):
    query = """
    CREATE (u:Usuario {nombre: $nombre, email: $email, password: $password})
    RETURN u
    """
    try:
        result = conn.query(query, nombre=usuario.nombre, email=usuario.email, password=usuario.password)
        return {"usuario": result[0]["u"]}
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

@app.post("/usuarios/login")
async def login_usuario(email: str, password: str):
    query = """
    MATCH (u:Usuario {email: $email, password: $password})
    RETURN u
    """
    result = conn.query(query, email=email, password=password)
    if not result:
        raise HTTPException(status_code=404, detail="Usuario no encontrado o contraseña incorrecta")
    return {"usuario": result[0]["u"]}

@app.get("/usuarios/{id}")
async def obtener_perfil(id: str):
    query = """
    MATCH (u:Usuario) WHERE ID(u) = $id RETURN u
    """
    result = conn.query(query, id=int(id))
    if not result:
        raise HTTPException(status_code=404, detail="Usuario no encontrado")
    return {"usuario": result[0]["u"]}

# Endpoints de Comentarios
@app.post("/comentarios")
async def crear_comentario(comentario: Comentario):
    query = """
    MATCH (u:Usuario) WHERE ID(u) = $usuario_id
    CREATE (c:Comentario {texto: $texto})-[:HECHO_POR]->(u)
    RETURN c
    """
    try:
        result = conn.query(query, usuario_id=int(comentario.usuario_id), texto=comentario.texto)
        return {"comentario": result[0]["c"]}
    except Exception as e:
        raise HTTPException(status_code=400, detail=str(e))

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
