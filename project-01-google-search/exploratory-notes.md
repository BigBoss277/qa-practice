# Exploratory Testing Notes

## Feature tested
Google Search

## Environment
- Opera GX 128.0.5807.97, Windows

## Session time
- More than 1 hour

## Goal of session
Explore Google Search behavior with unusual, edge-case, and mixed input scenarios.

## What was checked
- Very short query
- Gibberish query
- Query with quotation marks
- Mixed language input
- Repeated click
- Refresh / back behavior
- Autocomplete behavior
- Uppercase / lowercase input
- Copy / paste input
- Special characters

## Interesting behavior noticed
- Very short two-letter queries still returned search results
- Gibberish input produced a “no useful results” style message
- Repeated submissions eventually triggered CAPTCHA
- Autocomplete sometimes generated highly specific suggestions that were only loosely related to the entered phrase
- Some special-character or meaningless queries still returned results related to coding or technical content

## Possible issues / observations
- Search behavior is difficult to evaluate consistently because results may vary depending on query interpretation and time/context
- Autocomplete can produce suggestions that feel weakly connected to the original phrase
- Meaningless input is sometimes interpreted rather than rejected, which may be expected fuzzy search behavior rather than a defect

## Questions / uncertainties
- Which part of the observed behavior is intended algorithmic flexibility, and which part may be considered poor relevance?
- How stable are results for the same edge-case inputs across repeated sessions?

## Conclusion
Google Search remained stable during exploratory testing, but edge-case queries often produced behavior that is difficult to classify as either an issue or expected search intelligence. Further testing could focus on relevance consistency and autocomplete quality rather than obvious functional defects.
