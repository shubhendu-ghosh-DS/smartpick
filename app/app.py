from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/product')
def product():
    product_id = request.args.get('product_id')
    appliance = request.args.get('appliance')
    return render_template('product_detail.html', product_id=product_id, appliance=appliance)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=7860, debug=True)
