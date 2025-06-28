# Basic Flask app structure
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def dashboard():
    """Renders the main dashboard page."""
    return render_template('dashboard.html')

@app.route('/detailed_info/<item_id>')
def detailed_info(item_id):
    """Renders the detailed information page for a given item."""
    # In a real application, you would fetch data based on item_id
    return render_template('detailed_info.html', item_id=item_id)

if __name__ == '__main__':
    app.run(debug=True)
