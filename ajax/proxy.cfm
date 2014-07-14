<cfcontent reset="yes">
<cfsetting showdebugoutput="no">

<cfscript>
	param name = "url.url"	default = "";
	param name = "form.url"	default = "http://rkalika.com/";
</cfscript>

<cfhttp url="#form.url#" method="get" resolveurl="yes">


<cfscript>
	htRead 	 = cfhttp.filecontent;
	title	 = rematch("<title[^>]*>(.*?)</title>", htRead);
	metaTags = rematch("<meta[^<]*>", htRead);
	images	 = rematch("<img[^<]*>", htRead);
</cfscript>

<cfoutput>
	#ArrayLen(title) ? title[1]&Chr(13) & Chr(10) : ''#
	<cfloop array="#metaTags#" index="i">
    	#i&Chr(13) & Chr(10)#
	</cfloop>
    
    <cfloop array="#images#" index="i">
    	#i&Chr(13) & Chr(10)#
	</cfloop>
    
</cfoutput>
<cfabort>