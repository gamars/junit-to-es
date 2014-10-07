# junit-to-es

tpush script recursively scans a repository for TEST reports generated by surefire in JunitXML format. Transforms all the XML reports into JSON and pushes them to ES.

## usage: 

```
./tpush.sh {project_directopry} http://localhost:9200/{index}/{type}/
```


## Credits

- https://github.com/bramstein/xsltjson for their excellent XSLT for xml2json
