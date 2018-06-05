.. _paired_static_agents:

Paired static agents
********************

In this scenario Shaker runs tests on pre-deployed pair of static agents. The
scenario can be used for Shaker integration testing.

**Scenario**:

.. code-block:: yaml

    deployment:
      agents:
      - id: a-001
        ip: 10.20.1.2
        mode: master
        slave_id: a-002
      - id: a-002
        ip: 10.20.1.8
        master_id: a-001
        mode: slave
    description: In this scenario Shaker runs tests on pre-deployed pair of static agents.
      The scenario can be used for Shaker integration testing.
    execution:
      tests:
      - class: netperf
        program: TCP_STREAM
      - class: shell
        program: ls -al
    file_name: /root/shaker/lib/python2.7/site-packages/shaker/scenarios/misc/static_agents_pair.yaml
    title: Paired static agents

**Errors**:

.. code-block:: yaml

    id: 20c38776-5514-4d15-8543-9d714147d095
    scenario: Paired static agents
    status: error
    stderr: 'Error while executing scenario: Agents failed to join: {''a-002'': ''lost'',
      ''a-001'': ''lost''}'

