```bash
[01] huanli@ThinkPadTV$ tmt test export
  - name: /tests/example1
    summary: Test01
    description:
    contact: []
    component: []
    test: ./test.sh
    path: /tests/example1
    framework: beakerlib
    manual: false
    require:
      - beakerlib
    recommend: []
    environment: {}
    duration: 5m
    enabled: true
    order: 50
    result: respect
    tag: []
    tier:
    link: []
  - name: /tests/example2
    summary: Test02
    description:
    contact: []
    component: []
    test: ./test.sh
    path: /tests/example2
    framework: beakerlib
    manual: false
    require:
      - beakerlib
    recommend: []
    environment: {}
    duration: 5m
    enabled: true
    order: 50
    result: respect
    tag: []
    tier:
    link: []

--------------------------------------------------------------------------------
[02] huanli@ThinkPadTV$ tmt test export --format dict
[{'name': '/tests/example1', 'summary': 'Test01', 'description': None, 'contact': [], 'component': [], 'test': './test.sh', 'path': '/tests/example1', 'framework': 'beakerlib', 'manual': False, 'require': ['beakerlib'], 'recommend': [], 'environment': {}, 'duration': '5m', 'enabled': True, 'order': 50, 'result': 'respect', 'tag': [], 'tier': None, 'link': []}, {'name': '/tests/example2', 'summary': 'Test02', 'description': None, 'contact': [], 'component': [], 'test': './test.sh', 'path': '/tests/example2', 'framework': 'beakerlib', 'manual': False, 'require': ['beakerlib'], 'recommend': [], 'environment': {}, 'duration': '5m', 'enabled': True, 'order': 50, 'result': 'respect', 'tag': [], 'tier': None, 'link': []}]
--------------------------------------------------------------------------------
[03] huanli@ThinkPadTV$ tmt test export --format yaml
  - name: /tests/example1
    summary: Test01
    description:
    contact: []
    component: []
    test: ./test.sh
    path: /tests/example1
    framework: beakerlib
    manual: false
    require:
      - beakerlib
    recommend: []
    environment: {}
    duration: 5m
    enabled: true
    order: 50
    result: respect
    tag: []
    tier:
    link: []
  - name: /tests/example2
    summary: Test02
    description:
    contact: []
    component: []
    test: ./test.sh
    path: /tests/example2
    framework: beakerlib
    manual: false
    require:
      - beakerlib
    recommend: []
    environment: {}
    duration: 5m
    enabled: true
    order: 50
    result: respect
    tag: []
    tier:
    link: []

--------------------------------------------------------------------------------
[04] huanli@ThinkPadTV$ tmt test export --format dict --fmf-id
[{'name': '/tests/example1', 'url': '', 'ref': '', 'path': '/.'}, {'name': '/tests/example2', 'url': '', 'ref': '', 'path': '/.'}]
--------------------------------------------------------------------------------
[05] huanli@ThinkPadTV$ tmt test export --format dict --fmf-id /tests/example1
[{'name': '/tests/example1', 'url': '', 'ref': '', 'path': '/.'}]
--------------------------------------------------------------------------------
[06] huanli@ThinkPadTV$ tmt test export --format dict --fmf-id /tests/example2
[{'name': '/tests/example2', 'url': '', 'ref': '', 'path': '/.'}]
--------------------------------------------------------------------------------
[07] huanli@ThinkPadTV$ tmt test export --format yaml --fmf-id
  - name: /tests/example1
    url: ''
    ref: ''
    path: /.
  - name: /tests/example2
    url: ''
    ref: ''
    path: /.

--------------------------------------------------------------------------------
[08] huanli@ThinkPadTV$ tmt test export --format yaml --fmf-id /tests/example1
  - name: /tests/example1
    url: ''
    ref: ''
    path: /.

--------------------------------------------------------------------------------
[09] huanli@ThinkPadTV$ tmt test export --format yaml --fmf-id /tests/example2
  - name: /tests/example2
    url: ''
    ref: ''
    path: /.

--------------------------------------------------------------------------------
DONE
```
