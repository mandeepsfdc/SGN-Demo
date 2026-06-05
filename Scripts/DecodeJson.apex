// 1. Paste your giant Base64 string here
String base64EncodedData = '';

// 2. Decode Base64 back into a standard string
Blob decodedBlob = EncodingUtil.base64Decode(base64EncodedData);
String rawJsonString = decodedBlob.toString();

// 3. Parse it into a generic Object
Object jsonObject = JSON.deserializeUntyped(rawJsonString);

// 4. Re-serialize it using the Pretty method!
String prettyJsonString = JSON.serializePretty(jsonObject);

// 5. Print the result
System.debug('========== PRETTY FORMATTED JSON ==========');
// We put the pretty string on its own debug line so the Salesforce timestamp 
// prefix doesn't mess up the indentation of the first line.
System.debug('\n' + prettyJsonString);