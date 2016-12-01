<?php
  $xml = new DOMDocument;
  $xml->load('shoes.xml');

  $xsl = new DOMDocument;
  $xsl->substituteEntities = true;
  $xsl->load('shoes.xsl');

  $proc=new XSLTProcessor;

  $proc->importStyleSheet($xsl);

  echo $proc->transformToXML($xml);
?>
