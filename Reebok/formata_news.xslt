<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
   

    <xsl:template match="/">

		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[1]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[1]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[1]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[1]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[2]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[2]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[2]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[2]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- .................................................................................................  -->
		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[3]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[3]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[3]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[3]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[4]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[4]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[4]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[4]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- ..............................................................................................-->

		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[5]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[5]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[5]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[5]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[6]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								
								<xsl:value-of select="/rss/channel/item[6]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[6]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[6]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		
	
    </xsl:template>
</xsl:stylesheet>
