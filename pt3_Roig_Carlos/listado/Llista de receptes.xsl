<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="../css/P02_CarlosRoigLlista.css" />
	<title>Llista de receptes</title>
</head>
<body>
<header>
		<img class="Delicias" src="../imagenes/Logo-Delicias.png" width="300vw" height="100vw"/>
		<nav>
		<hr class="barra"/>
		<pre>	<a class="nav" href="../receta/index.html">Inicio</a> | <a class="nav" href="../receta/index.html#Sobre mí">Sobre mí</a> | <a class="nav" href="../listado/Llista de receptes.xml">Recetas</a> | <a class="nav" href="../contacto/Formulari de contacte.html">Contacto</a> | <a class="nav">Otras cosas</a>  
		</pre>
		<hr class="barra"/>
		</nav>
</header>
<xsl:variable name="count" select="1"/>
     <main>
  <xsl:for-each select="receptes/recepta">
  <section>
       <a href="#{@identificador}"><h3><xsl:value-of select="title"/></h3></a>
    <div  id="{@identificador}" class="modal">
      <div class="modal-contenido">
      <a href="#">X</a>
      <h2><xsl:value-of select="title"/></h2>
        <img>
       <xsl:attribute name="src">
        <xsl:value-of select="imagen/@ruta"/>
       </xsl:attribute>
       <xsl:attribute name="height">
      175vw
      </xsl:attribute>
       <xsl:attribute name="width">
      auto
      </xsl:attribute>
      </img>
      <xsl:for-each select="ingredientes/ingrediente">
      <ul class="ingre">
      <li><xsl:value-of select="."/></li>
      </ul>
      <br/>
      </xsl:for-each>
      <xsl:for-each select="pasos/paso">
      <ul class="pasos">
      <li><xsl:value-of select="."/></li>
      </ul>

      </xsl:for-each>
      </div>
    </div>
      <br/>
      Tiempo del elaborado:<xsl:value-of select="tiempo"/>
      <br/>Dificultad del elaborado:<xsl:value-of select="dificultad"/>
      <br/>
      <h4>Propiedades Saludables</h4>
      <xsl:value-of select="propiedades"/>
      <br/>
      <img class="comida">
       <xsl:attribute name="src">
        <xsl:value-of select="imagen/@ruta"/>
       </xsl:attribute>
       <xsl:attribute name="height">
      175vw
      </xsl:attribute>
       <xsl:attribute name="width">
      auto
      </xsl:attribute>
      </img>
      <hr/>
      </section>
    </xsl:for-each>
    </main>
    	<footer class="llista">
		<br/>
	 <a class="footer" href="https://ca-es.facebook.com/">Facebook</a><a class="footer" href="https://twitter.com/?lang=ca">Twitter</a><a class="footer" href="https://www.instagram.com/">Instagram</a><a class="footer" href="https://www.pinterest.es/">Pinterest</a>	<a class="footer" href="https://www.google.com/intl/ca/gmail/about/">Email</a>	  <a class="footer">RSS</a>
	</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
