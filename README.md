# md-publish-samples

sample files for https://github.com/mrmxf/md-publish

Status: **Work In Progress**

## Usage

### Building, Editing and modifying

From a command prommpt in the root folder,
grab the tools into a folder called `x-r` with the following command:

```sh
git clone --depth=1 https://github.com/mrmxf/md-publish x-r
```

You can now do the following:

* **build** `./x-r/makedocs.sh` to build your docs on a mac or linux
* **build** `./x-r/makewindocs.bat` to build your docs on Windows
* **read**  `./x-r/README.md` for more low level details including editors and build instructions

### Reading and fixing

* `src-xxx` contains all the document sources for document xxx
  * The documentation is created in [markdown] with a few [pandoc] extensions for linking headers
  * Each `.md` source file is independent and tracked in github
  * Tha main documentation is built using a [pandoc] control files in the `src-xxx` folder.
  * Each output version is defined by a control file (called the defaults by pandoc).
  * A control file has a `.yml` extension and is a metadata file contains all the settings
    for a single output e.g. `docx` or `PDF` or `HTML`.
  * Page breaks are inserted for paginated output formats like `.docx` by adding an extra file into the control file.
* **Editing** tools
  * I use [VS Code] as my editor in Windows, Linux and Mac
  * I use [Codeanywhere] when all I have is a web browser
  * I use [textastic] when all I have is an iOS device and I need to fix `.yml` and coding
  * I use [iA writer] for markdown laziness on android but will switch to [typora] when they finish it
* `/x-r` contains the all the document templates, styles and markdown boilerplate.
    See https://github.com/mrmxf/md-publish

### Revision information

| Date       | Changes                  |
| ---------  | ------------             |
| 2020-06-26 | Updated Pandoc filters for SMPTE templates
| 2020-06-12 | changed folder structure based on SMPTE presentation feedback
| 2020-06-04 | Update for SMPTE / OSA presentation - made SMPTE template
| 2020-08-03 | Updated test templates for MPTE imf-reg-api project
| 2020-08-25 | Refactored templates and filters to meet SMPTE rules

[codeanywhere]:https://codeanywhere.com/
[ia writer]:   https://ia.net/writer
[mactex]:      https://tug.org/mactex
[pandoc]:      https://pandoc.org/
[protex]:      http://www.tug.org/protext/
[python]:      https://www.python.org/downloads/
[textastic]:   https://apps.apple.com/us/app/textastic-code-editor-9/id1049254261
[typora]:      https://typora.io/
[VS code]:     https://code.visualstudio.com/
