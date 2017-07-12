class: CommandLineTool
doc: FastQC assembler 
id: fastqc-0.11.4 
label: "FastQC v0.11.4" 
cwlVersion: v1.0 

dct:creator:
  "@id": "http://orcid.org/0000-0003-0342-8531"
  foaf:name: Uma Chandran
  foaf:mbox: "mailto:chandran201@gmail.com" 
  
requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/chanur/dockstore-training-fastqc-uc:latest"

hints:
  - class: ResourceRequirement
    coresMin: 4
    ramMin: 1000

inputs:
  fastq:
    type: File
    doc: "Fastq file to be analyzed"
    inputBinding:
      position: 1
     


outputs:
  zippedFile:
    type: File
    outputBinding:
      glob: '*.zip'
  report:
    type: Directory
    outputBinding:
      glob: .

baseCommand:  [fastqc]
