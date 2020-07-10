import math
import pgeocode
import re

from flask import Flask, render_template
from flask import jsonify


app = Flask(__name__)

@app.route('/geocde/status', methods = ['GET'])
def hello_world():
    return jsonify('all good')

@app.route('/geocde/<country>/postal/<postal>', methods = ['GET'])
def validate_address(country, postal):
    try:
        # hackish way to determine if its a postal code
        if re.search("^[A-Za-z]",postal[0]):
            adjusted_postal = postal[0:3]
        else:
            adjusted_postal = postal
        nomi = pgeocode.Nominatim(country)
        response = nomi.query_postal_code(adjusted_postal)
    except Exception as e:
        print(e)
        return jsonify({})

    # check to make sure pandas returns a valid response
    if str(response.array[1]):
        return jsonify(response.to_json())
    return jsonify({})

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
