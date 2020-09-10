# Annex All Annexes are Numbered

## Even the sub headings are numbered

By default syntax highlighting is used in code, XML and JSON.

```xml
<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <!-- for restricting the termNote Attributes-->
  <xs:simpleType name="LMTtermNoteLabelType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="Language Group Name" />
      <xs:enumeration value="Language Group Tag" />
      <xs:enumeration value="Language Group Code" />
      <xs:enumeration value="Audio Language Tag" />
      <xs:enumeration value="Long Description 1" />
      <xs:enumeration value="Long Description 2" />
      <xs:enumeration value="Audio Language Display Name 1" />
      <xs:enumeration value="Audio Language Display Name 2" />
      <xs:enumeration value="Visual Language Tag 1" />
      <xs:enumeration value="Visual Language Tag 2" />
      <xs:enumeration value="Visual Language Display Name 1" />
      <xs:enumeration value="Visual Language Display Name 2" />
      <xs:enumeration value="Code" />
      <xs:enumeration value="Notes" />
    </xs:restriction>
  </xs:simpleType>
  <xs:simpleType name="relationTypeType">
    <xs:restriction base="xs:string">
      <xs:enumeration value="EQT" />
      <!-- Equivalent To -->
      <xs:enumeration value="BT" />
      <!-- Broad Type -->
      <xs:enumeration value="NT" />
      <!-- Narrow Type -->
      <xs:enumeration value="TT" />
      <!-- Top Type -->
    </xs:restriction>
  </xs:simpleType>
</xs:schema>
```
