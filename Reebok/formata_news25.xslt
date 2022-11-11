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

		<!-- .........................25 noticias................................... -->
		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[7]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[7]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[7]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[7]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[8]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[8]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[8]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[8]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[9]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[9]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[9]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[9]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[10]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[10]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[10]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[10]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- .............. 25 news .......................................-->
		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[11]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[11]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[11]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[11]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[12]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[12]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[12]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[12]/link}" class="btn btn-big">Abrir</a>
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
						<img src="{/rss/channel/item[13]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[13]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[13]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[13]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[14]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[14]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[14]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[14]/link}" class="btn btn-big">Abrir</a>
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
						<img src="{/rss/channel/item[15]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[15]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[15]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[15]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[16]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[16]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[16]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[16]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- ............................................................ -->
		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[17]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[17]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[17]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[17]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[18]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[18]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[18]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[18]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[19]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[19]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[19]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[19]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[20]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[20]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[20]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[20]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
					
				</div>
			</div>
		</section>
		<section class="tm-section-3 tm-section-mb" id="tm-section-3">
			<div class="row">
				<div class="col-md-6 tm-mb-sm-4 tm-2col-l">
					<div class="image">
						<img src="{/rss/channel/item[25]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[21]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[21]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[22]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[22]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[22]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[22]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[22]/link}" class="btn btn-big">Abrir</a>
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
						<img src="{/rss/channel/item[23]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[23]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[23]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[23]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[24]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[24]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[24]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[24]/link}" class="btn btn-big">Abrir</a>
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
						<img src="{/rss/channel/item[25]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<h2>
							<xsl:value-of select="/rss/channel/item[25]/title"/>
						</h2>
						<p>
							<xsl:value-of select="/rss/channel/item[25]/pubDate"/>

						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[25]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 tm-2col-r">
					<div class="image">
						<img src="{/rss/channel/item[26]/enclosure/@url}" class="img-fluid" />
					</div>
					<div class="tm-box-3">
						<header>
							<h2>
								<xsl:value-of select="/rss/channel/item[26]/title"/>
							</h2>
						</header>
						<p>
							<xsl:value-of select="/rss/channel/item[26]/pubDate"/>
						</p>
						<div class="text-center">
							<a href="{/rss/channel/item[26]/link}" class="btn btn-big">Abrir</a>
						</div>
					</div>
				</div>
			</div>
			
			
			
		</section>
		

	</xsl:template>
</xsl:stylesheet>
