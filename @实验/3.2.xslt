<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" doctype-system="-//w3C//DTD HTML 4.0.1 Transitional//EN" doctype-public="http:/www.w3.org/TR/html4/loose. dtd" media-type="text/html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>成绩统计表</title>
			</head>
			<body>
				<table border="1px">
					<tbody>
						<tr>
							<th>姓名</th>
							<th>Java成绩</th>
							<th>0racle成绩</th>
							<th>Python成绩</th>
						</tr>
						<xsl:apply-templates/>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="students">
		<xsl:for-each select="student">
			<xsl:sort select="sum(.//*[position()>1])" order="descending"/>
			<tr>
				<td><xsl:value-of select="name"/></td>
				<td><xsl:apply-templates select="java"/></td>
				<td><xsl:apply-templates select="oracle"/></td>
				<td><xsl:value-of select="python"/></td>
			</tr>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
