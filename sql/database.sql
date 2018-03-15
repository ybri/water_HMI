--Creation script for the sql database

CREATE SEQUENCE water_water_id_seq;

CREATE TABLE Water (
                Water_ID INTEGER NOT NULL DEFAULT nextval('water_water_id_seq'),
                Name VARCHAR NOT NULL,
                Country VARCHAR NOT NULL,
                Calcium REAL NOT NULL,
                Magnesium REAL NOT NULL,
                Sodium REAL NOT NULL,
                Potassium REAL NOT NULL,
                Sulfate REAL NOT NULL,
                Nitrate REAL NOT NULL,
                Bicarbonate REAL NOT NULL,
                Chlore REAL NOT NULL,
                CONSTRAINT water_pk PRIMARY KEY (Water_ID)
);


ALTER SEQUENCE water_water_id_seq OWNED BY Water.Water_ID;

INSERT INTO Water (Name, Country, Calcium, Magnesium, Sodium, Potassium, Sulfate, Nitrate, Bicarbonate, Chlore)
VALUES  ('Evian', 'France', 78, 24, 5, 1, 10, 3.8, 357, 4.5),
        ('Montagne des Pyrénées', 'France', 48, 11, 34, 1, 16, 4, 183, 50),
        ('Cristaline-St-Cyr', 'France', 71, 5.5, 11.2, 3.2, 5, 1, 250, 20),
        ('Fiée des Lois', 'France', 89, 31, 17, 2, 47, 0, 360, 28),
        ('Volcania', 'France', 4.1, 1.7, 2.7, 0.9, 1.1, 0.8, 25.8, 0.9),
        ('Saint Diéry', 'France', 85, 80, 385, 65, 25, 1.9, 1350, 285),
        ('Luchon', 'France', 26.5, 1, 0.8, 0.2, 8.2, 1.8, 78.1, 2.3),
        ('Volvic', 'France', 9.9, 6.1, 9.4, 5.7, 6.9, 6.3, 65.3, 8.4),
        ('Alpes/Moulettes', 'France', 63, 10.2, 1.4, 0.4, 51.3, 2, 173.2, 10),
        ('Orée du bois', 'France', 234, 70, 43, 9, 635, 1, 292, 62),
        ('Arvie', 'France', 170, 92, 650, 130, 31, 0, 2195, 387),
        ('Alpes/Roche des Ecrins', 'France', 63, 10.2, 1.4, 0.4, 51.3, 2, 173.2, 10),
        ('Ondine', 'France', 46.1, 4.3, 6.3, 3.5, 9, 0, 163.5, 3.5),
        ('Thonon', 'France', 108, 14, 3, 1, 13, 12, 350, 9),
        ('Aix les Bains', 'France', 84, 23, 2, 1, 27, 0.2, 341, 3),
        ('Contrex', 'France', 486, 84, 9.1, 3.2, 1187, 2.7, 403, 8.6),
        ('La Bondoire Saint Hippolite', 'France', 86, 3, 17, 1, 7, 19, 256, 21),
        ('Dax', 'France', 125, 30.1, 126, 19.4, 365, 0, 164.7, 156),
        ('Quézac', 'France', 241, 95, 255, 49.7, 143, 1, 1685.4, 38),
        ('Salvetat', 'France', 253, 11, 7, 3, 25, 1, 820, 4),
        ('Stamna', 'Grèce', 48.1, 9.2, 12.6, 0.4, 9.6, 0, 173.3, 21.3),
        ('Iolh', 'Grèce', 54.1, 31.5, 8.2, 0.8, 15, 6.2, 267.5, 13.5),
        ('Avra', 'Grèce', 110.8, 9.9, 8.4, 0.7, 39.7, 35.6, 308.8, 8),
        ('Rouvas', 'Grèce', 25.7, 10.7, 8, 0.4, 9.6, 3.1, 117.2, 12.4),
        ('Alisea', 'Italie', 12.3, 2.6, 2.5, 0.6, 10.1, 2.5, 41.6, 0.9),
        ('San Benedetto', 'Italie', 46, 28, 6.8, 1, 5.8, 6.6, 287, 2.4),
        ('San Pellegrino', 'Italie', 208, 55.9, 43.6, 2.7, 549.2, 0.45, 219.6, 74.3),
        ('Levissima', 'Italie', 19.8, 1.8, 1.7, 1.8, 14.2, 1.5, 56.5, 0.3),
        ('Vera', 'Italie', 36, 13, 2, 0.6, 18, 3.6, 154, 2.1),
        ('San Antonio', 'Italie', 32.5, 6.1, 4.9, 0.7, 1.6, 4.3, 135.5, 1),
        ('La Française', 'France', 354, 83, 653, 22, 1055, 0, 225, 982),
        ('Saint Benoit', 'France', 46.1, 4.3, 6.3, 3.5, 9, 0, 163.5, 3.5),
        ('Plancoët', 'France', 36, 19, 36, 6, 43, 0, 195, 38),
        ('Saint Alix', 'France', 8, 10, 33, 4, 20, 0.5, 84, 37),
        ('Puits Saint Georges/Casino', 'France', 46, 33, 430, 18.5, 10, 8, 1373, 39),
        ('Saint-Georges/Corse', 'France', 5.2, 2.43, 14.05, 1.15, 6, 0, 30.5, 25),
        ('Hildon Bleue', 'Grande Bretagne', 97, 1.7, 7.7, 1, 4, 26.4, 236, 16),
        ('Hildon Blanche', 'Grande Bretagne', 97, 1.7, 7.7, 1, 4, 5.5, 236, 16),
        ('Mont Roucous', 'France', 1.2, 0.2, 2.8, 0.4, 3.3, 2.3, 4.9, 3.2),
        ('Ogeu', 'France', 48, 11, 31, 1, 16, 4, 183, 44),
        ('Highland Spring', 'Grande Bretagne', 35, 8.5, 6, 0.6, 6, 1, 136, 7.5),
        ('Parot', 'France', 99, 88.1, 968, 103, 18, 1, 3380.51, 88),
        ('Vernière', 'France', 190, 72, 154, 49, 158, 0, 1170, 18),
        ('Terres de Flein', 'France', 116, 4.2, 8, 2.5, 24.5, 1, 333, 15),
        ('Courmayeur', 'Italie', 517, 67, 1, 2, 1371, 2, 168, 1),
        ('Pyrénées', 'France', 48, 12, 31, 1, 18, 4, 183, 35),
        ('Puits Saint Georges/Monoprix', 'France', 46, 34, 434, 18.5, 10, 8, 1373, 39),
        ('Prince Noir', 'France', 528, 78, 9, 3, 1342, 0, 329, 9),
        ('Montcalm', 'France', 3, 0.6, 1.5, 0.4, 8.7, 0.9, 5.2, 0.6),
        ('Chantereine', 'France', 119, 28, 7, 2, 52, 0, 430, 7),
        ('18 Carats', 'France', 118, 30, 18, 7, 85, 0.5, 403, 39),
        ('Spring Water', 'Grande Bretagne', 117, 19, 13, 2, 16, 20, 405, 28),
        ('Vals', 'France', 45.2, 21.3, 453, 32.8, 38.9, 1, 1403, 27.2),
        ('Vernet', 'France', 33.5, 17.6, 192, 28.7, 14, 1, 734, 6.4),
        ('Sidi Harazem', 'Maroc', 70, 40, 120, 8, 20, 4, 335, 220),
        ('Sidi Ali', 'Maroc', 12.02, 8.7, 25.5, 2.8, 41.7, 0.1, 103.7, 14.2),
        ('Montclar', 'France', 41, 3, 2, 0, 2, 3, 134, 3)
