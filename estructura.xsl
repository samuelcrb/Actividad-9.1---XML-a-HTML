<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" indent="yes" />

    <xsl:template match="/blog">
    <html lang="es">
        <head>
        <title><xsl:value-of select="tituloP"/></title>
        <link rel="stylesheet" href="styles/styles.css"/>
        </head>
        <body>
            <header>
                <h2><xsl:value-of select="encabezado"/></h2>
            </header>
            <div id="mainContainer">
                <div>
                
                <h1><xsl:value-of select="titulo1"/></h1>
                <p><xsl:value-of select="descripcion"/></p>
                
                </div>

                <section id="Peliculas">
                <h2><xsl:value-of select="titulo2"/></h2>
                    <div id="contenedorPeliculas">
                        <xsl:for-each select="/blog/peliculas/pelicula">
                            <div class="pelicula">
                                <h3><xsl:value-of select="nombre"/></h3>
                                <p><xsl:value-of select="sinopsis"/></p>
                                <h4><xsl:value-of select="director"/></h4>
                                <h4><xsl:value-of select="año"/></h4>
                                <h4>Géneros: <xsl:value-of select="generos"/>.</h4>
                                <h4>Actores principales: <xsl:value-of select="reparto/principales"/>.</h4>
                                <h4>Actores secundarios: <xsl:value-of select="reparto/secundarios"/>.</h4>

                            </div>
                            
                        </xsl:for-each>
                    </div>
                </section>
            </div>
        </body>
    </html>

    </xsl:template>

</xsl:stylesheet>

    