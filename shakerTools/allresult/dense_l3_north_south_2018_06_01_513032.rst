.. _openstack_l3_north_south_dense:

OpenStack L3 North-South Dense
******************************

In this scenario Shaker launches pairs of instances on the same compute node.
Instances are connected to different tenant networks, each connected to own
router. Instances in one of networks have floating IPs. The traffic goes from
one network via external network to the other network.

**Scenario**:

.. code-block:: yaml

    deployment:
      accommodation:
      - pair
      - double_room
      - density: 8
      - compute_nodes: 1
      template: l3_north_south.hot
    description: In this scenario Shaker launches pairs of instances on the same compute
      node. Instances are connected to different tenant networks, each connected to own
      router. Instances in one of networks have floating IPs. The traffic goes from one
      network via external network to the other network.
    execution:
      progression: linear
      tests:
      - class: flent
        method: tcp_download
        title: Download
      - class: flent
        method: tcp_upload
        title: Upload
      - class: flent
        method: tcp_bidirectional
        title: Bi-directional
    file_name: /root/shaker/lib/python2.7/site-packages/shaker/scenarios/openstack/dense_l3_north_south.yaml
    title: OpenStack L3 North-South Dense

**Errors**:

.. code-block:: yaml

    id: d5c81c83-143a-4458-bc8b-9cd7fa9f7ece
    scenario: OpenStack L3 North-South Dense
    status: error
    stderr: 'Error while executing scenario: Agents failed to join: {''shaker_dzuafi_slave_0'':
      ''lost'', ''shaker_dzuafi_slave_1'': ''lost'', ''shaker_dzuafi_slave_2'': ''lost'',
      ''shaker_dzuafi_slave_3'': ''lost'', ''shaker_dzuafi_slave_4'': ''lost'', ''shaker_dzuafi_slave_5'':
      ''lost'', ''shaker_dzuafi_slave_6'': ''lost'', ''shaker_dzuafi_slave_7'': ''lost''}'

