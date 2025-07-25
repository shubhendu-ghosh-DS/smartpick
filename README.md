
# SmartPick - User-Facing Recommendation UI

SmartPick is a clean, modern **Flask-based web UI** that helps users discover the best electronic appliances based on their preferences. It interacts with a backend engine ("PickEngine") to display appliances, filter products, and offer personalized recommendations.

---
# Live demo at [SmartPick](https://shubhendu-ghosh-smartpick.hf.space)

---

## 🧠 Features

- 🔍 **Appliance Selection:** Choose between various categories of appliances.
- 🎯 **Filtering Options:** Filter products by brand or sort by price (ascending/descending).
- 🤖 **Personalized Recommendations:** Click on any product to view similar recommended items.
- 💻 **Frontend:** Written in vanilla JavaScript, styled with CSS, and powered by Flask templates.
- 🧪 **Live Data:** Fetches appliance/product info from the PickEngine backend via REST APIs.

---

## 🗂️ Project Structure

```
smartpick/
├── app.py
├── templates/
│   ├── home.html
│   └── product_detail.html
├── static/
│   └── styles.css
├── requirements.txt
└── Dockerfile
```

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/smartpick.git
cd smartpick
```

### 2. Install Dependencies

```bash
pip install -r requirements.txt
```

### 3. Run the Application

```bash
python app.py
```

Access the app at: [http://localhost:7860](http://localhost:7860)


---

## 🧾 Sample Flask App (app.py)

```python
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
```

---

## 📦 Deployment (Hugging Face Spaces)

SmartPick is deployed as a Docker-based Hugging Face Space.

### Dockerfile

```dockerfile
FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
EXPOSE 7860
CMD ["python", "app.py"]
```

---

## 🔗 API Dependencies

SmartPick relies on the following backend API endpoints hosted at `https://shubhendu-ghosh-pickengine.hf.space`:

- `/appliances` → Returns list of appliances with images
- `/products/?appliance=&page=&brand=&sort=` → Returns paginated filtered product data
- `/recommend/<appliance>/<product_id>` → Returns the selected product and a list of recommendations

---

## 🧠 Technologies Used

- Python 3.10
- Flask
- HTML5, CSS3, JavaScript
- Hugging Face Spaces (Docker deployment)

---

## 👨‍💻 Author

**Shubhendu Ghosh**  
🔗 [GitHub](https://github.com/shubhendu-ghosh-DS)  
📧 [Email](mailto:shubhendughosh00@gmail.com)

---

## 📄 License

This project is licensed under the MIT License.
```
