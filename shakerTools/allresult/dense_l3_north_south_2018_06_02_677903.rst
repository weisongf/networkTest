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

    id: b9a192d3-b85d-49ec-944e-3ca110ba5b35
    scenario: OpenStack L3 North-South Dense
    status: error
    stderr: 'Error while executing scenario: Failed to deploy Heat stack 858a2356-2ccb-4746-b90b-31e716b73f7e.
      Expected status COMPLETE, but got FAILED. Reason: Resource CREATE failed: ResourceInError:
      resources.shaker_pdaozu_slave_7: Went to status ERROR due to "Message: Binding failed
      for port 97114f77-6320-47dd-a319-5b70d1d44b55, please check neutron logs for more
      information., Code: 500"'

