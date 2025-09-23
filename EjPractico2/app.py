from flask import Flask, render_template

app = Flask(__name__)
info_evento={
    1:{
        "nombre": "MTB rural",
        "organizador": "Club Social y Deportivo Unidos por el Deporte",
        "localidad": "Tandil, Buenos Aires",
        "fecha": "24 de octubre de 2025",
        "año": "2025",
        "horario": "8:00 AM",
        "tiulo_info_gen2": "INSCRIPCIONES ABIERTAS!",
        "recorrido_1": "30Km",
        "recorrido_2": "80Km",
    2:{
        "ausp1":"Adidas",
        "ausp2":"Assos",
        "ausp3":"Gatorade",
        "ausp4":"",
     }
    }

}
@app.route("/")
def index():
    
    return render_template('index.html', info_evento=info_evento)

@app.route("/registration")
def registration():
    
    return render_template('registration.html')
    
if __name__  == "__main__":
    app.run("127.0.0.1", port= "5002", debug=True)