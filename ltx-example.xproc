<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step
  xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:c="http://www.w3.org/ns/xproc-step"
  xmlns:ltx="http://le-tex.de/tools/validate"
  version="1.0">

  <p:input port="source">
    <p:empty/>
  </p:input>
  <p:output port="result">
    <p:pipe port="report" step="validate"/>
  </p:output>

  <p:output port="report">
    <p:pipe port="result" step="validate"/>
  </p:output>

  <p:import href="ltx-lib.xpl"/>

  <p:load href="hobots.de.xml" name="load"/>

  <p:sink/>

  <ltx:validate-files name="validate">
    <p:input port="source">
      <p:pipe port="result" step="load"/>
    </p:input>
    <p:input port="schema">
      <p:document href="hobots.rng"/>
    </p:input>
  </ltx:validate-files>

</p:declare-step> 