import requests
from bs4 import BeautifulSoup
import psycopg2
import os
from dotenv import load_dotenv

load_dotenv()

db_password = os.getenv('DB_PASSWORD')

def getProductRecommendations(url):

    conn = psycopg2.connect(
        dbname='toy_car_db',
        user='postgres1',
        password=db_password,
        host='localhost',  
        port='5432'   
    )
    cursor = conn.cursor()

    create_table_query = """
    CREATE TABLE IF NOT EXISTS product_recommendations (
        id SERIAL PRIMARY KEY,
        title TEXT NOT NULL,
        link TEXT NOT NULL,
        regular_price TEXT,
        sale_price TEXT
    );
    """
    cursor.execute(create_table_query)
    print('Created table')

    print('Getting recommendations')
    response = requests.get(url)
    if response.status_code == 200:
        soup = BeautifulSoup(response.text, 'html.parser')

        form = soup.find('form', class_='installment caption-large')
        
        if form:

            product_id = form.find('input', {'name': 'product-id'})['value']
            section_id = form.find('input', {'name': 'section-id'})['value']
            cleaned_section_id = section_id.replace('__main', '')
            limit = 4

            print('Product ID:', product_id)
            print('Section ID:', cleaned_section_id)

            recommendationResponse = requests.get(f'https://www.tinytown.in/recommendations/products?section_id={cleaned_section_id}__related-products&product_id={product_id}&limit={limit}')
            print(recommendationResponse.headers.get('Content-Encoding'))

            if recommendationResponse.status_code == 200:
                recommendationParsedHTML = BeautifulSoup(recommendationResponse.content, 'html.parser')

                recommendationLists = recommendationParsedHTML.find_all('li', class_='grid__item')
                print('Recommendation lists found:', len(recommendationLists))

                for recommendation in recommendationLists:

                    title_tag = recommendation.find('a', class_='full-unstyled-link')
                    title = title_tag.text.strip() if title_tag else 'No title available'
                    print('Title:', title)
                    
                    link = title_tag.get('href') if title_tag else 'No link available'
                    print('Link:', link)

                    regular_price_tag = recommendation.find('span', class_='price-item price-item--regular')
                    regular_price = regular_price_tag.text.strip() if regular_price_tag else None
                    print('Regular Price:', regular_price)

                    sale_price_tag = recommendation.find('span', class_='price-item price-item--sale price-item--last')
                    sale_price = sale_price_tag.text.strip() if sale_price_tag else None
                    print('Sale Price:', sale_price)

                    cursor.execute("""
                        INSERT INTO product_recommendations (title, link, regular_price, sale_price)
                        VALUES (%s, %s, %s, %s);
                    """, (title, link, regular_price, sale_price))
                
                conn.commit()
                print("Data inserted successfully!")
            else:
                print("Failed to get recommendations.")

        else:
            print('Form not found.')

    cursor.close()
    conn.close()

getProductRecommendations("https://www.tinytown.in/products/maisto-audi-r8-gt-matte-black-1-18-scale")
