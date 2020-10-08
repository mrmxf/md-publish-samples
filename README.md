# md-publish-samples

sample files for https://github.com/mrmxf/md-publish

Status: **Work In Progress**

## Usage

### Building, Editing and modifying

From a command prompt in the root folder of this project,
grab the tools into a folder called `x-r` with the following command:

```sh
git clone --depth=1 https://github.com/mrmxf/md-publish x-r
```

once installed, they can also be updated with the command

```sh
bash ./x-r/mdpub-update-tools.sh
```

commands, usage and recommended project structure are given in the [README](https://github.com/mrmxf/md-publish)

### Reading and fixing

* `src-xxx` contains all the sources for document xxx
  * The documentation is created in [markdown] with a few [pandoc] extensions for linking headers
  * Each `.md` source file is independent and tracked in github
  * Each output has needs one of:
    * a [pandoc] YAML defaults files in a source folder to define sources and fileters.
    * a frontmatter YAML metadata section with an `MDPUB` top level metadata element
  * The environment variable `FILE_GLOB` (or `FILE_GLOB_WIN`) is used to find control files
* For a single outputs e.g. `.docx` or `.pdf` or `HTML`.
  * Page breaks are inserted for paginated output formats like `.docx` by adding an extra file into the control file.
  * Custom formatting can be created using Pandoc Fenced blocks (see example doc)
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
| 2020-10-08 | Revised help information now that pre & post processing works
| 2020-06-26 | Updated Pandoc filters for SMPTE templates
| 2020-06-12 | changed folder structure based on SMPTE presentation feedback
| 2020-06-04 | Update for SMPTE / OSA presentation - made SMPTE template
| 2020-08-03 | Updated test templates for MPTE imf-reg-api project
| 2020-08-25 | Refactored templates and filters to meet SMPTE rules

[codeanywhere]:https://codeanywhere.com/
[ia writer]:   https://ia.net/writer
[mactex]:      https://tug.org/mactex
[markdown]:    https://spec.commonmark.org
[pandoc]:      https://pandoc.org/
[protex]:      http://www.tug.org/protext/
[python]:      https://www.python.org/downloads/
[textastic]:   https://apps.apple.com/us/app/textastic-code-editor-9/id1049254261
[typora]:      https://typora.io/
[VS code]:     https://code.visualstudio.com/
