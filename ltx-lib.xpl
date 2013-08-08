<p:library xmlns:p="http://www.w3.org/ns/xproc"
           xmlns:ltx="http://le-tex.de/tools/validate"
           xmlns:pkg="http://expath.org/ns/pkg"
           pkg:import-uri="http://le-tex.de/tools/validate.xpl"
           version="1.0">

	<p:declare-step type="ltx:validate-files">
		<p:input port="source" primary="true"/>
		<p:input port="schema"/>	
		<p:output port="result" primary="true"/>
		<p:output port="report"/>
   	</p:declare-step>

</p:library>