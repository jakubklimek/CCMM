<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.0" xmlns:c="https://schemas.dataspecer.com/xsd/core/" xmlns:ns0="http://spdx.org/rdf/terms#" xmlns:ns1="http://www.w3.org/ns/dcat#" xmlns:ns2="http://purl.org/dc/terms/">
  <xsl:import href="../application-profile/lifting.xslt"/>
  <xsl:output method="xml" version="1.0" encoding="utf-8" media-type="application/rdf+xml" indent="yes"/>
  <xsl:template match="/distribution_downloadable_file">
    <rdf:RDF>
      <xsl:variable name="result">
        <xsl:sequence>
          <xsl:call-template name="_https_003a_002f_002fofn.gov.cz_002fclass_002f1742341171412-b42f-f902-ba1b"/>
        </xsl:sequence>
      </xsl:variable>
      <xsl:for-each select="$result">
        <xsl:copy>
          <xsl:call-template name="remove-top"/>
        </xsl:copy>
      </xsl:for-each>
      <xsl:for-each select="$result//top-level/node()">
        <xsl:copy>
          <xsl:call-template name="remove-top"/>
        </xsl:copy>
      </xsl:for-each>
    </rdf:RDF>
  </xsl:template>
  <xsl:template match="@xml:lang">
    <xsl:copy-of select="."/>
  </xsl:template>
  <xsl:template name="remove-top">
    <xsl:for-each select="@*">
      <xsl:copy/>
    </xsl:for-each>
    <xsl:for-each select="node()[not(. instance of element(top-level))]">
      <xsl:copy>
        <xsl:call-template name="remove-top"/>
      </xsl:copy>
    </xsl:for-each>
  </xsl:template>
  <xsl:template name="_https_003a_002f_002fofn.gov.cz_002fclass_002f1742341171412-b42f-f902-ba1b">
    <xsl:param name="arc" select="()"/>
    <xsl:param name="no_iri" select="false()"/>
    <rdf:Description>
      <xsl:apply-templates select="@*"/>
      <xsl:variable name="id">
        <id>
          <xsl:choose>
            <xsl:when test="c:iri and not($no_iri)">
              <xsl:attribute name="rdf:about">
                <xsl:value-of select="c:iri"/>
              </xsl:attribute>
            </xsl:when>
            <xsl:otherwise>
              <xsl:attribute name="rdf:nodeID">
                <xsl:value-of select="generate-id()"/>
              </xsl:attribute>
            </xsl:otherwise>
          </xsl:choose>
        </id>
      </xsl:variable>
      <xsl:copy-of select="$id//@*"/>
      <rdf:type rdf:resource="Distribution-DownloadableFile"/>
      <xsl:copy-of select="$arc"/>
      <xsl:for-each select="checksum">
        <ns0:checksumValue rdf:datatype="http://www.w3.org/2001/XMLSchema#string">
          <xsl:apply-templates select="@*"/>
          <xsl:value-of select="."/>
        </ns0:checksumValue>
      </xsl:for-each>
      <xsl:for-each select="byte_size">
        <ns1:byteSize rdf:datatype="http://www.w3.org/2001/XMLSchema#integer">
          <xsl:apply-templates select="@*"/>
          <xsl:value-of select="."/>
        </ns1:byteSize>
      </xsl:for-each>
      <xsl:for-each select="format">
        <ns2:format rdf:datatype="http://www.w3.org/2001/XMLSchema#anyURI">
          <xsl:apply-templates select="@*"/>
          <xsl:value-of select="."/>
        </ns2:format>
      </xsl:for-each>
      <xsl:for-each select="conforms_to_schema">
        <ns2:conformsTo>
          <xsl:call-template name="_https_003a_002f_002fofn.gov.cz_002fclass_002f1742235803801-3bb0-3064-a2dc"/>
        </ns2:conformsTo>
      </xsl:for-each>
      <xsl:for-each select="media_type">
        <ns1:mediaType>
          <xsl:call-template name="_https_003a_002f_002fofn.gov.cz_002fclass_002f1742235818874-efde-8537-b0a5"/>
        </ns1:mediaType>
      </xsl:for-each>
      <xsl:for-each select="access_url">
        <ns1:accessURL>
          <xsl:call-template name="_https_003a_002f_002fofn.gov.cz_002fclass_002f1742235831207-776a-49bb-9ac1"/>
        </ns1:accessURL>
      </xsl:for-each>
      <xsl:for-each select="download_url">
        <ns1:downloadURL>
          <xsl:call-template name="_https_003a_002f_002fofn.gov.cz_002fclass_002f1742235831207-776a-49bb-9ac1"/>
        </ns1:downloadURL>
      </xsl:for-each>
    </rdf:Description>
  </xsl:template>
  <xsl:template match="@*|*"/>
</xsl:stylesheet>
