from flask import Flask, render_template, request, redirect
app = Flask(__name__)  

@app.route('/')         
def index():
    return render_template("index.html")

@app.route('/checkout', methods=['POST'])         
def checkout():
    print(request.form)
    customer_name = request.form ['first_name'] + request.form ['last_name']
    count = int(request.form['apple'])+int(request.form['strawberry'])+int(request.form['raspberry'])
    print("-"*100)
    print(f"Charging {customer_name} for {count} fruits")
    print("-"*100)
    return render_template("checkout.html")

@app.route('/fruits')         
def fruits():
    return render_template("fruits.html")

if __name__=="__main__":   
    app.run(debug=True)    