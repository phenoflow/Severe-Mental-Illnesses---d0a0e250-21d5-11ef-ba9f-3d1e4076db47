cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  severe-mental-illnesses-schiz---primary:
    run: severe-mental-illnesses-schiz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  severe-mental-illnesses-schizophrenialike---primary:
    run: severe-mental-illnesses-schizophrenialike---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-schiz---primary/output
  xpersistent-severe-mental-illnesses---primary:
    run: xpersistent-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-schizophrenialike---primary/output
  severe-mental-illnesses-specified---primary:
    run: severe-mental-illnesses-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: xpersistent-severe-mental-illnesses---primary/output
  severe-mental-illnesses-xother---primary:
    run: severe-mental-illnesses-xother---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-specified---primary/output
  severe-mental-illnesses-schizoph---primary:
    run: severe-mental-illnesses-schizoph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-xother---primary/output
  simple-severe-mental-illnesses---primary:
    run: simple-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-schizoph---primary/output
  paranoid-severe-mental-illnesses---primary:
    run: paranoid-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: simple-severe-mental-illnesses---primary/output
  psychogenic-severe-mental-illnesses---primary:
    run: psychogenic-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: paranoid-severe-mental-illnesses---primary/output
  severe-mental-illnesses-psycho---primary:
    run: severe-mental-illnesses-psycho---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: psychogenic-severe-mental-illnesses---primary/output
  severe-mental-illnesses-paraphrenia---primary:
    run: severe-mental-illnesses-paraphrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-psycho---primary/output
  severe-mental-illnesses-state---primary:
    run: severe-mental-illnesses-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-paraphrenia---primary/output
  severe-mental-illnesses-delusion---primary:
    run: severe-mental-illnesses-delusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-state---primary/output
  hypomanic-severe-mental-illnesses---primary:
    run: hypomanic-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-delusion---primary/output
  severe-mental-illnesses-depressn---primary:
    run: severe-mental-illnesses-depressn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: hypomanic-severe-mental-illnesses---primary/output
  severe-mental-illnesses-bipolaffectpart---primary:
    run: severe-mental-illnesses-bipolaffectpart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-depressn---primary/output
  schizaffective-severe-mental-illnesses---primary:
    run: schizaffective-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-bipolaffectpart---primary/output
  recurmanic-severe-mental-illnesses---primary:
    run: recurmanic-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: schizaffective-severe-mental-illnesses---primary/output
  atypical-severe-mental-illnesses---primary:
    run: atypical-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: recurmanic-severe-mental-illnesses---primary/output
  severe-mental-illnesses-hypomania---primary:
    run: severe-mental-illnesses-hypomania---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: atypical-severe-mental-illnesses---primary/output
  reactive-severe-mental-illnesses---primary:
    run: reactive-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-hypomania---primary/output
  severe-mental-illnesses---primary:
    run: severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: reactive-severe-mental-illnesses---primary/output
  early-severe-mental-illnesses---primary:
    run: early-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses---primary/output
  severe-mental-illnesses-nonorgan---primary:
    run: severe-mental-illnesses-nonorgan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: early-severe-mental-illnesses---primary/output
  severe-mental-illnesses-xacute---primary:
    run: severe-mental-illnesses-xacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-nonorgan---primary/output
  manicdepressive-severe-mental-illnesses---primary:
    run: manicdepressive-severe-mental-illnesses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-xacute---primary/output
  severe-mental-illnesses-recurr---primary:
    run: severe-mental-illnesses-recurr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: manicdepressive-severe-mental-illnesses---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: severe-mental-illnesses-recurr---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
