# Czech Core Metadata Model specification

This repository contains specification of Czech Core Metadata Model modelled in and generated from DataSpoecer.
The structure of the repository is as follows. For the documenattion and publication purposes were created GitHub pages. In each section, there is a link to the published specifications,

## cs

Directory /cs contains Czech version of CCMM Application Profile specification. Specification is available on https://eosc-cz.github.io/CCMM/cs/.

## en

Directory /en contains English version of CCMM Application Profile specification. Specification is available on https://eosc-cz.github.io/CCMM/en/.

## Resources

Directory resources/ contains data specification in json format. It also contained file with the full content of the Dataspecer project, which is too large for GitHub repository, therefore it is not part of the directory.

## Czech core metadata model

Directory czech-core-metadata-model contains all structured artifacts generated from Dataspecer. There are four subdirectories, one per each root element of the data structures: datase, distribution - data service, distribution - downloadable file and metadata record. Currently, Applicationb profiles in Dataspecer do not support specializations, therefore it is not possible to include distribution types as subclasses of distribution. The same is for Organization and Person as subclasses of Agent. Those classes are not yet part of the strucutured models, but you may search them in the specifification of the application profile in direstories cs/ and /en. 

Each subdirectory contains strucutured models formalized in XSD (schema.xsd) and JSON (schema.json).
|Root element|XSD schema|JSON Schema|
| - | - | - |
|Dataset|https://eosc-cz.github.io/CCMM/czech-core-metadata-model/dataset/schema.xsd|https://eosc-cz.github.io/CCMM/czech-core-metadata-model/dataset/schema.json|
|Metadata record|https://eosc-cz.github.io/CCMM/czech-core-metadata-model/metadata-record/schema.xsd|https://eosc-cz.github.io/CCMM/czech-core-metadata-model/metadata-record/schema.json|
|Distribution -- data service|https://eosc-cz.github.io/CCMM/czech-core-metadata-model/distribution---data-service/schema.xsd|https://eosc-cz.github.io/CCMM/czech-core-metadata-model/distribution---data-service/schema.json|
|Distribution -- downloadable file|https://eosc-cz.github.io/CCMM/czech-core-metadata-model/distribution---downloadable-file/schema.xsd|https://eosc-cz.github.io/CCMM/czech-core-metadata-model/distribution---downloadable-file/schema.json|

On the directory level, there is also [documentation](https://eosc-cz.github.io/CCMM/czech-core-metadata-model/documentation) of data strucutes, unfortunately, possibly due to the DataSpecer bug, it is generated only in czech language.



