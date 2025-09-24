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
        "ausp1": "Adidas",
        "ausp2": "Assos",
        "ausp3": "Gatorade",
        "ausp4": "Giro",
        "ausp5": "Topper",
        "ausp6": "Monster",
     }
    }

}
@app.route("/")
def index():
    sponsors = [
        {"img": "images/sponsor-adidas.png", "name": info_evento[1][2]['ausp1']},
        {"img": "images/sponsor-assos.png", "name": info_evento[1][2]['ausp2']},
        {"img": "images/sponsor-gatorade.png", "name": info_evento[1][2]['ausp3']},
        {"img": "images/sponsor-giro.png", "name": info_evento[1][2]['ausp4']},
        {"img": "images/sponsor-topper.png", "name": info_evento[1][2]['ausp5']},
        {"img": "images/monster_logo.png", "name": info_evento[1][2]['ausp6']}
    ]
    return render_template('index.html', info_evento=info_evento, sponsors=sponsors)

@app.route("/registration")
def registration():
    
    return render_template('registration.html')
    
if __name__  == "__main__":
    app.run("127.0.0.1", port= "5002", debug=True)