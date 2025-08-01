<!--
Copyright (c) Ansible Project
GNU General Public License v3.0+ (see LICENSES/GPL-3.0-or-later.txt or https://www.gnu.org/licenses/gpl-3.0.txt)
SPDX-License-Identifier: GPL-3.0-or-later
-->

# Community General Collection

[![Documentation](https://img.shields.io/badge/docs-brightgreen.svg)](https://docs.ansible.com/ansible/devel/collections/community/general/)
[![Build Status](https://dev.azure.com/ansible/community.general/_apis/build/status/CI?branchName=stable-11)](https://dev.azure.com/ansible/community.general/_build?definitionId=31)
[![EOL CI](https://github.com/ansible-collections/community.general/actions/workflows/ansible-test.yml/badge.svg?branch=stable-11)](https://github.com/ansible-collections/community.general/actions)
[![Nox CI](https://github.com/ansible-collections/community.general/actions/workflows/nox.yml/badge.svg?branch=stable-11)](https://github.com/ansible-collections/community.general/actions)
[![Codecov](https://img.shields.io/codecov/c/github/ansible-collections/community.general)](https://codecov.io/gh/ansible-collections/community.general)
[![REUSE status](https://api.reuse.software/badge/github.com/ansible-collections/community.general)](https://api.reuse.software/info/github.com/ansible-collections/community.general)

This repository contains the `community.general` Ansible Collection. The collection is a part of the Ansible package and includes many modules and plugins supported by Ansible community which are not part of more specialized community collections.

You can find [documentation for this collection on the Ansible docs site](https://docs.ansible.com/ansible/latest/collections/community/general/).

Please note that this collection does **not** support Windows targets. Only connection plugins included in this collection might support Windows targets, and will explicitly mention that in their documentation if they do so.

## Code of Conduct

We follow [Ansible Code of Conduct](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html) in all our interactions within this project.

If you encounter abusive behavior violating the [Ansible Code of Conduct](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html), please refer to the [policy violations](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html#policy-violations) section of the Code of Conduct for information on how to raise a complaint.

## Communication

* Join the Ansible forum:
  * [Get Help](https://forum.ansible.com/c/help/6): get help or help others. This is for questions about modules or plugins in the collection. Please add appropriate tags if you start new discussions.
  * [Tag `community-general`](https://forum.ansible.com/tag/community-general): discuss the *collection itself*, instead of specific modules or plugins.
  * [Social Spaces](https://forum.ansible.com/c/chat/4): gather and interact with fellow enthusiasts.
  * [News & Announcements](https://forum.ansible.com/c/news/5): track project-wide announcements including social events.

* The Ansible [Bullhorn newsletter](https://docs.ansible.com/ansible/devel/community/communication.html#the-bullhorn): used to announce releases and important changes.

For more information about communication, see the [Ansible communication guide](https://docs.ansible.com/ansible/devel/community/communication.html).

## Tested with Ansible

Tested with the current ansible-core 2.16, ansible-core 2.17, ansible-core 2.18 releases and the current development version of ansible-core. Ansible-core versions before 2.16.0 are not supported. This includes all ansible-base 2.10 and Ansible 2.9 releases.

## External requirements

Some modules and plugins require external libraries. Please check the requirements for each plugin or module you use in the documentation to find out which requirements are needed.

## Included content

Please check the included content on the [Ansible Galaxy page for this collection](https://galaxy.ansible.com/ui/repo/published/community/general/) or the [documentation on the Ansible docs site](https://docs.ansible.com/ansible/latest/collections/community/general/).

## Using this collection

This collection is shipped with the Ansible package. So if you have it installed, no more action is required.

If you have a minimal installation (only Ansible Core installed) or you want to use the latest version of the collection along with the whole Ansible package, you need to install the collection from [Ansible Galaxy](https://galaxy.ansible.com/ui/repo/published/community/general/) manually with the `ansible-galaxy` command-line tool:

    ansible-galaxy collection install community.general

You can also include it in a `requirements.yml` file and install it via `ansible-galaxy collection install -r requirements.yml` using the format:

```yaml
collections:
- name: community.general
```

Note that if you install the collection manually, it will not be upgraded automatically when you upgrade the Ansible package. To upgrade the collection to the latest available version, run the following command:

```bash
ansible-galaxy collection install community.general --upgrade
```

You can also install a specific version of the collection, for example, if you need to downgrade when something is broken in the latest version (please report an issue in this repository). Use the following syntax where `X.Y.Z` can be any [available version](https://galaxy.ansible.com/ui/repo/published/community/general/):

```bash
ansible-galaxy collection install community.general:==X.Y.Z
```

See [Ansible Using collections](https://docs.ansible.com/ansible/latest/user_guide/collections_using.html) for more details.

## Contributing to this collection

The content of this collection is made by good people just like you, a community of individuals collaborating on making the world better through developing automation software.

We are actively accepting new contributors.

All types of contributions are very welcome.

You don't know how to start? Refer to our [contribution guide](https://github.com/ansible-collections/community.general/blob/main/CONTRIBUTING.md)!

The current maintainers are listed in the [commit-rights.md](https://github.com/ansible-collections/community.general/blob/main/commit-rights.md#people) file. If you have questions or need help, feel free to mention them in the proposals.

You can find more information in the [developer guide for collections](https://docs.ansible.com/ansible/devel/dev_guide/developing_collections.html#contributing-to-collections), and in the [Ansible Community Guide](https://docs.ansible.com/ansible/latest/community/index.html).

Also for some notes specific to this collection see [our CONTRIBUTING documentation](https://github.com/ansible-collections/community.general/blob/main/CONTRIBUTING.md).

### Running tests

See [here](https://docs.ansible.com/ansible/devel/dev_guide/developing_collections.html#testing-collections).

## Collection maintenance

To learn how to maintain / become a maintainer of this collection, refer to:

* [Committer guidelines](https://github.com/ansible-collections/community.general/blob/main/commit-rights.md).
* [Maintainer guidelines](https://github.com/ansible/community-docs/blob/main/maintaining.rst).

It is necessary for maintainers of this collection to be subscribed to:

* The collection itself (the `Watch` button → `All Activity` in the upper right corner of the repository's homepage).
* The "Changes Impacting Collection Contributors and Maintainers" [issue](https://github.com/ansible-collections/overview/issues/45).

They also should be subscribed to Ansible's [The Bullhorn newsletter](https://docs.ansible.com/ansible/devel/community/communication.html#the-bullhorn).

## Publishing New Version

See the [Releasing guidelines](https://github.com/ansible/community-docs/blob/main/releasing_collections.rst) to learn how to release this collection.

## Release notes

See the [changelog](https://github.com/ansible-collections/community.general/blob/stable-11/CHANGELOG.md).

## Roadmap

In general, we plan to release a major version every six months, and minor versions every two months. Major versions can contain breaking changes, while minor versions only contain new features and bugfixes.

See [this issue](https://github.com/ansible-collections/community.general/issues/582) for information on releasing, versioning, and deprecation.

## More information

- [Ansible Collection overview](https://github.com/ansible-collections/overview)
- [Ansible User guide](https://docs.ansible.com/ansible/latest/user_guide/index.html)
- [Ansible Developer guide](https://docs.ansible.com/ansible/latest/dev_guide/index.html)
- [Ansible Community code of conduct](https://docs.ansible.com/ansible/latest/community/code_of_conduct.html)

## Licensing

This collection is primarily licensed and distributed as a whole under the GNU General Public License v3.0 or later.

See [LICENSES/GPL-3.0-or-later.txt](https://github.com/ansible-collections/community.general/blob/stable-11/COPYING) for the full text.

Parts of the collection are licensed under the [BSD 2-Clause license](https://github.com/ansible-collections/community.general/blob/stable-11/LICENSES/BSD-2-Clause.txt), the [MIT license](https://github.com/ansible-collections/community.general/blob/stable-11/LICENSES/MIT.txt), and the [PSF 2.0 license](https://github.com/ansible-collections/community.general/blob/stable-11/LICENSES/PSF-2.0.txt).

All files have a machine readable `SDPX-License-Identifier:` comment denoting its respective license(s) or an equivalent entry in an accompanying `.license` file. Only changelog fragments (which will not be part of a release) are covered by a blanket statement in `REUSE.toml`. This conforms to the [REUSE specification](https://reuse.software/spec/).
