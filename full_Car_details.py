import requests
from bs4 import BeautifulSoup
import psycopg2
import os
from dotenv import load_dotenv

load_dotenv()

db_password = os.getenv('DB_PASSWORD')

def getCarFullDetails(url):

    conn = psycopg2.connect(
        dbname='toy_car_db',
        user='postgres1',
        password=db_password,
        host='localhost',  
        port='5432'   
    )
    cursor = conn.cursor()

    create_table_query = """
        CREATE TABLE IF NOT EXISTS full_car_details (
            id SERIAL PRIMARY KEY,
            title TEXT,
            link TEXT,
            vendor TEXT,
            regular_price TEXT,
            sale_price TEXT,
            pickup_available_at TEXT,
            pickup_availability TEXT,
            description TEXT
        );
    """
    cursor.execute(create_table_query)
    print('Table created successfully!')

    response = requests.get(url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')

        product_info = soup.find('product-info')

        if product_info:
            print('Extracting product info...')
            
            vendor = product_info.find('p', class_='product__text inline-richtext caption-with-letter-spacing')
            title = product_info.find('a', class_='product__title')
            link = title.get('href')
            regular_price = product_info.find('span', class_='price-item price-item--regular')
            sale_price = product_info.find('span', class_='price-item price-item--sale price-item--last')


            pickUpInfo = product_info.find('pickup-availability-drawer', class_='gradient')
            pickUpAvailableAt = pickUpInfo.find('h3', class_='h4').text.strip() if pickUpInfo else None
            pickUpAvailability = pickUpInfo.find('p', class_='pickup-availability-preview caption-large').text.strip() if pickUpInfo else None

            product_description_div = soup.find('div', class_='product__description')
            product_description = product_description_div.get_text(separator="\n", strip=True) if product_description_div else "No description available"

            
            insert_query = '''
                INSERT INTO full_car_details (title, link, vendor, regular_price, sale_price, 
                pickup_available_at, pickup_availability, description) 
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            '''
            cursor.execute(insert_query, (
                title.text.strip() if title else None,
                link,
                vendor.text.strip() if vendor else None,
                regular_price.text.strip() if regular_price else None,
                sale_price.text.strip() if sale_price else None,
                pickUpAvailableAt,
                pickUpAvailability,
                product_description
            ))

            conn.commit()
            print("Data inserted successfully!")    

        else:
            print("Product info not found.")
    else:
        print(f"Failed to fetch the page. Status code: {response.status_code}")

    cursor.close()
    conn.close()


getCarFullDetails("https://www.tinytown.in/products/bburago-red-bull-racing-rb19-no-11-with-sergio-perez-driver-figurine-blue-1-24-scale-model")
