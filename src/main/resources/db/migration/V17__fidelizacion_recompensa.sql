-- Categorías principales (sin padre)
INSERT INTO categoria (id_categoria, nombre, descripcion, estado, tipo, id_padre) VALUES
                                                                                      (4,  'Cortes', 'Servicios de corte de cabello diseñados para adaptarse a diferentes estilos, tendencias y preferencias del cliente.', true, 'SERVICIO', NULL),
                                                                                      (23, 'Coloración y Corrección', 'Servicios de coloración del cabello que incluyen aplicación de tintes para cambiar, realzar o corregir.', true, 'SERVICIO', NULL),
                                                                                      (16, 'Barba', 'Servicios especializados en el cuidado y diseño de barba, incluyendo perfilado, recorte y afeitado.', true, 'SERVICIO', NULL),
                                                                                      (12, 'Tratamientos Capilares', 'Tratamientos enfocados en la salud del cabello, orientados a hidratar, nutrir y fortalecer la fibra capilar.', true, 'SERVICIO', NULL),
                                                                                      (24, 'Estilizado', 'Servicios de peinado con acabado profesional para uso diario o eventos.', true, 'SERVICIO', NULL),
                                                                                      (20, 'HERRAMIENTAS PROFESIONALES', 'Equipos utilizados por barberos para cortes y arreglos.', true, 'PRODUCTO', NULL),
                                                                                      (2,  'AFEITADO Y RASURADO', 'Productos diseñados para facilitar el afeitado, reducir irritaciones y mejorar la experiencia de rasurado.', true, 'PRODUCTO', NULL),
                                                                                      (15, 'STYLING / FIJACIÓN', 'Productos utilizados para dar forma, fijación y estilo al cabello, permitiendo distintos peinados y acabados.', true, 'PRODUCTO', NULL),
                                                                                      (8,  'CUIDADO DE BARBA Y BIGOTE', 'Productos especializados para el mantenimiento, nutrición y estilizado de la barba y el vello facial.', true, 'PRODUCTO', NULL),
                                                                                      (10, 'CUIDADO DEL CABELLO', 'Productos destinados a la limpieza, hidratación y tratamiento del cabello, ayudando a mantenerlo sano y fuerte', true, 'PRODUCTO', NULL);

-- Subcategorías
INSERT INTO categoria (id_categoria, nombre, descripcion, estado, tipo, id_padre) VALUES
                                                                                      (34, 'Colorración', 'Aplicación de color en el cabello para lograr un cambio de imagen.', true, 'SERVICIO', 23),
                                                                                      (35, 'Decoloración', 'Proceso de aclarado del cabello para preparar bases más claras o cambios de color intensos.', true, 'SERVICIO', 23),
                                                                                      (36, 'Peinados y Styling', 'Servicios de peinado y acabado profesional adaptados a uso diario o eventos, logrando estilos definidos, naturales o elegantes según la ocasión del cliente.', true, 'SERVICIO', 24),
                                                                                      (37, 'Alisado y Control del Cabello', 'Técnicas de alisado y control del cabello que reducen el frizz y aportan un acabado liso, ordenado y manejable.', false, 'SERVICIO', 24),
                                                                                      (38, 'Ondas y Volumen', 'Servicios que aportan forma, movimiento y volumen al cabello mediante técnicas de estilizado con ondas o elevación natural.', true, 'SERVICIO', 24),
                                                                                      (25, 'Fade / Degradado', 'Corte con transición progresiva de cabello corto a largo para un acabado moderno y limpio.', true, 'SERVICIO', 4),
                                                                                      (26, 'Corte Clásico', 'Corte tradicional con líneas definidas y estilo conservador.', true, 'SERVICIO', 4),
                                                                                      (27, 'Cortes Texturizados', 'Cortes con mayor movimiento y textura en la parte superior, diseñados para un estilo actual, versátil y fácil de mantener.', true, 'SERVICIO', 4),
                                                                                      (28, 'Cortes Estilizados', 'Cortes con diseño no tradicional que priorizan la forma, textura y personalización del estilo.', true, 'SERVICIO', 4),
                                                                                      (29, 'Mantenimiento de Barba', 'Servicios enfocados en el cuidado y mantenimiento de la barba, incluyendo recorte, perfilado y definición de forma para una apariencia ordenada y prolija.', true, 'SERVICIO', 16),
                                                                                      (30, 'Afeitado y Diseño Facial', 'Servicios de afeitado y diseño avanzado de barba que incluyen eliminación total del vello facial o creación de estilos personalizados según el rostro del cliente.', true, 'SERVICIO', 16),
                                                                                      (31, 'Hidratación y Nutrición', 'Servicios que aportan hidratación y nutrientes esenciales para mejorar la suavidad, brillo y salud del cabello.', true, 'SERVICIO', 12),
                                                                                      (32, 'Reparación Capilar', 'Tratamientos enfocados en recuperar el cabello dañado por procesos químicos, calor o factores ambientales.', true, 'SERVICIO', 12),
                                                                                      (33, 'Control de Caída y Fortalecimiento Capilar', 'Servicios enfocados en fortalecer el cuero cabelludo y la fibra capilar, ayudando a reducir la caída del cabello y mejorar su resistencia general.', true, 'SERVICIO', 12),
                                                                                      (39, 'Gel', NULL, true, 'PRODUCTO', 20),
                                                                                      (21, 'Máquinas de corte', 'Herramientas eléctricas para cortar cabello.', true, 'PRODUCTO', 20),
                                                                                      (22, 'Navajas', 'Uso para delineado y afeitado.', true, 'PRODUCTO', 20),
                                                                                      (1,  'Geles de afeitar', 'Mejoran la precisión durante el rasurado.', true, 'PRODUCTO', 2),
                                                                                      (3,  'Espumas de afeitar', 'Facilitan el deslizamiento de la cuchilla.', true, 'PRODUCTO', 2),
                                                                                      (17, 'Shampoo', 'Productos para la limpieza del cabello, eliminando grasa, suciedad e impurezas.', true, 'PRODUCTO', 10),
                                                                                      (18, 'Acondicionador', 'Productos que suavizan e hidratan el cabello, facilitando el peinado.', true, 'PRODUCTO', 10),
                                                                                      (19, 'Tratamientos capilares', 'Soluciones para problemas como caída, caspa o daño capilar.', true, 'PRODUCTO', 10);
-- Ajustar la secuencia para que los próximos ids no choquen
SELECT setval(pg_get_serial_sequence('categoria', 'id_categoria'),
              (SELECT MAX(id_categoria) FROM categoria));

ALTER TABLE reclamos ADD COLUMN detalle_solucion TEXT;

-- ============================================================
-- MÓDULO DE FIDELIZACIÓN Y RULETA
-- Este módulo administra:
--   • Tarjetas de fidelización por categoría.
--   • Acumulación de puntos mediante servicios y productos.
--   • Configuración de metas por categoría.
--   • Ruletas de premios.
--   • Historial de giros.
--   • Recompensas obtenidas y su canje.
-- La tabla 'recompensa' será eliminada en una migración V__18
-- ============================================================

-- ============================================================
--  ENUMS DE APOYO
-- ============================================================
CREATE TYPE estado_recompensa AS ENUM ( 'PENDIENTE', 'CANJEADO', 'VENCIDO', 'ANULADO' );
CREATE TYPE tipo_premio AS ENUM ( 'DESCUENTO', 'SERVICIO', 'PRODUCTO', 'CUPON');
CREATE TYPE tipo_alcance_fidelizacion AS ENUM ( 'SERVICIO', 'PRODUCTO', 'COMBO', 'CATEGORIA');
CREATE TYPE origen_fidelizacion AS ENUM ( 'RESERVA', 'VENTA', 'AJUSTE');

-- ============================================================
-- 1. FIDELIZACION_TARJETA
-- Una tarjeta representa el progreso de un cliente dentro de una categoría de fidelización.
-- Una tarjeta se reinicia cuando completa la meta definida para
-- su categoría, otorgando uno o más giros según la configuración.
-- ============================================================
CREATE TABLE fidelizacion_tarjeta (
    id_tarjeta SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_categoria INT NOT NULL,
    progreso INT NOT NULL DEFAULT 0,
    giros_disponibles INT NOT NULL DEFAULT 0,
    total_giros INT NOT NULL DEFAULT 0,
    ciclo_activo BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_tarjeta_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_tarjeta_categoria FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria),
    CONSTRAINT uq_tarjeta UNIQUE(id_cliente,id_categoria)
);

CREATE INDEX idx_fidelizacion_cliente   ON fidelizacion_tarjeta(id_cliente);
CREATE INDEX idx_fidelizacion_categoria ON fidelizacion_tarjeta(id_categoria);

-- ============================================================
-- 2 FIDELIZACION_REGLA
-- Define qué servicios o productos otorgan puntos de
-- fidelización al cliente.
-- Cada regla pertenece a una categoría de fidelización y
-- referencia únicamente un servicio o un producto.
-- ============================================================
CREATE TABLE fidelizacion_regla (
    id_regla SERIAL PRIMARY KEY,
    id_categoria INT NOT NULL,
    tipo_alcance tipo_alcance_fidelizacion NOT NULL,
    id_servicio INT NULL,
    id_producto INT NULL,
    puntos INT NOT NULL DEFAULT 1,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_regla_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
    CONSTRAINT fk_regla_servicio FOREIGN KEY (id_servicio) REFERENCES cortes(id_corte),
    CONSTRAINT fk_regla_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    CONSTRAINT chk_regla_alcance CHECK (
        ( tipo_alcance = 'SERVICIO' AND id_servicio IS NOT NULL AND id_producto IS NULL ) OR
        ( tipo_alcance = 'PRODUCTO' AND id_producto IS NOT NULL AND id_servicio IS NULL ) OR
        ( tipo_alcance = 'COMBO' AND id_servicio IS NOT NULL AND id_producto IS NOT NULL )OR
        ( tipo_alcance = 'CATEGORIA' AND id_servicio IS NULL AND id_producto IS NULL )
    )
);

CREATE INDEX idx_regla_categoria ON fidelizacion_regla(id_categoria);
CREATE INDEX idx_regla_servicio ON fidelizacion_regla(id_servicio);
CREATE INDEX idx_regla_producto ON fidelizacion_regla(id_producto);
CREATE INDEX idx_regla_categoria_activa ON fidelizacion_regla(id_categoria, activo);

-- ============================================================
-- 3. FIDELIZACION_MOVIMIENTO
-- Cada movimiento representa un cambio en el progreso de una tarjeta de fidelización.
-- Permite auditar exactamente qué operación incrementó o redujoel progreso del cliente.
-- Puede originarse por:
--   • Confirmación de una reserva.
--   • Venta de productos.
--   • Ajustes manuales realizados por un administrador.
-- Nunca debe modificarse una vez registrado; las correcciones se realizan agregando un nuevo movimiento.
-- ============================================================
CREATE TABLE fidelizacion_movimiento (
    id_movimiento SERIAL PRIMARY KEY,
    id_tarjeta INT NOT NULL,
    id_cliente INT NOT NULL,
    origen origen_fidelizacion NOT NULL,
    id_origen INT NOT NULL,
    puntos INT NOT NULL DEFAULT 1,
    descripcion VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_movimiento_tarjeta FOREIGN KEY (id_tarjeta) REFERENCES fidelizacion_tarjeta(id_tarjeta),
    CONSTRAINT fk_movimiento_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE INDEX idx_movimiento_tarjeta ON fidelizacion_movimiento(id_tarjeta);
CREATE INDEX idx_movimiento_cliente ON fidelizacion_movimiento(id_cliente);
CREATE INDEX idx_movimiento_origen  ON fidelizacion_movimiento(origen, id_origen);

-- ============================================================
-- 4. RULETA
-- Define una ruleta reutilizable.
-- Una ruleta puede asociarse a una o varias categorías de fidelización mediante la tabla ruleta_categoria.
-- El incremento_por_giro aumenta progresivamente la probabilidad del premio mayor según el historial del cliente.
-- ============================================================
CREATE TABLE ruleta (
    id_ruleta SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    tipo VARCHAR(50),
    activa BOOLEAN NOT NULL DEFAULT TRUE,
    incremento_por_giro DECIMAL(6,4) NOT NULL DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- ============================================================
-- 5. FIDELIZACION_CONFIGURACION
-- Configuración de fidelización por categoría.
-- Define:
--   • Si la fidelización está habilitada.
--   • La cantidad de puntos necesaria para completar la tarjeta.
--   • Si la tarjeta se crea automáticamente.
--   • Qué ruleta utilizar al completar la meta.
-- Existe una única configuración por categoría.
-- ============================================================
CREATE TABLE fidelizacion_configuracion (
    id_configuracion SERIAL PRIMARY KEY,
    id_categoria INT NOT NULL UNIQUE,
    activa BOOLEAN NOT NULL DEFAULT TRUE,
    meta INT NOT NULL,
    mostrar_siempre BOOLEAN NOT NULL DEFAULT FALSE,
    crear_tarjeta_automatica BOOLEAN NOT NULL DEFAULT TRUE,
    id_ruleta INT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_config_categoria FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria),
    CONSTRAINT fk_config_ruleta FOREIGN KEY(id_ruleta) REFERENCES ruleta(id_ruleta)
);

-- ============================================================
-- 4. RULETA_CATEGORIA
-- Permite reutilizar una misma ruleta para múltiples categorías.
-- El backend puede resolver categorías hijas automáticamente  utilizando la jerarquía definida en categoria.
-- ============================================================
CREATE TABLE ruleta_categoria (
    id_ruleta INT NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY (id_ruleta, id_categoria),
    CONSTRAINT fk_rc_ruleta FOREIGN KEY (id_ruleta) REFERENCES ruleta(id_ruleta) ON DELETE CASCADE,
    CONSTRAINT fk_rc_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria) ON DELETE CASCADE
);

CREATE INDEX idx_ruleta_categoria_ruleta ON ruleta_categoria(id_ruleta);
CREATE INDEX idx_ruleta_categoria_cat ON ruleta_categoria(id_categoria);
CREATE INDEX idx_config_categoria ON fidelizacion_configuracion(id_categoria);
CREATE INDEX idx_config_ruleta ON fidelizacion_configuracion(id_ruleta);

-- ============================================================
-- 5. RULETA_ITEM
-- Define cada premio disponible dentro de una ruleta.
-- Un premio puede representar:
--   • Un descuento.
--   • Un servicio.
--   • Un producto.
--   • Un cupón personalizado.
-- Solo un ítem por ruleta puede marcarse como premio mayor.
-- El backend utiliza la probabilidad base para construir la  distribución final del giro.
-- ============================================================
CREATE TABLE ruleta_item (
    id_item SERIAL PRIMARY KEY,
    id_ruleta INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    tipo_premio tipo_premio NOT NULL,
    valor DECIMAL(10,2),
    probabilidad DECIMAL(6,3) NOT NULL,
    es_premio_mayor BOOLEAN NOT NULL DEFAULT FALSE,
    stock INT NULL,
    orden_display INT DEFAULT 0,
    imagen_url VARCHAR(255),
    id_producto INT NULL,
    id_servicio INT NULL,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_item_ruleta FOREIGN KEY (id_ruleta) REFERENCES ruleta(id_ruleta),
    CONSTRAINT fk_item_producto FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    CONSTRAINT fk_item_servicio FOREIGN KEY (id_servicio) REFERENCES cortes(id_corte)
);
CREATE INDEX idx_item_activo ON ruleta_item(activo);
CREATE INDEX idx_item_premio ON ruleta_item(es_premio_mayor);
CREATE INDEX idx_ruleta_item_ruleta ON ruleta_item(id_ruleta);
CREATE INDEX idx_item_ruleta_activo ON ruleta_item(id_ruleta, activo);
-- Solo puede existir un premio mayor por cada ruleta
CREATE UNIQUE INDEX uq_ruleta_premio_mayor ON ruleta_item(id_ruleta) WHERE es_premio_mayor = TRUE;

-- ============================================================
-- 6. RULETA_GIRO
-- Historial de giros realizados por los clientes.
-- Cada registro almacena el resultado exacto del giro, incluyendo
-- la probabilidad utilizada al momento del cálculo.
-- Esta información nunca debe modificarse ya que constituye la
-- auditoría del algoritmo de selección de premios.
-- ============================================================
CREATE TABLE ruleta_giro (
    id_giro SERIAL PRIMARY KEY,
    id_tarjeta INT NOT NULL,
    id_cliente INT NOT NULL,
    id_ruleta INT NOT NULL,
    id_item INT NOT NULL,
    numero_giro INT NOT NULL,
    prob_final DECIMAL(6,3),
    prob_aplicada DECIMAL(6,3),
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_giro_tarjeta FOREIGN KEY (id_tarjeta) REFERENCES fidelizacion_tarjeta(id_tarjeta),
    CONSTRAINT fk_giro_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_giro_ruleta FOREIGN KEY (id_ruleta) REFERENCES ruleta(id_ruleta),
    CONSTRAINT fk_giro_item FOREIGN KEY (id_item) REFERENCES ruleta_item(id_item)
);

CREATE INDEX idx_giro_cliente ON ruleta_giro(id_cliente);
CREATE INDEX idx_giro_tarjeta ON ruleta_giro(id_tarjeta);
CREATE INDEX idx_giro_created_at ON ruleta_giro(created_at);

-- ============================================================
-- 7. RECOMPENSA_OBTENIDA
-- Historial de recompensas obtenidas por los clientes.
-- Se crea automáticamente al finalizar un giro.
-- El estado controla el ciclo de vida del premio:
--   PENDIENTE -> disponible para usar.
--   CANJEADO  -> utilizado.
--   VENCIDO   -> expiró.
--   ANULADO   -> invalidado manualmente.
-- El código de canje puede utilizarse para validar premios desde el panel administrativo o mediante QR en futuras versiones.
-- ============================================================
CREATE TABLE recompensa_obtenida (
    id_recompensa SERIAL PRIMARY KEY,
    id_giro INT NOT NULL,
    id_cliente INT NOT NULL,
    id_item INT NOT NULL,
    estado estado_recompensa NOT NULL DEFAULT 'PENDIENTE',
    observacion VARCHAR(255),
    id_usuario_canje INT NULL,
    fecha_obtencion TIMESTAMP NOT NULL DEFAULT NOW(),
    fecha_vencimiento TIMESTAMP NULL,
    fecha_canje TIMESTAMP NULL,
    codigo_canje VARCHAR(50) NULL UNIQUE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT fk_recompensa_giro FOREIGN KEY (id_giro) REFERENCES ruleta_giro(id_giro),
    CONSTRAINT fk_recompensa_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CONSTRAINT fk_recompensa_item FOREIGN KEY (id_item) REFERENCES ruleta_item(id_item),
    CONSTRAINT fk_recompensa_usuario_canje FOREIGN KEY (id_usuario_canje) REFERENCES usuario(id_usuario)
);
CREATE INDEX idx_recompensa_cliente ON recompensa_obtenida(id_cliente);
CREATE INDEX idx_recompensa_estado  ON recompensa_obtenida(estado);

-- ============================================================
-- 8. PERMISOS DEL MÓDULO
-- Permisos necesarios para administrar el módulo de fidelización.
-- Admin: Configuración completa.
-- Barbero: Consulta tarjetas y procesa canjes.
-- Cliente:  Consulta progreso, realiza giros y visualiza recompensas.
-- ============================================================
INSERT INTO permiso (nombre) VALUES('FIDELIZACION_READ'),('FIDELIZACION_MANAGE'),('RULETA_READ'),('RULETA_MANAGE'),('GIRO_REALIZAR'),('RECOMPENSA_READ'),('RECOMPENSA_CANJEAR') ON CONFLICT (nombre) DO NOTHING;

-- Admin: control total
INSERT INTO rol_permiso (id_rol, id_permiso)
SELECT r.id_rol, p.id_permiso
FROM rol r JOIN permiso p ON TRUE
WHERE r.nombre = 'admin' AND p.nombre IN ( 'FIDELIZACION_READ', 'FIDELIZACION_MANAGE', 'RULETA_READ', 'RULETA_MANAGE', 'GIRO_REALIZAR', 'RECOMPENSA_READ', 'RECOMPENSA_CANJEAR' ) ON CONFLICT DO NOTHING;

-- Barbero: puede ver tarjetas y validar canjes presencialmente
INSERT INTO rol_permiso (id_rol, id_permiso)
SELECT r.id_rol, p.id_permiso
FROM rol r JOIN permiso p ON TRUE
WHERE r.nombre = 'barbero' AND p.nombre IN ( 'FIDELIZACION_READ', 'RULETA_READ', 'RECOMPENSA_READ', 'RECOMPENSA_CANJEAR') ON CONFLICT DO NOTHING;

-- Cliente: ve su tarjeta, gira y consulta sus premios
INSERT INTO rol_permiso (id_rol, id_permiso)
SELECT r.id_rol, p.id_permiso
FROM rol r JOIN permiso p ON TRUE
WHERE r.nombre = 'cliente' AND p.nombre IN ( 'FIDELIZACION_READ', 'RULETA_READ', 'GIRO_REALIZAR', 'RECOMPENSA_READ' ) ON CONFLICT DO NOTHING;

INSERT INTO ruleta
(nombre, descripcion, tipo, activa, incremento_por_giro)
VALUES
('Ruleta Principal','Ruleta general de fidelización','GENERAL',true,0.0200),
('Ruleta Premium','Clientes Premium','PREMIUM',true,0.0500),
('Ruleta Productos','Premios por compras','PRODUCTOS',true,0.0300),
('Ruleta Servicios','Premios por servicios','SERVICIOS',true,0.0250);

INSERT INTO fidelizacion_configuracion
(id_categoria,meta,mostrar_siempre,crear_tarjeta_automatica,id_ruleta)
VALUES
(1,5,true,true,1),
(2,8,true,true,2),
(3,10,false,true,3);

INSERT INTO ruleta_categoria
(id_ruleta,id_categoria)
VALUES
(1,1),
(1,2),
(2,3),
(3,4);

INSERT INTO ruleta_item
(id_ruleta,nombre,descripcion,tipo_premio,valor,
probabilidad,es_premio_mayor,stock,orden_display,activo)
VALUES

(1,'5% Descuento','Descuento para cualquier servicio',
'DESCUENTO',5,40,false,NULL,1,true),

(1,'10% Descuento','Descuento especial',
'DESCUENTO',10,25,false,NULL,2,true),

(1,'Corte Gratis','Servicio gratuito',
'SERVICIO',0,10,true,20,3,true),

(1,'Cupón Sorpresa','Cupón promocional',
'CUPON',0,25,false,NULL,4,true);

INSERT INTO fidelizacion_tarjeta
(id_cliente,id_categoria,progreso,giros_disponibles,total_giros)
VALUES
(1,1,3,0,0),
(2,1,5,1,1),
(1,2,7,2,3);

INSERT INTO fidelizacion_movimiento
(id_tarjeta,id_cliente,origen,id_origen,puntos,descripcion)
VALUES
(1,1,'RESERVA',1,1,'Primer corte'),
(1,1,'RESERVA',2,1,'Segundo corte'),
(2,2,'VENTA',5,2,'Compra de productos');

INSERT INTO ruleta_giro
(id_tarjeta,id_cliente,id_ruleta,id_item,
numero_giro,prob_final,prob_aplicada)
VALUES
(2,2,1,3,1,10.00,14.50);

INSERT INTO recompensa_obtenida
(id_giro,id_cliente,id_item,estado,codigo_canje)
VALUES
(1,2,3,'PENDIENTE','FAD-000001');