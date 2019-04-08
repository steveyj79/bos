<cfcomponent rest="true" restpath="restService">
	<cffunction name="getPlayer" access="remote" returntype="String" httpmethod="GET">
		<cfargument name="name" required="true" restargsource="Path" type="numeric"/>
		<cfset rest = "Hello World">
			<cfhttp
				url="https://thedivisiontab.com/api/search.php?name=steveyj79&platform=xbox"
				method="get"
				port="8500"
				result="res">
			</cfhttp>

		<cfdump var="#xmlParse(cfhttp.fileContent)#" label="Options Result">
		<cfreturn rest>
	</cffunction>
</cfcomponent>
