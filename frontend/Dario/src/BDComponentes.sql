-- 1) Marca del microprocesador
CREATE TABLE marcas_micro (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    foto VARCHAR(255)
);

INSERT INTO marcas_micro (id, nombre) VALUES
(1, 'AMD', "/Imagenes/Productos/Marcas/AMD.webp"),
(2, 'Intel', "/Imagenes/Productos/Marcas/Intel.webp");

------------------------------------------------------------------------------------------

-- 2) Microprocesador
CREATE TABLE procesadores (
    id INT PRIMARY KEY,
    id_marca INT,
    marca VARCHAR(50),
    nombre VARCHAR(100),
    codename VARCHAR(50),
    nucleos VARCHAR(20),
    clock_base DECIMAL(4,2),
    clock_boost DECIMAL(4,2),
    socket VARCHAR(20),
    proceso_nm VARCHAR(10),
    l3_cache VARCHAR(20),
    tdp_watts INT,
    released DATE,
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

INSERT INTO procesadores (id, id_marca, marca, nombre, codename, nucleos, clock_base, clock_boost, socket, proceso_nm, l3_cache, tdp_watts, released, detalle, foto, precio) VALUES
-- AMD
(1, 1, 'AMD', 'Ryzen Threadripper PRO 9995WX', 'Shimada Peak', '96 / 192', 2.5, 5.4, 'sTR5', '4nm', '384MB', 350, '2025-07-01', 'Procesador extremo para estaciones de trabajo con 96 núcleos y 192 hilos.', 'https://www.amd.com/system/files/2023-07/ryzen-threadripper-pro-9995wx-processor-box.png', 6999.99),
(2, 1, 'AMD', 'Ryzen 9 9950X3D', 'Granite Ridge', '16 / 32', 4.3, 5.7, 'AM5', '4nm', '128MB', 170, '2025-01-15', 'Ideal para gaming con tecnología 3D V-Cache de segunda generación.', 'https://www.amd.com/system/files/2023-07/ryzen-9-9950x3d-processor-box.png', 1099.99),
(3, 1, 'AMD', 'Ryzen AI Max+ 395', 'Strix Halo', '16 / 32', 3.0, 5.1, 'FP11', '4nm', '64MB', 55, '2025-01-15', 'Enfocado en tareas de inteligencia artificial y aprendizaje automático.', 'https://www.amd.com/system/files/2023-07/ryzen-ai-max-plus-395-processor-box.png', 899.99),
(4, 1, 'Ryzen AI Max+ PRO 395', 'Strix Halo', '16 / 32', 3.0, 5.1, 'FP11', '4nm', '64MB', 55, '2025-01-15', 'Versión profesional del Ryzen AI Max+ para entornos empresariales.', 'https://www.amd.com/system/files/2023-07/ryzen-ai-max-plus-pro-395-processor-box.png', 999.99),
(5, 1, 'Ryzen 7 9800X3D', 'Granite Ridge', '8 / 16', 4.7, 5.2, 'AM5', '4nm', '96MB', 120, '2024-11-10', 'Excelente para gaming con gran caché 3D y alta frecuencia.', 'https://www.amd.com/system/files/2023-07/ryzen-7-9800x3d-processor-box.png', 699.99),
(6, 1, 'Ryzen 9 9950X', 'Granite Ridge', '16 / 32', 4.3, 5.7, 'AM5', '4nm', '64MB', 170, '2024-08-05', 'Procesador de alto rendimiento para tareas multitarea intensivas.', 'https://www.amd.com/system/files/2023-07/ryzen-9-9950x-processor-box.png', 799.99),
(7, 1, 'Ryzen 7 9700X', 'Granite Ridge', '8 / 16', 3.8, 5.5, 'AM5', '4nm', '32MB', 65, '2024-08-05', 'Ideal para gaming con eficiencia energética mejorada.', 'https://www.amd.com/system/files/2023-07/ryzen-7-9700x-processor-box.png', 499.99),
(8, 1, 'Ryzen 5 9600X', 'Granite Ridge', '6 / 12', 3.9, 5.4, 'AM5', '4nm', '32MB', 65, '2024-08-05', 'Perfecto para juegos y productividad de alto rendimiento.', 'https://www.amd.com/system/files/2023-07/ryzen-5-9600x-processor-box.png', 399.99),
(9, 1, 'Ryzen 7 8700G', 'Phoenix', '8 / 16', 4.2, 5.1, 'AM5', '4nm', '16MB', 65, '2024-01-20', 'CPU con gráficos integrados potentes para laptops.', 'https://www.amd.com/system/files/2023-07/ryzen-7-8700g-processor-box.png', 349.99),
(10, 1, 'Ryzen 5 5600GT', 'Cezanne', '6 / 12', 3.6, 4.6, 'AM4', '7nm', '16MB', 65, '2024-01-20', 'Procesador versátil para PC de escritorio media-alta.', 'https://www.amd.com/system/files/2023-07/ryzen-5-5600gt-processor-box.png', 299.99),
(11, 1, 'Ryzen 7 7800X3D', 'Raphael', '8 / 16', 4.2, 5.0, 'AM5', '5nm', '96MB', 120, '2023-01-10', 'Gaming de alto rendimiento con gran caché 3D.', 'https://www.amd.com/system/files/2023-07/ryzen-7-7800x3d-processor-box.png', 579.99),
(12, 1, 'Ryzen 7 7700', 'Raphael', '8 / 16', 3.8, 5.3, 'AM5', '5nm', '32MB', 65, '2023-01-10', 'Balance entre eficiencia energética y potencia.', 'https://www.amd.com/system/files/2023-07/ryzen-7-7700-processor-box.png', 359.99),
(13, 1, 'Ryzen 5 7600X', 'Raphael', '6 / 12', 4.7, 5.3, 'AM5', '5nm', '32MB', 105, '2022-09-15', 'Procesador compacto y potente para gaming y creación.', 'https://www.amd.com/system/files/2023-07/ryzen-5-7600x-processor-box.png', 299.99),
(14, 1, 'Ryzen 5 7500F', 'Raphael', '6 / 12', 3.7, 5.0, 'AM5', '5nm', '32MB', 65, '2023-07-01', 'CPU con excelente relación precio/rendimiento.', 'https://www.amd.com/system/files/2023-07/ryzen-5-7500f-processor-box.png', 249.99),
(15, 1, 'Ryzen 7 7730U', 'Barcelo-R', '8 / 16', 2.0, 4.5, 'FP6', '7nm', '16MB', 15, '2023-01-10', 'Procesador de bajo consumo para laptops ultradelgadas.', 'https://www.amd.com/system/files/2023-07/ryzen-7-7730u-processor-box.png', 199.99),
-- Intel
(16, 2, 'Intel', 'Core Ultra 5 235TA', 'Arrow Lake-S', '14', 2.2, 5.0, 'Socket 1851', '3nm', '24MB', 65, '2025-07-01', 'Procesador de 14 núcleos con gráficos Arc Xe-LPG integrados.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 499.99),
(17, 2, 'Core Ultra 5 235A', 'Arrow Lake-S', '14', 3.4, 5.0, 'Socket 1851', '3nm', '24MB', 65, '2025-07-01', 'Alta frecuencia y gran rendimiento para tareas multitarea.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 479.99),
(18, 2, 'Core Ultra 9 285K', 'Arrow Lake-S', '24', 3.7, 5.7, 'Socket 1851', '3nm', '36MB', 125, '2024-10-15', 'Procesador tope de gama para gaming y creación de contenido.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 899.99),
(19, 2, 'Core Ultra 7 265K', 'Arrow Lake-S', '20', 3.9, 5.5, 'Socket 1851', '3nm', '30MB', 125, '2024-10-15', 'Gran cantidad de núcleos para multitarea extrema.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 749.99),
(20, 2, 'Core i9-14900K', 'Raptor Lake-R', '24 / 32', 3.2, 6.0, 'Socket 1700', '10nm', '36MB', 125, '2023-10-10', 'Procesador de escritorio de máximo rendimiento.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 699.99),
(21, 2, 'Core Ultra 7 155H', 'Meteor Lake', '16 / 22', 3.8, 4.8, 'BGA 2049', '7nm', '24MB', 28, '2023-09-10', 'Procesador eficiente para laptops de alto rendimiento.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 399.99),
(22, 2, 'Core i7-14700K', 'Raptor Lake-R', '20 / 28', 3.4, 5.5, 'Socket 1700', '10nm', '30MB', 125, '2023-09-10', 'Alto rendimiento para gaming y productividad.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 599.99),
(23, 2, 'Core i5-14600K', 'Raptor Lake-R', '14 / 20', 3.5, 5.1, 'Socket 1700', '10nm', '24MB', 125, '2023-09-10', 'Excelente equilibrio entre rendimiento y consumo.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 399.99),
(24, 2, 'Core i7-13700K', 'Raptor Lake', '16 / 24', 3.4, 5.4, 'Socket 1700', '10nm', '30MB', 125, '2022-10-20', 'Procesador potente para juegos y creación de contenido.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 499.99),
(25, 2, 'Core i5-13600K', 'Raptor Lake', '14 / 20', 3.5, 5.1, 'Socket 1700', '10nm', '24MB', 125, '2022-10-20', 'Rendimiento sólido en juegos y multitarea.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 359.99),
(26, 2, 'Core i9-13900KS', 'Raptor Lake', '24 / 32', 3.0, 6.0, 'Socket 1700', '10nm', '36MB', 125, '2022-11-01', 'Tope de gama con máxima frecuencia de boost.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 799.99),
(27, 2, 'Core i9-13900K', 'Raptor Lake', '24 / 32', 3.0, 5.8, 'Socket 1700', '10nm', '36MB', 125, '2022-10-20', 'Procesador de escritorio de alto rendimiento.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 749.99),
(28, 2, 'Core i7-13700KF', 'Raptor Lake', '16 / 24', 3.4, 5.4, 'Socket 1700', '10nm', '30MB', 125, '2022-10-20', 'Versión sin gráficos integrada, ideal para gaming con GPU dedicada.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 479.99),
(29, 2, 'Core i5-13600KF', 'Raptor Lake', '14 / 20', 3.5, 5.1, 'Socket 1700', '10nm', '24MB', 125, '2022-10-20', 'Equilibrio de precio y rendimiento para gaming.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 339.99),
(30, 2, 'Core i5-13500', 'Raptor Lake', '14 / 20', 2.5, 4.8, 'Socket 1700', '10nm', '24MB', 65, '2022-01-15', 'Procesador para escritorio con buena eficiencia energética.', 'https://www.intel.com/content/dam/www/global/www/graphics/graphics-processor/arc/a-series/arc-a750/arc-a750-processor.png', 279.99);


------------------------------------------------------------------------------------------

-- 3) Cooler
CREATE TABLE coolers (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE cooler_compatibilidad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cooler INT,
    id_micro INT,
    FOREIGN KEY (id_cooler) REFERENCES coolers(id),
    FOREIGN KEY (id_micro) REFERENCES procesadores(id)
);

-- Inserción de 30 coolers
INSERT INTO coolers (id, nombre, detalle, foto, precio) VALUES
(1, 'Noctua NH-D15', 'Refrigeración por aire de alto rendimiento, ideal para overclocking.', 'https://www.noctua.at/media/wysiwyg/NH-D15_gallery_1.jpg', 99.99),
(2, 'be quiet! Dark Rock Pro 4', 'Silencioso y eficiente, compatible con sockets AM4 y LGA1700.', 'https://www.bequiet.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/d/a/dark-rock-pro-4_2.jpg', 89.99),
(3, 'Cooler Master Hyper 212 Black Edition', 'Popular por su excelente relación calidad-precio.', 'https://www.coolermaster.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/h/y/hyper-212-black-edition_1.jpg', 49.99),
(4, 'Corsair iCUE H100i RGB', 'Refrigeración líquida todo en uno con iluminación RGB.', 'https://www.corsair.com/corsairmedia/sys_master/productcontent/H1f/h3d/9509271794878/-HC100iRGBPlatinum_01.jpg', 129.99),
(5, 'NZXT Kraken X63', 'AIO líquido con ventiladores de alto flujo y control CAM.', 'https://nzxt.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/k/r/kraken_x63.jpg', 139.99),
(6, 'DeepCool AK620', 'Alta eficiencia de enfriamiento por aire y bajo ruido.', 'https://www.deepcool.com/product/resource/2022/12/30/Ak620_1.jpg', 69.99),
(7, 'ARCTIC Freezer 34 eSports DUO', 'Gran rendimiento en aire con doble ventilador.', 'https://www.arctic.ac/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/f/r/freezer34-esports-duo_1.jpg', 54.99),
(8, 'Scythe Mugen 5 Rev.B', 'Enfriamiento por aire silencioso y potente.', 'https://www.scythe-eu.com/wp-content/uploads/Mugen5_revB_1.jpg', 59.99),
(9, 'Thermaltake Floe Riing RGB 360', 'Refrigeración líquida con triple radiador y RGB.', 'https://www.thermaltake.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/f/l/floe-riing-rgb-360_1.jpg', 169.99),
(10, 'Noctua NH-U12S Redux', 'Versión económica y eficiente del NH-U12S.', 'https://www.noctua.at/media/wysiwyg/NH-U12S_Redux_1.jpg', 39.99),
(11, 'Corsair iCUE H150i Elite', 'AIO de 360 mm para rendimiento extremo.', 'https://www.corsair.com/corsairmedia/sys_master/productcontent/H97/h55/9698711126110/iCUE-H150i-Elite-Capellix-01.jpg', 179.99),
(12, 'be quiet! Pure Rock 2', 'Refrigeración silenciosa y eficiente para CPUs modernas.', 'https://www.bequiet.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/pure-rock-2_1.jpg', 44.99),
(13, 'Cooler Master MasterLiquid ML240L', 'AIO con bomba de flujo eficiente y ventiladores silenciosos.', 'https://www.coolermaster.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/m/l/masterliquid-ml240l_1.jpg', 79.99),
(14, 'DeepCool Castle 360EX', 'Refrigeración líquida con efecto ARGB y radiador triple.', 'https://www.deepcool.com/product/resource/2022/12/30/Castle360EX_1.jpg', 149.99),
(15, 'NZXT Kraken Z73', 'AIO premium con pantalla LCD personalizable.', 'https://nzxt.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/kraken-z73.jpg', 199.99),
(16, 'ARCTIC Liquid Freezer II 280', 'Eficiencia de refrigeración líquida con bajo ruido.', 'https://www.arctic.ac/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/liquid-freezer-ii-280_1.jpg', 109.99),
(17, 'Scythe Fuma 2', 'Compacto y eficiente, ideal para torres medianas.', 'https://www.scythe-eu.com/wp-content/uploads/Fuma2_1.jpg', 49.99),
(18, 'Thermaltake TH120 ARGB Sync', 'AIO económico con iluminación ARGB.', 'https://www.thermaltake.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/th120-argb_1.jpg', 59.99),
(19, 'Noctua NH-L9i', 'Cooler bajo perfil para cajas pequeñas.', 'https://www.noctua.at/media/wysiwyg/NH-L9i_1.jpg', 34.99),
(20, 'be quiet! Shadow Rock 3', 'Enfriamiento silencioso y gran rendimiento por aire.', 'https://www.bequiet.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/shadow-rock-3_1.jpg', 44.99),
(21, 'Cooler Master MasterAir MA620M', 'Diseño dual tower con ventiladores ARGB.', 'https://www.coolermaster.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/ma620m_1.jpg', 89.99),
(22, 'DeepCool Gammaxx L240 V2', 'Refrigeración líquida asequible de 240 mm.', 'https://www.deepcool.com/product/resource/2022/12/30/Gammaxx-L240-V2_1.jpg', 69.99),
(23, 'NZXT Kraken M22', 'Compacto AIO de 120 mm, ideal para espacios pequeños.', 'https://nzxt.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/kraken-m22.jpg', 79.99),
(24, 'ARCTIC Freezer 50', 'Refrigeración por aire potente con ventilador de 140 mm.', 'https://www.arctic.ac/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/freezer-50_1.jpg', 64.99),
(25, 'Thermaltake Water 3.0 360', 'AIO de alto rendimiento con triple ventilador.', 'https://www.thermaltake.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/water-3.0-360_1.jpg', 159.99),
(26, 'Noctua NH-U14S', 'Alta eficiencia en torres grandes con ventilador silencioso.', 'https://www.noctua.at/media/wysiwyg/NH-U14S_1.jpg', 69.99),
(27, 'be quiet! Dark Rock Slim', 'Enfriamiento de alto rendimiento en espacio reducido.', 'https://www.bequiet.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/dark-rock-slim_1.jpg', 54.99),
(28, 'Cooler Master MasterAir G200P', 'Compacto con ventilador ARGB y buena refrigeración.', 'https://www.coolermaster.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/ma-g200p_1.jpg', 44.99),
(29, 'DeepCool AS500', 'Enfriamiento potente con bajo ruido.', 'https://www.deepcool.com/product/resource/2022/12/30/AS500_1.jpg', 64.99),
(30, 'NZXT Kraken X53', 'AIO 240 mm para PC de alto rendimiento.', 'https://nzxt.com/media/catalog/product/cache/1/image/1000x1000/9df78eab33525d08d6e5fb8d27136e95/kraken-x53.jpg', 129.99);


-- Compatibilidad realista de cada cooler con varios micros
INSERT INTO cooler_compatibilidad (id_cooler, id_micro) VALUES
-- Noctua NH-D15
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8),
-- be quiet! Dark Rock Pro 4
(2, 1), (2, 2), (2, 5), (2, 6), (2, 9), (2, 10), (2, 11), (2, 12),
-- Cooler Master Hyper 212 Black Edition
(3, 3), (3, 4), (3, 7), (3, 8), (3, 13), (3, 14),
-- Corsair iCUE H100i RGB
(4, 5), (4, 6), (4, 11), (4, 12), (4, 15), (4, 16),
-- NZXT Kraken X63
(5, 2), (5, 4), (5, 7), (5, 9), (5, 13), (5, 17), (5, 18),
-- DeepCool AK620
(6, 1), (6, 3), (6, 5), (6, 6), (6, 14), (6, 15),
-- ARCTIC Freezer 34 eSports DUO
(7, 8), (7, 9), (7, 10), (7, 11), (7, 12),
-- Scythe Mugen 5 Rev.B
(8, 1), (8, 2), (8, 3), (8, 4), (8, 5),
-- Thermaltake Floe Riing RGB 360
(9, 13), (9, 14), (9, 15), (9, 16), (9, 17),
-- Noctua NH-U12S Redux
(10, 6), (10, 7), (10, 8), (10, 9),
-- Corsair iCUE H150i Elite
(11, 10), (11, 11), (11, 12), (11, 13),
-- be quiet! Pure Rock 2
(12, 14), (12, 15), (12, 16), (12, 17),
-- Cooler Master MasterLiquid ML240L
(13, 18), (13, 19), (13, 20), (13, 21),
-- DeepCool Castle 360EX
(14, 22), (14, 23), (14, 24), (14, 25),
-- NZXT Kraken Z73
(15, 26), (15, 27), (15, 28), (15, 29), (15, 30),
-- ARCTIC Liquid Freezer II 280
(16, 1), (16, 4), (16, 7), (16, 10), (16, 13),
-- Scythe Fuma 2
(17, 2), (17, 5), (17, 8), (17, 11),
-- Thermaltake TH120 ARGB Sync
(18, 3), (18, 6), (18, 9), (18, 12),
-- Noctua NH-L9i
(19, 14), (19, 15), (19, 16),
-- be quiet! Shadow Rock 3
(20, 1), (20, 2), (20, 5), (20, 6),
-- Cooler Master MasterAir MA620M
(21, 7), (21, 8), (21, 13), (21, 14),
-- DeepCool Gammaxx L240 V2
(22, 9), (22, 10), (22, 15), (22, 16),
-- NZXT Kraken M22
(23, 17), (23, 18), (23, 19),
-- ARCTIC Freezer 50
(24, 20), (24, 21), (24, 22),
-- Thermaltake Water 3.0 360
(25, 23), (25, 24), (25, 25),
-- Noctua NH-U14S
(26, 26), (26, 27), (26, 28),
-- be quiet! Dark Rock Slim
(27, 29), (27, 30), (27, 1),
-- Cooler Master MasterAir G200P
(28, 2), (28, 3), (28, 4),
-- DeepCool AS500
(29, 5), (29, 6), (29, 7),
-- NZXT Kraken X53
(30, 8), (30, 9), (30, 10), (30, 11);

------------------------------------------------------------------------------------------

-- 4) Motherboard
-- Tabla de motherboards
CREATE TABLE motherboards (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    detalle TEXT,
    foto VARCHAR(255),
    actualizacion_bios BOOLEAN DEFAULT FALSE,
    precio DECIMAL(10,2)
);

-- Tabla intermedia de compatibilidad
/*CREATE TABLE motherboard_compatibilidad (
    id_motherboard INT,
    id_micro INT,
    PRIMARY KEY(id_motherboard, id_micro),
    FOREIGN KEY(id_motherboard) REFERENCES motherboards(id),
    FOREIGN KEY(id_micro) REFERENCES procesadores(id)
);*/

-- Insertar motherboards
INSERT INTO motherboards (id, nombre, detalle, foto, actualizacion_bios, precio) VALUES
(1, 'ASUS ROG Crosshair X670E', 'Placa base tope de gama para Ryzen serie 7000, soporte PCIe 5.0 y DDR5.', 'https://www.asus.com/media/rog-crosshair-x670e.png', TRUE, 699.99),
(2, 'MSI MEG X670E GODLIKE', 'Soporte para overclock extremo y múltiples GPUs.', 'https://www.msi.com/media/meg-x670e-godlike.png', FALSE, 999.99),
(3, 'Gigabyte X670 AORUS Master', 'Excelente refrigeración y conectividad para gamers.', 'https://www.gigabyte.com/media/x670-aorus-master.png', TRUE, 649.99),
(4, 'ASRock X670E Taichi', 'Placa premium con robusto VRM y soporte DDR5.', 'https://www.asrock.com/media/x670e-taichi.png', FALSE, 599.99),
(5, 'ASUS TUF Gaming B650-Plus', 'Buena relación calidad-precio para Ryzen 7000.', 'https://www.asus.com/media/tuf-b650-plus.png', TRUE, 229.99),
(6, 'MSI MPG B650 Carbon WiFi', 'Diseño gamer con Wi-Fi 6E y PCIe 5.0.', 'https://www.msi.com/media/b650-carbon.png', FALSE, 249.99),
(7, 'Gigabyte B650 AORUS Elite AX', 'Compatible con Ryzen 7000, ideal para PCs de escritorio.', 'https://www.gigabyte.com/media/b650-aorus-elite.png', TRUE, 199.99),
(8, 'ASRock B650M Steel Legend', 'Placa micro-ATX sólida y confiable para Ryzen 7000.', 'https://www.asrock.com/media/b650m-steel.png', FALSE, 189.99),
(9, 'ASUS ROG Strix Z790-E', 'Para Intel Raptor Lake, soporte DDR5 y overclock.', 'https://www.asus.com/media/rog-strix-z790e.png', TRUE, 499.99),
(10, 'MSI Z790 Godlike', 'Top gama para Intel serie 13, con PCIe 5.0 y gran VRM.', 'https://www.msi.com/media/z790-godlike.png', FALSE, 999.99),
(11, 'Gigabyte Z790 AORUS Master', 'Alta conectividad y refrigeración para Intel.', 'https://www.gigabyte.com/media/z790-aorus-master.png', TRUE, 599.99),
(12, 'ASRock Z790 Taichi', 'Placa premium para entusiastas Intel.', 'https://www.asrock.com/media/z790-taichi.png', FALSE, 549.99),
(13, 'ASUS TUF Gaming Z690-Plus', 'Compatible con Intel serie 12 y 13, buena relación precio/rendimiento.', 'https://www.asus.com/media/tuf-z690-plus.png', TRUE, 249.99),
(14, 'MSI MPG Z690 Carbon WiFi', 'Diseño gamer con soporte DDR5 y PCIe 5.0.', 'https://www.msi.com/media/z690-carbon.png', FALSE, 279.99),
(15, 'Gigabyte Z690 AORUS Elite AX', 'Ideal para gaming y productividad con Intel.', 'https://www.gigabyte.com/media/z690-aorus-elite.png', TRUE, 229.99),
(16, 'ASRock Z690M Steel Legend', 'Placa micro-ATX confiable para Intel serie 12 y 13.', 'https://www.asrock.com/media/z690m-steel.png', FALSE, 199.99),
(17, 'ASUS Prime B550-PLUS', 'Placa AMD B550, compatible con Ryzen 3000 y 5000.', 'https://www.asus.com/media/b550-plus.png', TRUE, 129.99),
(18, 'MSI B550 Tomahawk', 'Soporte para PCIe 4.0 y excelente VRM.', 'https://www.msi.com/media/b550-tomahawk.png', FALSE, 149.99),
(19, 'Gigabyte B550 AORUS Elite', 'Buena opción para Ryzen media-gama.', 'https://www.gigabyte.com/media/b550-aorus-elite.png', TRUE, 139.99),
(20, 'ASRock B550 Steel Legend', 'Robusta placa base para Ryzen, soporte PCIe 4.0.', 'https://www.asrock.com/media/b550-steel.png', FALSE, 129.99),
(21, 'ASUS ROG Strix B660-F', 'Para Intel serie 12, buena relación precio/rendimiento.', 'https://www.asus.com/media/b660-f.png', TRUE, 179.99),
(22, 'MSI MAG B660 Tomahawk', 'Placa gamer sólida para Intel serie 12.', 'https://www.msi.com/media/b660-tomahawk.png', FALSE, 189.99),
(23, 'Gigabyte B660 AORUS Pro', 'Compatible con Intel Alder Lake, buen rendimiento.', 'https://www.gigabyte.com/media/b660-aorus-pro.png', TRUE, 169.99),
(24, 'ASRock B660 Pro RS', 'Placa base confiable para Intel serie 12.', 'https://www.asrock.com/media/b660-pro.png', FALSE, 159.99),
(25, 'ASUS ROG Strix X570-E', 'Para Ryzen 3000 y 5000, soporte PCIe 4.0.', 'https://www.asus.com/media/x570-e.png', TRUE, 299.99),
(26, 'MSI MPG X570 Gaming Edge', 'Buena opción para gaming con Ryzen.', 'https://www.msi.com/media/x570-gaming-edge.png', FALSE, 269.99),
(27, 'Gigabyte X570 AORUS Elite', 'Compatible con Ryzen 3000 y 5000, buen VRM.', 'https://www.gigabyte.com/media/x570-aorus-elite.png', TRUE, 249.99),
(28, 'ASRock X570 Phantom Gaming', 'Placa base premium con soporte PCIe 4.0.', 'https://www.asrock.com/media/x570-phantom.png', FALSE, 239.99),
(29, 'ASUS TUF Gaming Z590-Plus', 'Para Intel serie 10 y 11, diseño robusto.', 'https://www.asus.com/media/z590-plus.png', TRUE, 179.99),
(30, 'MSI Z590-A PRO', 'Placa sólida para Intel serie 10 y 11.', 'https://www.msi.com/media/z590-a-pro.png', FALSE, 169.99);

-- Insertar compatibilidad de motherboards con micros (ejemplo)
-- Insertar compatibilidad completa de motherboards con micros

-- AMD X670E, B650 -> Ryzen 7000 y Threadripper PRO
/*INSERT INTO motherboard_compatibilidad (id_motherboard, id_micro) VALUES
(1, 1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),
(2, 1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),
(3, 1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),
(4, 1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),
(5, 5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,15),
(6, 5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),
(7, 5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,15),
(8, 5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(8,13),(8,14),(8,15),
(17, 5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,11),(17,12),(17,13),(17,14),(17,15),
(18, 5),(18,6),(18,7),(18,8),(18,9),(18,10),(18,11),(18,12),(18,13),(18,14),(18,15),
(19, 5),(19,6),(19,7),(19,8),(19,9),(19,10),(19,11),(19,12),(19,13),(19,14),(19,15),
(20, 5),(20,6),(20,7),(20,8),(20,9),(20,10),(20,11),(20,12),(20,13),(20,14),(20,15),
(25, 5),(25,6),(25,7),(25,8),(25,9),(25,10),(25,11),(25,12),(25,13),(25,14),(25,15),
(26, 5),(26,6),(26,7),(26,8),(26,9),(26,10),(26,11),(26,12),(26,13),(26,14),(26,15),
(27, 5),(27,6),(27,7),(27,8),(27,9),(27,10),(27,11),(27,12),(27,13),(27,14),(27,15),
(28, 5),(28,6),(28,7),(28,8),(28,9),(28,10),(28,11),(28,12),(28,13),(28,14),(28,15);

-- Intel Z790, Z690, B660, Z590 -> Intel serie 12 y 13 (Core Ultra / i9)
(9, 16),(9,17),(9,18),(9,19),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),
(10, 16),(10,17),(10,18),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(10,25),(10,26),(10,27),(10,28),(10,29),(10,30),
(11, 16),(11,17),(11,18),(11,19),(11,20),(11,21),(11,22),(11,23),(11,24),(11,25),(11,26),(11,27),(11,28),(11,29),(11,30),
(12, 16),(12,17),(12,18),(12,19),(12,20),(12,21),(12,22),(12,23),(12,24),(12,25),(12,26),(12,27),(12,28),(12,29),(12,30),
(13, 16),(13,17),(13,18),(13,19),(13,20),(13,21),(13,22),(13,23),(13,24),(13,25),(13,26),(13,27),(13,28),(13,29),(13,30),
(14, 16),(14,17),(14,18),(14,19),(14,20),(14,21),(14,22),(14,23),(14,24),(14,25),(14,26),(14,27),(14,28),(14,29),(14,30),
(15, 16),(15,17),(15,18),(15,19),(15,20),(15,21),(15,22),(15,23),(15,24),(15,25),(15,26),(15,27),(15,28),(15,29),(15,30),
(16, 16),(16,17),(16,18),(16,19),(16,20),(16,21),(16,22),(16,23),(16,24),(16,25),(16,26),(16,27),(16,28),(16,29),(16,30),
(21, 16),(21,17),(21,18),(21,19),(21,20),(21,21),(21,22),(21,23),(21,24),(21,25),(21,26),(21,27),(21,28),(21,29),(21,30),
(22, 16),(22,17),(22,18),(22,19),(22,20),(22,21),(22,22),(22,23),(22,24),(22,25),(22,26),(22,27),(22,28),(22,29),(22,30),
(23, 16),(23,17),(23,18),(23,19),(23,20),(23,21),(23,22),(23,23),(23,24),(23,25),(23,26),(23,27),(23,28),(23,29),(23,30),
(24, 16),(24,17),(24,18),(24,19),(24,20),(24,21),(24,22),(24,23),(24,24),(24,25),(24,26),(24,27),(24,28),(24,29),(24,30),
(29, 16),(29,17),(29,18),(29,19),(29,20),(29,21),(29,22),(29,23),(29,24),(29,25),(29,26),(29,27),(29,28),(29,29),(29,30),
(30, 16),(30,17),(30,18),(30,19),(30,20),(30,21),(30,22),(30,23),(30,24),(30,25),(30,26),(30,27),(30,28),(30,29),(30,30);*/

------------------------------------------------------------------------------------------

-- 5) Actualización de BIOS
CREATE TABLE bios_updates (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    version VARCHAR(50) NOT NULL,
    FOREIGN KEY (mother_id) REFERENCES motherboards(id)
);

INSERT INTO bios_updates (id, motherboard_id, micro_id, version, fecha_lanzamiento) VALUES
(1, 1, 1, '3201', '2021-02-15'),
(2, 2, 2, '3403', '2021-04-10'),
(3, 3, 3, '1802', '2021-01-20'),
(4, 4, 4, '2204', '2021-03-12'),
(5, 5, 5, '3005', '2021-05-05'),
(6, 6, 6, '2503', '2021-06-18'),
(7, 7, 7, '1206', '2021-02-28'),
(8, 8, 8, '1503', '2021-04-22'),
(9, 9, 9, '2007', '2021-05-30'),
(10, 10, 10, '2102', '2021-03-14'),
(11, 11, 11, '1905', '2021-01-25'),
(12, 12, 12, '2302', '2021-04-01'),
(13, 13, 13, '3004', '2021-06-05'),
(14, 14, 14, '2803', '2021-07-10'),
(15, 15, 15, '3102', '2021-08-20'),
(16, 16, 16, '4401', '2021-02-10'),
(17, 17, 17, '4602', '2021-03-18'),
(18, 18, 18, '4803', '2021-04-25'),
(19, 19, 19, '5004', '2021-05-30'),
(20, 20, 20, '5205', '2021-06-15'),
(21, 21, 21, '5406', '2021-07-20'),
(22, 22, 22, '5607', '2021-08-12'),
(23, 23, 23, '5808', '2021-09-05'),
(24, 24, 24, '6009', '2021-10-01'),
(25, 25, 25, '6201', '2021-11-12'),
(26, 26, 26, '6402', '2021-12-05'),
(27, 27, 27, '6603', '2022-01-15'),
(28, 28, 28, '6804', '2022-02-20'),
(29, 29, 29, '7005', '2022-03-25'),
(30, 30, 30, '7206', '2022-04-30');

------------------------------------------------------------------------------------------

-- 6) Memoria RAM
CREATE TABLE ram (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    tipo VARCHAR(10),
    capacidad_gb INT,
    frecuencia_mhz INT,
    latencia VARCHAR(10),
    detalle TEXT,
    foto VARCHAR(255),
    compatible_plataforma VARCHAR(50),
    precio DECIMAL(10,2)
);

CREATE TABLE motherboard_ram_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    motherboard_id INT,
    ram_id INT,
    FOREIGN KEY (motherboard_id) REFERENCES motherboards(id),
    FOREIGN KEY (ram_id) REFERENCES ram(id)
);

INSERT INTO ram (id, nombre, tipo, capacidad_gb, frecuencia_mhz, latencia, detalle, foto, compatible_plataforma, precio) VALUES
(1, 'Corsair Vengeance DDR5', 'DDR5', 16, 6000, '36-36-36-76', 'Ideal para gaming y creación de contenido.', 'https://www.corsair.com/media/vengeance_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 129.99),
(2, 'G.Skill Trident Z5 RGB', 'DDR5', 32, 6400, '36-36-36-76', 'Alto rendimiento con iluminación RGB.', 'https://www.gskill.com/media/trident_z5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 249.99),
(3, 'Kingston Fury Beast DDR5', 'DDR5', 16, 5600, '36-36-36-76', 'Balance entre precio y rendimiento.', 'https://www.kingston.com/media/fury_beast_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 119.99),
(4, 'Crucial Ballistix DDR5', 'DDR5', 32, 6000, '36-36-36-76', 'Estabilidad para overclocking moderado.', 'https://www.crucial.com/media/ballistix_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 239.99),
(5, 'Corsair Vengeance LPX DDR4', 'DDR4', 16, 3200, '16-18-18-36', 'Memoria confiable para PCs DDR4.', 'https://www.corsair.com/media/vengeance_lpx_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 69.99),
(6, 'G.Skill Ripjaws V DDR4', 'DDR4', 32, 3600, '18-22-22-42', 'Alto rendimiento para gaming DDR4.', 'https://www.gskill.com/media/ripjaws_v_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 139.99),
(7, 'Kingston HyperX Fury DDR4', 'DDR4', 16, 3200, '16-18-18-36', 'Buena relación precio/rendimiento DDR4.', 'https://www.kingston.com/media/hyperx_fury_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 64.99),
(8, 'Crucial Ballistix DDR4', 'DDR4', 32, 3600, '18-22-22-42', 'Ideal para multitarea y gaming.', 'https://www.crucial.com/media/ballistix_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 134.99),
(9, 'TeamGroup T-Force Delta RGB DDR5', 'DDR5', 16, 6000, '38-38-38-76', 'Memoria RGB de alto rendimiento.', 'https://www.teamgroup.com/media/tforce_delta_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 129.99),
(10, 'ADATA XPG Lancer DDR5', 'DDR5', 32, 6400, '38-38-38-76', 'Excelente para overclocking.', 'https://www.adata.com/media/xpg_lancer_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 239.99),
(11, 'Corsair Vengeance LPX DDR4', 'DDR4', 8, 3000, '15-15-15-36', 'Ideal para PCs de entrada.', 'https://www.corsair.com/media/vengeance_lpx_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 39.99),
(12, 'G.Skill Trident Z RGB DDR4', 'DDR4', 16, 3600, '16-16-16-36', 'Memoria con iluminación y buen rendimiento.', 'https://www.gskill.com/media/trident_z_rgb_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 89.99),
(13, 'Kingston Fury Beast DDR5', 'DDR5', 32, 6000, '36-36-36-76', 'Rendimiento sólido para gaming y creación.', 'https://www.kingston.com/media/fury_beast_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 239.99),
(14, 'Crucial Ballistix MAX DDR4', 'DDR4', 16, 4000, '18-19-19-39', 'Ideal para overclocking avanzado.', 'https://www.crucial.com/media/ballistix_max_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 99.99),
(15, 'TeamGroup T-Force Xtreem DDR4', 'DDR4', 32, 3600, '14-14-14-34', 'Memoria DDR4 premium para gaming.', 'https://www.teamgroup.com/media/tforce_xtreem_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 159.99),
(16, 'ADATA XPG Spectrix D50 DDR4', 'DDR4', 16, 3600, '18-22-22-42', 'Diseño elegante con buen rendimiento.', 'https://www.adata.com/media/xpg_spectrix_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 89.99),
(17, 'Corsair Dominator Platinum RGB DDR5', 'DDR5', 32, 6400, '36-36-36-76', 'Memoria tope de gama con RGB premium.', 'https://www.corsair.com/media/dominator_platinum_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 279.99),
(18, 'G.Skill Trident Z Royal DDR5', 'DDR5', 32, 6000, '36-36-36-76', 'Diseño premium y alto rendimiento.', 'https://www.gskill.com/media/trident_z_royal_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 269.99),
(19, 'Kingston Fury Beast DDR4', 'DDR4', 8, 3200, '16-18-18-36', 'Opción económica para PCs DDR4.', 'https://www.kingston.com/media/fury_beast_ddr4.png', 'AMD Ryzen 3000/5000 / Intel 10-11 Gen', 44.99),
(20, 'Crucial Ballistix DDR5', 'DDR5', 16, 5600, '36-36-36-76', 'Buena opción DDR5 económica.', 'https://www.crucial.com/media/ballistix_ddr5.png', 'AMD Ryzen 7000 / Intel 12-13 Gen', 119.99);


INSERT INTO motherboard_ram_compatibility (motherboard_id, ram_id) VALUES
-- Ejemplos de compatibilidad DDR5 con placas AMD Ryzen 7000 y Intel 12-13 Gen
(1, 1), (1, 2), (1, 3), (1, 4), (1, 9), (1, 10), (1, 13), (1, 17), (1, 18), (1, 20),
(2, 1), (2, 2), (2, 3), (2, 4),
(3, 1), (3, 2), (3, 3), (3, 4),
(4, 1), (4, 2), (4, 3), (4, 4),
(5, 1), (5, 3), (5, 9), (5, 13),
(6, 1), (6, 2), (6, 10), (6, 17),
(7, 1), (7, 3), (7, 9), (7, 20),
(8, 1), (8, 4), (8, 18),
-- Ejemplos de compatibilidad DDR4 con placas AMD Ryzen 3000/5000 y Intel 10-11 Gen
(17, 5), (17, 6), (17, 7), (17, 8), (17, 11), (17, 12), (17, 14), (17, 15), (17, 16), (17, 19),
(18, 5), (18, 6), (18, 7), (18, 8),
(19, 5), (19, 6), (19, 7), (19, 8),
(20, 5), (20, 6), (20, 7), (20, 8),
(25, 5), (25, 6), (25, 7), (25, 8),
(26, 5), (26, 6), (26, 7), (26, 8),
(27, 5), (27, 6), (27, 7), (27, 8),
(28, 5), (28, 6), (28, 7), (28, 8),
(29, 5), (29, 6), (29, 7), (29, 8),
(30, 5), (30, 6), (30, 7), (30, 8);

------------------------------------------------------------------------------------------

-- Tabla de compatibilidad CPU – Motherboard
CREATE TABLE motherboard_cpu_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    motherboard_id INT,
    cpu_id INT,
    FOREIGN KEY (motherboard_id) REFERENCES motherboards(id),
    FOREIGN KEY (cpu_id) REFERENCES procesadores(id)
);

-- Poblar la tabla con compatibilidad según socket/plataforma

-- AMD Ryzen 7000 / Threadripper
INSERT INTO motherboard_cpu_compatibility (motherboard_id, cpu_id) VALUES
-- ASUS ROG Crosshair X670E
(1, 2), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12), (1, 13), (1, 14), (1, 15),
-- MSI MEG X670E GODLIKE
(2, 2), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10),
-- Gigabyte X670 AORUS Master
(3, 2), (3, 5), (3, 6), (3, 7), (3, 8),
-- ASRock X670E Taichi
(4, 2), (4, 5), (4, 6), (4, 7), (4, 8);

-- AMD Ryzen 5000 / 3000 (DDR4)
INSERT INTO motherboard_cpu_compatibility (motherboard_id, cpu_id) VALUES
-- ASUS Prime B550-PLUS
(17, 10), (17, 11), (17, 12), (17, 13), (17, 14),
-- MSI B550 Tomahawk
(18, 10), (18, 11), (18, 12),
-- Gigabyte B550 AORUS Elite
(19, 10), (19, 11), (19, 12),
-- ASRock B550 Steel Legend
(20, 10), (20, 11), (20, 12);

-- Intel Raptor Lake / Alder Lake
INSERT INTO motherboard_cpu_compatibility (motherboard_id, cpu_id) VALUES
-- ASUS ROG Strix Z790-E
(9, 20), (9, 22), (9, 23), (9, 24), (9, 25), (9, 26), (9, 27), (9, 28), (9, 29), (9, 30),
-- MSI Z790 Godlike
(10, 20), (10, 22), (10, 23), (10, 24), (10, 25),
-- Gigabyte Z790 AORUS Master
(11, 20), (11, 22), (11, 23), (11, 24),
-- ASRock Z790 Taichi
(12, 20), (12, 22), (12, 23), (12, 24),
-- ASUS TUF Gaming Z690-Plus
(13, 22), (13, 23), (13, 24), (13, 25),
-- MSI MPG Z690 Carbon WiFi
(14, 22), (14, 23), (14, 24),
-- Gigabyte Z690 AORUS Elite AX
(15, 22), (15, 23), (15, 24),
-- ASRock Z690M Steel Legend
(16, 22), (16, 23), (16, 24);

-----------------------------------------------------------------------------------

-- 7) Placa de video
CREATE TABLE gpus (
    id INT PRIMARY KEY,
    marca VARCHAR(50),
    nombre VARCHAR(100),
    chip VARCHAR(50),
    vram_gb INT,
    clock_base DECIMAL(5,2),
    clock_boost DECIMAL(5,2),
    tdp_watts INT,
    interface VARCHAR(50),
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE motherboard_gpu_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    motherboard_id INT,
    gpu_id INT,
    FOREIGN KEY (motherboard_id) REFERENCES motherboards(id),
    FOREIGN KEY (gpu_id) REFERENCES gpus(id)
);

INSERT INTO gpus (id, marca, nombre, chip, vram_gb, clock_base, clock_boost, tdp_watts, interface, detalle, foto, precio) VALUES
-- NVIDIA
(1, 'NVIDIA', 'RTX 4090', 'AD102', 24, 2.23, 2.52, 450, 'PCIe 4.0 x16', 'GPU tope de gama para gaming y creación de contenido.', 'https://www.nvidia.com/rtx-4090.png', 2499.99),
(2, 'NVIDIA', 'RTX 4080', 'AD103', 16, 2.21, 2.51, 320, 'PCIe 4.0 x16', 'Excelente rendimiento en juegos AAA y ray tracing.', 'https://www.nvidia.com/rtx-4080.png', 1199.99),
(3, 'NVIDIA', 'RTX 4070 Ti', 'AD104', 12, 2.31, 2.61, 285, 'PCIe 4.0 x16', 'Alta eficiencia para gaming 1440p/4K.', 'https://www.nvidia.com/rtx-4070ti.png', 799.99),
-- AMD
(4, 'AMD', 'Radeon RX 7900 XTX', 'Navi 31', 24, 2.3, 2.5, 355, 'PCIe 4.0 x16', 'GPU tope de gama de AMD para juegos y render.', 'https://www.amd.com/rx-7900xtx.png', 999.99),
(5, 'AMD', 'Radeon RX 7900 XT', 'Navi 31', 20, 2.2, 2.4, 300, 'PCIe 4.0 x16', 'Rendimiento alto en 4K con buena eficiencia.', 'https://www.amd.com/rx-7900xt.png', 899.99),
(6, 'AMD', 'Radeon RX 7800 XT', 'Navi 32', 16, 2.0, 2.3, 230, 'PCIe 4.0 x16', 'Ideal para gaming 1440p y creación de contenido.', 'https://www.amd.com/rx-7800xt.png', 699.99),
(7, 'NVIDIA', 'RTX 4060 Ti', 'AD106', 8, 2.31, 2.61, 220, 'PCIe 4.0 x16', 'Buena opción para gaming 1080p/1440p.', 'https://www.nvidia.com/rtx-4060ti.png', 399.99),
(8, 'AMD', 'Radeon RX 7600', 'Navi 24', 8, 1.9, 2.3, 165, 'PCIe 4.0 x16', 'Económica y eficiente para juegos en Full HD.', 'https://www.amd.com/rx-7600.png', 299.99);

INSERT INTO motherboard_gpu_compatibility (motherboard_id, gpu_id) VALUES
-- Todas las placas X670 / B650 soportan PCIe 4.0 x16
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6),
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6),
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6),
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6),
(5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6),
(6, 1), (6, 2), (6, 3), (6, 4), (6, 5), (6, 6),
-- Placas Intel Z790 / Z690
(9, 1), (9, 2), (9, 3), (9, 4), (9, 5), (9, 6),
(10, 1), (10, 2), (10, 3), (10, 4), (10, 5), (10, 6),
(11, 1), (11, 2), (11, 3), (11, 4), (11, 5), (11, 6),
(12, 1), (12, 2), (12, 3), (12, 4), (12, 5), (12, 6),

(13, 1), (13, 2), (13, 3), (13, 4), (13, 5), (13, 6),
(14, 1), (14, 2), (14, 3), (14, 4), (14, 5), (14, 6),
(15, 1), (15, 2), (15, 3), (15, 4), (15, 5), (15, 6),
(16, 1), (16, 2), (16, 3), (16, 4), (16, 5), (16, 6);

------------------------------------------------------------------------------------------

-- 8) Disco 1
CREATE TABLE storage_devices (
    id INT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(100),
    tipo VARCHAR(20),          -- SSD, NVMe, HDD
    capacidad_gb INT,
    interfaz VARCHAR(20),      -- SATA III, NVMe PCIe 4.0, etc.
    velocidad_read DECIMAL(6,2),  -- en MB/s
    velocidad_write DECIMAL(6,2), -- en MB/s
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE motherboard_storage_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    motherboard_id INT,
    storage_id INT,
    FOREIGN KEY (motherboard_id) REFERENCES motherboards(id),
    FOREIGN KEY (storage_id) REFERENCES storage_devices(id)
);

INSERT INTO storage_devices (id, marca, modelo, tipo, capacidad_gb, interfaz, velocidad_read, velocidad_write, detalle, foto, precio) VALUES
-- SSD NVMe
(1, 'Samsung', '980 PRO', 'NVMe', 1000, 'PCIe 4.0 x4', 7000, 5000, 'SSD NVMe de alto rendimiento para gaming y creación de contenido.', 'https://www.samsung.com/980pro.png', 149.99),
(2, 'WD', 'Black SN850X', 'NVMe', 2000, 'PCIe 4.0 x4', 7300, 6600, 'Ideal para PC de alto rendimiento y juegos AAA.', 'https://www.westerndigital.com/sn850x.png', 249.99),
(3, 'Crucial', 'P5 Plus', 'NVMe', 1000, 'PCIe 4.0 x4', 6600, 5000, 'SSD NVMe confiable para tareas intensivas.', 'https://www.crucial.com/p5plus.png', 129.99),
-- SSD SATA
(4, 'Samsung', '870 EVO', 'SSD', 1000, 'SATA III', 560, 530, 'SSD SATA confiable para reemplazo de discos mecánicos.', 'https://www.samsung.com/870evo.png', 99.99),
(5, 'Crucial', 'MX500', 'SSD', 2000, 'SATA III', 560, 510, 'Buena relación precio/rendimiento para almacenamiento.', 'https://www.crucial.com/mx500.png', 179.99),
-- HDD
(6, 'Seagate', 'Barracuda', 'HDD', 2000, 'SATA III', 220, 220, 'Disco duro mecánico económico para almacenamiento masivo.', 'https://www.seagate.com/barracuda.png', 49.99),
(7, 'WD', 'Blue', 'HDD', 4000, 'SATA III', 240, 240, 'HDD confiable para backups y almacenamiento general.', 'https://www.westerndigital.com/blue.png', 89.99);

-- Todas las placas modernas soportan NVMe y SATA según sus slots
INSERT INTO motherboard_storage_compatibility (motherboard_id, storage_id) VALUES
-- X670 / B650
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7),
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7),
(3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7),
(4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7),
-- Z790 / Z690 Intel
(9, 1), (9, 2), (9, 3), (9, 4), (9, 5), (9, 6), (9, 7),
(10, 1), (10, 2), (10, 3), (10, 4), (10, 5), (10, 6), (10, 7),
(11, 1), (11, 2), (11, 3), (11, 4), (11, 5), (11, 6), (11, 7),
(12, 1), (12, 2), (12, 3), (12, 4), (12, 5), (12, 6), (12, 7);

---------------------------------------------------------------------------------------------

-- 9) Gabinete
CREATE TABLE cases (
    id INT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(100),
    tipo VARCHAR(20),           -- Full Tower, Mid Tower, Mini Tower, Small Form Factor
    compatibilidad_motherboard VARCHAR(50), -- ATX, Micro-ATX, Mini-ITX, E-ATX
    max_gpu_mm INT,             -- Largo máximo de GPU en mm
    max_cpu_cooler_mm INT,      -- Altura máxima de cooler en mm
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE motherboard_case_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    motherboard_id INT,
    case_id INT,
    FOREIGN KEY (motherboard_id) REFERENCES motherboards(id),
    FOREIGN KEY (case_id) REFERENCES cases(id)
);

INSERT INTO cases (id, marca, modelo, tipo, compatibilidad_motherboard, max_gpu_mm, max_cpu_cooler_mm, detalle, foto, precio) VALUES
(1, 'NZXT', 'H710', 'Mid Tower', 'ATX, Micro-ATX, Mini-ITX', 413, 185, 'Gabinete elegante con buena ventilación y gestión de cables.', 'https://www.nzxt.com/h710.png', 169.99),
(2, 'Corsair', '4000D Airflow', 'Mid Tower', 'ATX, Micro-ATX, Mini-ITX', 360, 170, 'Excelente flujo de aire y espacio para refrigeración líquida.', 'https://www.corsair.com/4000d.png', 109.99),
(3, 'Fractal Design', 'Define 7', 'Full Tower', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 315, 185, 'Gabinete premium, silencioso y con gran modularidad.', 'https://www.fractaldesign.com/define7.png', 189.99),
(4, 'Cooler Master', 'NR600', 'Mid Tower', 'ATX, Micro-ATX, Mini-ITX', 410, 166, 'Diseño minimalista con buen flujo de aire.', 'https://www.coolermaster.com/nr600.png', 99.99),
(5, 'Lian Li', 'PC-O11 Dynamic', 'Mid Tower', 'ATX, Micro-ATX, Mini-ITX', 420, 155, 'Ideal para sistemas con refrigeración líquida y visualización de hardware.', 'https://www.lian-li.com/pc-o11.png', 149.99),
(6, 'Phanteks', 'Eclipse P500A', 'Mid Tower', 'ATX, Micro-ATX, Mini-ITX', 435, 200, 'Gran ventilación y espacio para componentes de alto rendimiento.', 'https://www.phanteks.com/eclipse-p500a.png', 139.99),
(7, 'Be Quiet!', 'Dark Base 700', 'Full Tower', 'E-ATX, ATX, Micro-ATX, Mini-ITX', 280, 185, 'Gabinete silencioso con alta calidad de construcción.', 'https://www.bequiet.com/darkbase700.png', 199.99),
(8, 'Thermaltake', 'H200 TG', 'Mid Tower', 'ATX, Micro-ATX, Mini-ITX', 320, 165, 'Diseño compacto con panel de vidrio templado.', 'https://www.thermaltake.com/h200tg.png', 89.99),
(9, 'Cooler Master', 'MasterBox NR200P', 'Small Form Factor', 'Mini-ITX', 330, 155, 'Gabinete compacto con gran capacidad de refrigeración.', 'https://www.coolermaster.com/nr200p.png', 99.99),
(10, 'NZXT', 'H210', 'Small Form Factor', 'Mini-ITX', 325, 165, 'Gabinete compacto con diseño moderno y buena gestión de cables.', 'https://www.nzxt.com/h210.png', 99.99);

-- Ejemplos de compatibilidad según tamaño de motherboard
-- Mid Tower compatible con ATX, Micro-ATX, Mini-ITX
INSERT INTO motherboard_case_compatibility (motherboard_id, case_id) VALUES
(1, 1), (1, 2), (1, 4), (1, 5), (1, 6),
(2, 1), (2, 2), (2, 4), (2, 5), (2, 6),
(3, 1), (3, 2), (3, 4), (3, 5), (3, 6),
(4, 1), (4, 2), (4, 4), (4, 5), (4, 6),
-- Full Tower compatible con E-ATX, ATX, Micro-ATX, Mini-ITX
(3, 3), (7, 3),

-- Small Form Factor compatible con Mini-ITX
(9, 9), (10, 10);
------------------------------------------------------------------------------------------

-- 10) Fuente 1
CREATE TABLE psu (
    id INT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(100),
    potencia_watts INT,                -- Potencia total en Watts
    certificacion VARCHAR(20),        -- 80 Plus Bronze, Silver, Gold, Platinum, Titanium
    modular BOOLEAN DEFAULT TRUE,      -- Modular o no
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE psu_case_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    case_id INT,
    psu_id INT,
    tipo_compatibilidad VARCHAR(50), -- ATX, SFX, etc.
    FOREIGN KEY (case_id) REFERENCES cases(id),
    FOREIGN KEY (psu_id) REFERENCES psu(id)
);

INSERT INTO psu (id, marca, modelo, potencia_watts, certificacion, modular, detalle, foto, precio) VALUES
(1, 'Corsair', 'RM850x', 850, '80 Plus Gold', TRUE, 'Fuente totalmente modular, silenciosa y eficiente.', 'https://www.corsair.com/rm850x.png', 159.99),
(2, 'EVGA', 'SuperNOVA 750 G5', 750, '80 Plus Gold', TRUE, 'Excelente rendimiento y estabilidad para gaming y creación.', 'https://www.evga.com/supernova750g5.png', 139.99),
(3, 'Seasonic', 'Focus GX-650', 650, '80 Plus Gold', TRUE, 'Fuente confiable con excelente eficiencia y construcción.', 'https://www.seasonic.com/focus-gx-650.png', 129.99),
(4, 'Cooler Master', 'V850', 850, '80 Plus Platinum', TRUE, 'Alta eficiencia y potencia para sistemas exigentes.', 'https://www.coolermaster.com/v850.png', 179.99),
(5, 'be quiet!', 'Straight Power 11 750W', 750, '80 Plus Platinum', TRUE, 'Fuente silenciosa, estable y modular para PCs de alto rendimiento.', 'https://www.bequiet.com/straight-power-11-750.png', 169.99),
(6, 'Thermaltake', 'Toughpower GF1 850W', 850, '80 Plus Gold', TRUE, 'Fuente premium con cableado completamente modular.', 'https://www.thermaltake.com/toughpower-gf1-850w.png', 159.99),
(7, 'NZXT', 'C850', 850, '80 Plus Gold', TRUE, 'Fuente modular elegante con cables planos de fácil instalación.', 'https://www.nzxt.com/c850.png', 149.99);

-- Ejemplos de compatibilidad: la mayoría de las Mid/Full Towers soportan ATX
INSERT INTO psu_case_compatibility (case_id, psu_id, tipo_compatibilidad) VALUES
(1, 1, 'ATX'),
(1, 2, 'ATX'),
(1, 3, 'ATX'),
(2, 1, 'ATX'),
(2, 2, 'ATX'),
(2, 3, 'ATX'),
(3, 4, 'ATX'),
(4, 5, 'ATX'),
(5, 6, 'ATX'),
(6, 7, 'ATX'),
(7, 4, 'ATX');


------------------------------------------------------------------------------------------

-- 11) Monitor
CREATE TABLE monitors (
    id INT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(100),
    tamano_pulgadas DECIMAL(4,1),  -- Tamaño en pulgadas
    resolucion VARCHAR(20),        -- Ej: 1920x1080, 2560x1440, 3840x2160
    tipo_panel VARCHAR(20),        -- IPS, TN, VA, OLED
    tasa_refresco_hz INT,          -- Frecuencia de actualización
    soporte_sync VARCHAR(20),      -- G-Sync, FreeSync, o Ninguno
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE monitor_gpu_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    monitor_id INT,
    gpu_id INT,
    max_resolucion VARCHAR(20),    -- Máxima resolución soportada por la GPU
    max_tasa_refresco INT,         -- Máxima tasa de refresco soportada
    FOREIGN KEY (monitor_id) REFERENCES monitors(id),
    FOREIGN KEY (gpu_id) REFERENCES gpus(id)
);

INSERT INTO monitors (id, marca, modelo, tamano_pulgadas, resolucion, tipo_panel, tasa_refresco_hz, soporte_sync, detalle, foto, precio) VALUES
(1, 'ASUS', 'ROG Swift PG32UQX', 32, '3840x2160', 'IPS', 144, 'G-Sync', 'Monitor 4K HDR con 144Hz y G-Sync para gaming extremo.', 'https://www.asus.com/pg32uqx.png', 2999.99),
(2, 'LG', 'UltraGear 27GN950', 27, '3840x2160', 'IPS', 144, 'FreeSync', 'Monitor 4K con panel Nano IPS, ideal para gaming y creación de contenido.', 'https://www.lg.com/ultragear-27gn950.png', 899.99),
(3, 'Samsung', 'Odyssey G7', 32, '2560x1440', 'VA', 240, 'G-Sync/FreeSync', 'Monitor curvo QHD con alta frecuencia y baja latencia.', 'https://www.samsung.com/odyssey-g7.png', 699.99),
(4, 'Dell', 'Alienware AW3423DW', 34, '3440x1440', 'OLED', 175, 'G-Sync', 'Monitor ultrawide OLED para gaming y edición profesional.', 'https://www.dell.com/aw3423dw.png', 1299.99),
(5, 'Acer', 'Predator XB273K', 27, '3840x2160', 'IPS', 144, 'G-Sync', 'Monitor 4K con 144Hz y buena calibración de color.', 'https://www.acer.com/predator-xb273k.png', 899.99),
(6, 'MSI', 'Optix MAG274QRF-QD', 27, '2560x1440', 'IPS', 165, 'FreeSync', 'Monitor QHD con Quantum Dot y alta frecuencia para gaming.', 'https://www.msi.com/optix-mag274qrf.png', 499.99),
(7, 'BenQ', 'EX3501R', 35, '3440x1440', 'VA', 100, 'FreeSync', 'Monitor ultrawide curvo para entretenimiento y productividad.', 'https://www.benq.com/ex3501r.png', 549.99);

-- Ejemplo: Monitores 4K requieren GPU potente para altas tasas de refresco
INSERT INTO monitor_gpu_compatibility (monitor_id, gpu_id, max_resolucion, max_tasa_refresco) VALUES
(1, 1, '3840x2160', 144),
(1, 2, '3840x2160', 120),
(2, 1, '3840x2160', 144),
(2, 3, '3840x2160', 144),
(3, 4, '2560x1440', 240),
(4, 5, '3440x1440', 175),
(5, 2, '3840x2160', 144),
(6, 3, '2560x1440', 165),
(7, 6, '3440x1440', 100);

------------------------------------------------------------------------------------------

-- 12) Periférico 1
CREATE TABLE peripherals (
    id INT PRIMARY KEY,
    tipo VARCHAR(50),             -- Teclado, Mouse, Auriculares, Gamepad, etc.
    marca VARCHAR(50),
    modelo VARCHAR(100),
    conexion VARCHAR(20),         -- USB, Wireless, Bluetooth
    retroiluminacion BOOLEAN DEFAULT FALSE,
    dpi INT,                      -- Para mouse
    respuesta_ms INT,             -- Para teclado o mouse
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE peripheral_pc_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    peripheral_id INT,
    cpu_id INT,
    gpu_id INT,
    motherboard_id INT,
    FOREIGN KEY (peripheral_id) REFERENCES peripherals(id),
    FOREIGN KEY (cpu_id) REFERENCES procesadores(id),
    FOREIGN KEY (gpu_id) REFERENCES gpus(id),
    FOREIGN KEY (motherboard_id) REFERENCES motherboards(id)
);

INSERT INTO peripherals (id, tipo, marca, modelo, conexion, retroiluminacion, dpi, respuesta_ms, detalle, foto, precio) VALUES
(1, 'Teclado', 'Corsair', 'K100 RGB', 'USB', TRUE, NULL, 1, 'Teclado mecánico con retroiluminación RGB y macros programables.', 'https://www.corsair.com/k100.png', 249.99),
(2, 'Mouse', 'Logitech', 'G502 HERO', 'USB', TRUE, 16000, 1, 'Mouse gaming con sensor HERO 16K, peso ajustable y macros.', 'https://www.logitech.com/g502.png', 79.99),
(3, 'Auriculares', 'HyperX', 'Cloud II', 'USB', FALSE, NULL, NULL, 'Auriculares con sonido envolvente 7.1 y micrófono extraíble.', 'https://www.hyperx.com/cloud-ii.png', 99.99),
(4, 'Gamepad', 'Sony', 'DualSense', 'Wireless', FALSE, NULL, NULL, 'Control inalámbrico de PlayStation 5 compatible con PC.', 'https://www.sony.com/dualsense.png', 69.99),
(5, 'Teclado', 'Razer', 'BlackWidow V3', 'USB', TRUE, NULL, 1, 'Teclado mecánico con switches Razer y retroiluminación RGB.', 'https://www.razer.com/blackwidow-v3.png', 139.99),
(6, 'Mouse', 'Razer', 'DeathAdder V2', 'USB', TRUE, 20000, 1, 'Mouse ergonómico para gaming con sensor óptico de alta precisión.', 'https://www.razer.com/deathadder-v2.png', 69.99),
(7, 'Auriculares', 'SteelSeries', 'Arctis 7', 'Wireless', TRUE, NULL, NULL, 'Auriculares inalámbricos con sonido envolvente y micrófono retráctil.', 'https://www.steelseries.com/arctis7.png', 149.99),
(8, 'Gamepad', 'Xbox', 'Xbox Wireless Controller', 'Wireless', FALSE, NULL, NULL, 'Control oficial de Xbox compatible con PC y consolas.', 'https://www.xbox.com/xbox-controller.png', 59.99);

INSERT INTO peripheral_pc_compatibility (peripheral_id, cpu_id, gpu_id, motherboard_id) VALUES
(1, 6, 20, 9),
(2, 6, 20, 9),
(3, 6, 20, 9),
(4, 6, 20, 9),
(5, 2, 18, 10),
(6, 2, 18, 10),
(7, 2, 18, 10),
(8, 2, 18, 10);

------------------------------------------------------------------------------------------

-- 13) Periférico 2
CREATE TABLE peripherals2 (
    id INT PRIMARY KEY,
    tipo VARCHAR(50),             -- Webcam, Micrófono, Altavoz, Pad de carga, Hub, etc.
    marca VARCHAR(50),
    modelo VARCHAR(100),
    conexion VARCHAR(20),         -- USB, Wireless, Bluetooth
    calidad_video VARCHAR(20),    -- Para webcams (ej: 1080p, 4K)
    frecuencia_mic INT,           -- Para micrófonos (Hz)
    potencia_w INT,               -- Para altavoces
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE peripheral2_pc_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    peripheral2_id INT,
    cpu_id INT,
    gpu_id INT,
    motherboard_id INT,
    FOREIGN KEY (peripheral2_id) REFERENCES peripherals2(id),
    FOREIGN KEY (cpu_id) REFERENCES procesadores(id),
    FOREIGN KEY (gpu_id) REFERENCES gpus(id),
    FOREIGN KEY (motherboard_id) REFERENCES motherboards(id)
);

INSERT INTO peripherals2 (id, tipo, marca, modelo, conexion, calidad_video, frecuencia_mic, potencia_w, detalle, foto, precio) VALUES
(1, 'Webcam', 'Logitech', 'C920 HD', 'USB', '1080p', NULL, NULL, 'Webcam Full HD con enfoque automático y micrófono dual integrado.', 'https://www.logitech.com/c920.png', 79.99),
(2, 'Micrófono', 'Blue', 'Yeti', 'USB', NULL, 48000, NULL, 'Micrófono USB profesional con múltiples patrones de captura.', 'https://www.bluemic.com/yeti.png', 129.99),
(3, 'Altavoz', 'Creative', 'Pebble V3', 'USB', NULL, NULL, 8, 'Altavoces estéreo compactos con sonido claro y graves profundos.', 'https://www.creative.com/pebble-v3.png', 39.99),
(4, 'Pad de carga', 'Anker', 'PowerWave', 'Wireless', NULL, NULL, NULL, 'Pad de carga inalámbrico compatible con smartphones y accesorios.', 'https://www.anker.com/powerwave.png', 29.99),
(5, 'Hub', 'Sabrent', 'USB 3.0 7-Port', 'USB', NULL, NULL, NULL, 'Hub USB con 7 puertos para expandir la conectividad de tu PC.', 'https://www.sabrent.com/usb-hub.png', 49.99),
(6, 'Webcam', 'Razer', 'Kiyo Pro', 'USB', '1080p', NULL, NULL, 'Webcam Full HD con alta sensibilidad a luz y streaming profesional.', 'https://www.razer.com/kiyo-pro.png', 199.99),
(7, 'Micrófono', 'HyperX', 'SoloCast', 'USB', NULL, 44100, NULL, 'Micrófono compacto plug & play con sonido nítido.', 'https://www.hyperx.com/solocast.png', 59.99),
(8, 'Altavoz', 'Logitech', 'Z407', 'Wireless', NULL, NULL, 80, 'Altavoces con conexión Bluetooth y control de volumen inalámbrico.', 'https://www.logitech.com/z407.png', 89.99);

INSERT INTO peripheral2_pc_compatibility (peripheral2_id, cpu_id, gpu_id, motherboard_id) VALUES
(1, 6, 20, 9),
(2, 6, 20, 9),
(3, 6, 20, 9),
(4, 6, 20, 9),
(5, 6, 20, 9),
(6, 2, 18, 10),
(7, 2, 18, 10),
(8, 2, 18, 10);

------------------------------------------------------------------------------------------

-- 14) Placa WiFi
CREATE TABLE wifi_cards (
    id INT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(100),
    estandar VARCHAR(20),          -- Wi-Fi 5, Wi-Fi 6, Wi-Fi 6E, Wi-Fi 7
    conexion VARCHAR(20),          -- PCIe, USB
    velocidad_mbps INT,            -- Velocidad máxima en Mbps
    antenas INT,                   -- Número de antenas
    detalle TEXT,
    foto VARCHAR(255),
    precio DECIMAL(10,2)
);

CREATE TABLE wifi_card_pc_compatibility (
    id INT PRIMARY KEY AUTO_INCREMENT,
    wifi_card_id INT,
    cpu_id INT,
    gpu_id INT,
    motherboard_id INT,
    FOREIGN KEY (wifi_card_id) REFERENCES wifi_cards(id),
    FOREIGN KEY (cpu_id) REFERENCES procesadores(id),
    FOREIGN KEY (gpu_id) REFERENCES gpus(id),
    FOREIGN KEY (motherboard_id) REFERENCES motherboards(id)
);

INSERT INTO wifi_cards (id, marca, modelo, estandar, conexion, velocidad_mbps, antenas, detalle, foto, precio) VALUES
(1, 'TP-Link', 'Archer TX3000E', 'Wi-Fi 6', 'PCIe', 2400, 2, 'Placa Wi-Fi 6 con Bluetooth 5.0, ideal para gaming y streaming.', 'https://www.tp-link.com/archer-tx3000e.png', 69.99),
(2, 'ASUS', 'PCE-AX58BT', 'Wi-Fi 6', 'PCIe', 3000, 2, 'Tarjeta Wi-Fi PCIe con soporte Bluetooth 5.0 y MU-MIMO.', 'https://www.asus.com/pce-ax58bt.png', 79.99),
(3, 'Intel', 'Wi-Fi 6E AX210', 'Wi-Fi 6E', 'M.2', 2400, 2, 'Módulo M.2 con Wi-Fi 6E y Bluetooth 5.2.', 'https://www.intel.com/ax210.png', 59.99),
(4, 'TP-Link', 'Archer T4U Plus', 'Wi-Fi 5', 'USB', 1200, 2, 'Adaptador USB Wi-Fi AC1200 con antenas externas.', 'https://www.tp-link.com/archer-t4u-plus.png', 29.99),
(5, 'ASUS', 'PCE-AXE58BT', 'Wi-Fi 6E', 'PCIe', 3000, 2, 'Placa PCIe Wi-Fi 6E con baja latencia para gaming y streaming.', 'https://www.asus.com/pce-axe58bt.png', 89.99),
(6, 'Gigabyte', 'GC-WBAX200', 'Wi-Fi 6', 'PCIe', 2400, 2, 'Placa Wi-Fi 6 con Bluetooth 5.0 y soporte MU-MIMO.', 'https://www.gigabyte.com/gc-wbax200.png', 64.99);

INSERT INTO wifi_card_pc_compatibility (wifi_card_id, cpu_id, gpu_id, motherboard_id) VALUES
(1, 6, 20, 5),
(2, 6, 20, 6),
(3, 2, 18, 10),
(4, 2, 18, 11),
(5, 6, 20, 7),
(6, 6, 20, 8);

------------------------------------------------------------------------------------------

-- 17) Armado de PC
CREATE TABLE pc_build_options (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10,2)
);

INSERT INTO pc_build_options (id, nombre, precio) VALUES
(1, 'Armar la PC', 4999.00),
(2, 'No armar la PC', 0.00);

------------------------------------------------------------------------------------------

-- 18) Sistema Operativo
CREATE TABLE sistema_operativo (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    detalle VARCHAR(100),
    precio DECIMAL(10,2) NOT NULL
);

INSERT INTO sistema_operativo (id, nombre, detalle, precio) VALUES
(1, 'No agregar sistema operativo', 0),
--(2, 'Instalación de sistema operativo (mano de obra sin licencia)', 3999),
-- Windows
(2, 'Windows 10 Home', 'Licencia digital OEM', 150),
(3, 'Windows 10 Pro', 'Licencia original', 200),
(4, 'Windows 11 Home', 'Single Language', 300),
(5, 'Windows 11 Pro', 'Single Language', 350),
-- Linux
(6, 'Ubuntu 22.04 LTS', 'Versión gratuita, se cobra costo de instalación', 10),
(7, 'Ubuntu 24.04 LTS', 'Versión gratuita, se cobra costo de instalación', 10),
(8, 'Linux Mint', 'Versión gratuita, se cobra costo de instalación', 10),
(9, 'Debian', 'Versión gratuita, se cobra costo de instalación', 10),
(10, 'Fedora', 'Versión gratuita, se cobra costo de instalación', 10),
(11, 'Arch Linux', 'Versión gratuita, se cobra costo de instalación', 10),
-- Otros
(12, 'ChromeOS Flex', 'Versión gratuita, se cobra costo de instalación', 10),
(13, 'FreeDOS', 'Versión gratuita, se cobra costo de instalación', 10),
(14, 'Ninguno', 'Versión gratuita, se cobra costo de instalación', 10);



