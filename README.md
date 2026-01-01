# Python Binary Archetype

This is an [Archetect](https://archetect.github.io/) archetype. This generates a python project that gets packaged into a binary (.exe, .app, etc.) by leveraging [pyinstaller](https://pyinstaller.org/en/stable/). The generated archetype is designed for trunk-based development — it has a pipeline to release builds on every commit to the _main_ branch without any type of testing and another pipeline to run tests on every commit to branches other than _main_. The _main_ branch should be protected from all direct commits unless they come through a PR — no one should be able to bypass this to make direct commits to _main_. Due to the use of [release-please](https://github.com/googleapis/release-please), it is recommended to have a separate rule enforcing the _test_ job to pass before PRs can be merged to _main_ but allow bypassing this since github will not run tests on PRs created by bots. Alternatively, you can create a github user account and a PAT and pass that in to the [release-please-action](https://github.com/googleapis/release-please-action) — this will cause Github to run test on the release-please PR since it is created by a "human".

## Rendering

To generate content from this Archetype, copy and execute the following command:

```sh
archetect render git@github.com:aisamji/python-binary.archetype.git#v1
```
