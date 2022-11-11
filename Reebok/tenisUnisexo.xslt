<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<center>
			<h2>Reebok Ténis - Unisexo</h2>
		</center>
		
		<center>
				<xsl:for-each select="/lojas/loja[genero='Unisexo']">

					<section class="tm-section-5" id="tm-section-5">


						<div class="col-lg-8 col-md-12 col-sm-12 pl-lg-0">
							<div class="media tm-media">
								<img src="{fotos}" class="img-responsive tm-media-img"></img>
								<div class="media-body tm-box-5">
									<h2>
										<a href="{link}" target="_blank">
											<xsl:value-of select="modelo"/>
											<br>
												<xsl:value-of select="genero"/>
											</br>

										</a>

									</h2>
									<p class="mb-0">
										<xsl:value-of select="preco"/>
									</p>
									<p>
										<xsl:value-of select="peso"/>
									</p>

								</div>
							</div>

						</div>

					</section>


				</xsl:for-each>
			</center>

    </xsl:template>
</xsl:stylesheet>
