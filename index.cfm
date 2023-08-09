<cfset minLength = 10>
<cfset maxLength = 16>
<cfset validCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@##$%^&*()_+">

<cfset password = "">
<cfloop from="1" to="#randRange(minLength, maxLength)#" index="i">
    <cfset randomIndex = randRange(1, len(validCharacters))>
    <cfset password = password & mid(validCharacters, randomIndex, 1)>
</cfloop>

<cfoutput>Password: #password#</cfoutput>
