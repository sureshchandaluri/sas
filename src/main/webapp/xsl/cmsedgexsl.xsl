<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="root">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="all"
					page-height="23in" page-width="18.5in" margin-top="0.5in"
					margin-bottom="0.5in" margin-left="0.6in" margin-right="0.6in">
					<fo:region-body margin-top="3.1in" margin-bottom="1.5in" />
					<fo:region-before extent="10.2in" />
					<fo:region-after extent="1.2in" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Header start -->
			<fo:page-sequence master-reference="all">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block>
						<fo:table width="100%">
							<fo:table-column column-width="80%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block start-indent="37cm">
											<fo:external-graphic display-align="right">
												<xsl:attribute name="src">
									<xsl:text>'</xsl:text>
									<xsl:value-of select="data/main/imgPath" /><xsl:text>/</xsl:text>
									<xsl:value-of select="data/main/Company_Logo" /><xsl:text>'</xsl:text>
								</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block text-align="start">
						<fo:table>
							<fo:table-column column-width="0cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="margin-right">
										<fo:block start-indent="1.2cm" font-family="arial"
											font-weight="bold" color="mediumblue" font-size="47pt"
											wrap-option="no-wrap">
											Travel Risk Management self-assessment
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block border-bottom-width="2pt" border-bottom-style="solid"
						border-bottom-color="black" text-align="start" line-height="1em + 2pt">
						<fo:table>
							<fo:table-column column-width="80%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block start-indent="1.2cm" font-family="arial"
											color="black" font-size="40pt" wrap-option="no-wrap">
											Your Summary -
											<xsl:value-of select="data/main/user" />
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:static-content>

				<!-- Header end -->
				<!-- footer start -->
				<fo:static-content flow-name="xsl-region-after">
					<fo:block text-align="center" line-height="2em + 2pt"
						wrap-option="no-wrap">
						<fo:table start-indent="1.2cm" width="100%">
							<fo:table-column column-width="80%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block color="navy" font-family="arial" font-size="40pt"
											font-weight="bold">
											WORLDWIDE REACH.
											<fo:inline color="mediumblue">HUMAN TOUCH.</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:static-content>
				<!-- Footer end -->
				<!--Body starts -->
				<fo:flow flow-name="xsl-region-body">
					<xsl:apply-templates select="data" />
					<fo:block border-bottom-width="2pt" border-bottom-style="solid"
						border-bottom-color="black" text-align="center" line-height="1em + 2pt">
						<fo:table width="100%" space-before="0.6cm" padding="0.6mm">
							<fo:table-column column-width="80%" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-family="arial" font-weight="bold"
											color="mediumblue" font-size="40pt" wrap-option="no-wrap"
											padding="0.6mm">
											You scored
											<xsl:value-of select="data/main/score" />
											<xsl:text></xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block text-align="start" line-height="1em + 2pt">
						<fo:table table-layout="fixed" space-before="0.8cm"
							width="300%" height="4cm" padding="9mm">
							<fo:table-column column-width="43cm" />
							<fo:table-column column-width="43cm" />
							<fo:table-column column-width="43cm" />
							<fo:table-column column-width="43cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block start-indent="0cm">
											<fo:external-graphic padding-right="1cm">
												<xsl:attribute name="src">
												<xsl:text>'</xsl:text><xsl:value-of select="data/main/imgPath" /><xsl:text>/</xsl:text>
												<xsl:value-of select="data/main/range" /><xsl:text>'</xsl:text>
											</xsl:attribute>
												<xsl:attribute name="height">70cm</xsl:attribute>
												<xsl:attribute name="width">300cm</xsl:attribute>
												<xsl:attribute name="align">right</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>


								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block text-align="start">
						<fo:table table-layout="fixed" padding="9mm" width="80%">
							<fo:table-column column-width="2cm" />
							<fo:table-column column-width="41cm" />
							<fo:table-body>
								<xsl:for-each select="data/main/riskMitigation/strategy">
									<xsl:variable name="titleColor">
										<xsl:choose>
											<xsl:when test="title='Check'">
												<xsl:value-of select="'darkorange'" />
											</xsl:when>
											<xsl:when test="title='Plan'">
												<xsl:value-of select="'mediumblue'" />
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="'darkblue'" />
											</xsl:otherwise>
										</xsl:choose>
									</xsl:variable>
									<fo:table-row>
										<fo:table-cell number-columns-spanned="2">
											<fo:block font-family="arial" color="{$titleColor}"
												font-size="40pt" wrap-option="wrap" space-before="1cm">
												<xsl:value-of select="title" />
												<xsl:text> </xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<xsl:for-each select="question">
										<fo:table-row background-color="#f2f2f2">
											<fo:table-cell>
												<fo:block font-family="arial" color="{$titleColor}"
													font-size="25pt" wrap-option="wrap" font-weight="bold"
													space-before="1cm" margin="1.5cm">
													<xsl:value-of select="title" />
													<xsl:text> </xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block font-family="arial" color="black"
													font-size="25pt" wrap-option="wrap" font-weight="bold"
													space-before="1cm" margin="1.5cm">
													<xsl:value-of select="value" />
													<xsl:text> </xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row background-color="#f2f2f2">
											<fo:table-cell number-columns-spanned="2">
												<fo:block font-family="arial" color="black"
													font-size="25pt" wrap-option="wrap" space-before="1cm"
													margin="1.5cm">
													<xsl:value-of select="action" />
													<xsl:text> </xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>
								</xsl:for-each>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block text-align="start" line-height="1em + 2pt">
						<fo:table table-layout="fixed" padding="9mm">
							<fo:table-column column-width="0cm" />
							<fo:table-column column-width="26cm" />
							<fo:table-column column-width="26cm" />
							<fo:table-column column-width="29cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-family="arial" font-size="9pt">
										</fo:block>
									</fo:table-cell>

									<fo:table-cell text-align="left">
										<fo:block font-family="arial" color="black"
											font-size="35pt" wrap-option="wrap">
											<xsl:value-of select="data/main/desc21" />
											<xsl:text> </xsl:text>
										</fo:block>
										<fo:block font-family="arial" font-size="9pt">
										</fo:block>
										<fo:block text-align="left" font-family="arial"
											color="black" font-size="22pt" wrap-option="wrap" padding="2.5mm">
											<xsl:value-of select="data/main/desc22" />
											<xsl:text> </xsl:text>
										</fo:block>
										<fo:block text-align="left" font-family="arial"
											color="black" font-size="22pt" wrap-option="wrap" padding="2.5mm">
											<xsl:value-of select="data/main/desc23" />
											<xsl:text> </xsl:text>
										</fo:block>
										<fo:block text-align="left" font-family="arial"
											color="black" font-size="22pt" wrap-option="wrap" padding="2.5mm">
											<xsl:value-of select="data/main/desc24" />
											<xsl:text> </xsl:text>
										</fo:block>
										<fo:block text-align="left" font-family="arial"
											color="black" font-size="22pt" wrap-option="wrap" padding="2.5mm">
											<xsl:value-of select="data/main/desc25" />
											<xsl:text> </xsl:text>
											<fo:basic-link
												external-destination="url('http://internationalsos.com/duty-of-care')"
												color="darkblue"> http://internationalsos.com/duty-of-care
											</fo:basic-link>
										</fo:block>
									</fo:table-cell>


									<fo:table-cell>
										<fo:block start-indent="0.5cm">
											<fo:external-graphic padding-right="1cm">
												<xsl:attribute name="src">
												<xsl:text>'</xsl:text><xsl:value-of select="data/main/imgPath" /><xsl:text>/</xsl:text>
												<xsl:value-of select="data/main/wallpaper" /><xsl:text>'</xsl:text>
											</xsl:attribute>
												<xsl:attribute name="height">13cm</xsl:attribute>
												<xsl:attribute name="width">16cm</xsl:attribute>
												<xsl:attribute name="align">left</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>

								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block text-align="start" line-height="1em + 2pt">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="0cm" />

							<fo:table-column column-width="0cm" />
							<fo:table-column column-width="0cm" />
							<fo:table-column column-width="cm" />

							<fo:table-body>
								<fo:table-row>

									<fo:table-cell>

										<fo:block font-family="arial" font-size="9pt">

										</fo:block>
									</fo:table-cell>


									<fo:table-cell text-align="left">
										<fo:block font-family="arial" color="black"
											font-size="35pt" wrap-option="no-wrap" padding="7mm">
											<xsl:value-of select="data/main/desc31" />
											<xsl:text></xsl:text>
										</fo:block>
										<fo:block font-family="arial" font-size="9pt">

										</fo:block>
										<fo:block text-align="left" font-family="arial"
											color="black" font-size="21pt" wrap-option="no-wrap" padding="7mm">
											<xsl:value-of select="data/main/desc32" />
											<xsl:text></xsl:text>
											<fo:basic-link external-destination="url('http://www.internationalsos.com')"
												color="darkblue"> http://www.internationalsos.com
											</fo:basic-link>
										</fo:block>
										<fo:block text-align="left" font-family="arial"
											color="black" font-size="21pt" wrap-option="no-wrap" padding="2mm">
											<xsl:value-of select="data/main/desc33" />
											<xsl:text></xsl:text>
										</fo:block>
										<fo:block text-align="left" font-family="arial"
											color="black" font-size="21pt" wrap-option="no-wrap" padding="2mm">
											<xsl:value-of select="data/main/desc34" />
											<xsl:text></xsl:text>
										</fo:block>

									</fo:table-cell>


								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!--Body end -->
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
