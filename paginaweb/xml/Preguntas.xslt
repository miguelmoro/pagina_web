<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/documento">
		<html>
			<head>
				<title>Preguntas</title>
				 <link rel="stylesheet" type="text/css" href="Preguntas.css"/>
			</head>
			<body>
				<h1>CUESTIONARIO</h1>
				<xsl:for-each select="cuestion">
					<div>
						<form>
							<h4>Pregunta <xsl:value-of select="@num"/></h4>
							<xsl:value-of select="pregunta"/>
							<xsl:for-each select="respuesta">
								<xsl:choose>
									<xsl:when test="@res">
										<p class="correcta"><input type="radio" name="../pregunta/@num" value="correcta"><xsl:value-of select="."/></input></p>
									</xsl:when>
									<xsl:otherwise>
										<p class="incorrecta"><input type="radio" name="../pregunta/@num" value="incorrecta"><xsl:value-of select="."/></input></p>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:for-each>
						</form>
					</div>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>