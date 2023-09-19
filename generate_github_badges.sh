#!/bin/bash

org_name="liuzengh"  # 组织名
repo_name="test-badges"  # 仓库名
docs="https://github.com/liuzengh/test-badges"

# 生成GitHub badges
echo "[![Go Reference](https://pkg.go.dev/badge/github.com/${org_name}/${repo_name}.svg)](https://pkg.go.dev/github.com/${org_name}/${repo_name})"
echo "[![Go Report Card](https://goreportcard.com/badge/github.com/${org_name}/${repo_name})](https://goreportcard.com/report/github.com/${org_name}/${repo_name})"
echo "[![LICENSE](https://img.shields.io/github/license/{org_name}/${repo_name}.svg?style=flat-square)](https://github.com/${org_name}/${repo_name}/blob/main/LICENSE)"
echo "[![Releases](https://img.shields.io/github/release/${org_name}/${repo_name}.svg?style=flat-square)](https://github.com/${org_name}/${repo_name}/releases)"
echo "[![Docs](https://img.shields.io/badge/docs-latest-green)](${docs})"
echo "[![Tests](https://github.com/${org_name}/${repo_name}/actions/workflows/tests.yaml/badge.svg)](https://github.com/${org_name}/${repo_name}/actions/workflows/tests.yaml)"
echo "[![Coverage](https://codecov.io/gh/${org_name}/${repo_name}/branch/main/graph/badge.svg)](https://app.codecov.io/gh/${org_name}/${repo_name}/tree/main)"