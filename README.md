# Kibana with X-Pack
Kibana 5.5 with x-pack plugin installed.

# Run by Command
To run directly on host using ```docker run``` command, should set exposed ports using the following command:
```bash
docker run -itd --name kibana -p 5601:5601 aghassabian/kibana-xpack
```
# run using Ansible
To run using Ansible add the following section to ansible role or playbook:
```yaml

- name: Run Kibana
  docker_container:
    name: kibana
    image: aghassabian/kibana-xpack
    state: started
    networks:
      - name: "{{ elastic_network }}"
    ports:
      - "5601:5601"
```
elastic network should have already been created.
