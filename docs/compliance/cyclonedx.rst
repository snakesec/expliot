CycloneDX
=========

`OWASP CycloneDX <https://cyclonedx.org/>`_ is a lightweight Software Bill of
Materials (SBOM) standard designed for use in application security contexts
and supply chain component analysis.

We have incorporated CycloneDX SBOM generation for firmware filesystem. Check the
:doc:`../tests/firmware` section for plugin details.

CycloneDX Property Taxonomy
---------------------------

CycloneDX maintains a property namespace taxonomy at
`CycloneDX Property Taxanomy <https://github.com/CycloneDX/cyclonedx-property-taxonomy>`_
which is used to define custom properties.

EXPLIoT Namespace Taxonomy
--------------------------

EXPLIoT has reserved the follow namespace.

+-------------------+--------------------------------------------------------------+
|     Property      |                      Description                             |
+===================+==============================================================+
| expliot:file      | Namespace for properties specific to files                   |
+-------------------+--------------------------------------------------------------+

`expliot:file` Namespace Taxonomy
---------------------------------

+--------------------+------------------------------------------------------------+
|     Property       |                     Description                            |
+====================+============================================================+
| expliot:file:path  |The path of the file in the package (software, firmware etc)|
+--------------------+------------------------------------------------------------+
| expliot:file:mode  |The file mode string as on a Linux system (rwx)             |
+--------------------+------------------------------------------------------------+
| expliot:file:size  |The size of the file in bytes                               |
+--------------------+------------------------------------------------------------+
