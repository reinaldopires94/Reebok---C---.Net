<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

		<div id="mainNav" class="collapse navbar-collapse tm-bg-white">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<a class="nav-link tm-text-gray" href="{link}">
						App
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link tm-text-gray" href="{link}">Dados</a>
				</li>
				<li class="nav-item">
					<a class="nav-link tm-text-gray" href="{link}">Loja</a>
				</li>
			</ul>
		</div>



	</xsl:template>
</xsl:stylesheet>
