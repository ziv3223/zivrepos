# בניית התמונה מבסיס ה-Ubuntu
FROM ubuntu:latest

# התקנת פייתון וכלי הפיתוח הדרושים
RUN apt-get update && apt-get install -y python3 python3-pip

# הגדרת תיקיית העבודה בתוך הקונטיינר
WORKDIR /app

# העתקת קובץ הקוד app.py לתוך הקונטיינר
COPY app.py .

# התקנת החבילות הדרושות
RUN pip3 install flask


# הגדרת פקודת הרצה בזמן הפעלת הקונטיינר
