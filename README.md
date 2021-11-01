## Created by: Adam Borel

###### ![LinkedIn Profile](https://www.linkedin.com/in/adam-borel-56147341/)

---

### Automated ELK Stack Deployment

The files in this repository were used to configure a cloud based network, depicted visually in this diagram below:

![Network Diagram](Images/{Adam_Borel}_Project_1_Diagram_Sub_File.png)

These files are used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Accessible below, select portions of the YAML Playbook files, which can be used to install only certain pieces the ELK stack in Azure. , such as Filebeat.

![Filebeat YAML Playbook]()

This document contains the following details:

- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

---

### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the Damn Vulnerable Web Application.

Load balancing ensures that the application will be highly accessible, in addition to restricting access to the network.

- TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system resources.

- TODO: What does Filebeat watch for?
- TODO: What does Metricbeat record?

The configuration details of each machine may be found below:

| Virtual Machines | Functions | IP Addresses | Operating Systems |
|:-|:-|:-|:-:|
| Jump Box                          |       Gateway       | 10.0.0.4                               | Linux: Ubuntu 18.04 <br> (*1 vCPU 1GB RAM*) |
| (*Web 1*) (*Web 2*) (*Web 3*)     |    DVWA Webservers  | (*10.0.0.5*) (*10.0.0.6*) (*10.0.0.7*) | Linux: Ubuntu 18.04 <br> (*1 vCPU 2GB RAM*) |
| ELK Stack                         | ElasticSearch Stack | 10.1.0.4                               | Linux: Ubuntu 18.04 <br> (*2 vCPU 8GB RAM*) |

---

### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the JumpBox/Ansible VM machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

- TODO: Add whitelisted IP addresses

Machines within the network can only be accessed by _____.

- TODO: Which machine did you allow to access your ELK VM? What was its IP address?

A summary of the access policies in place can be found in the table below:

| NAME | PUBLICLY ACCESSIBLE *(Y/N)* | ALLOWED IP ADDRESSES |
|:-|:-|:-|
| Jump Box VM                        | Yes - (*SSH Port 22*)                                       | (*Personal Public IP Address*)                |
| VMs: (*Web 1*) (*Web 2*) (*Web 3*) | NO                                                          | (*Webserver Load Balancer Public IP Address*) |
| Webserver Load Balancer            | Yes - (*HTTP Port 80*)                                      | Any                                           |
| ELK Stack Log Monitoring           | Yes - ( *Kibana port:5601*) (*API calls on HTTP Port:9200*) | (*Kibana - Any*) (*HTTP API - 10.0.0.0/16*)   |

---

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...

- TODO: What is the main advantage of automating configuration with Ansible?

The playbook implements the following tasks:

- TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc.
- ...
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![Docker ps Screenshot](https://1drv.ms/u/s!AjmBe7nEamR4mzJ-4p6ZtvEYQSZI)

### Target Machines & Beats

This ELK server is configured to monitor the following machines:

- TODO: List the IP addresses of the machines you are monitoring

We have installed the following Beats on these machines:

- TODO: Specify which Beats you successfully installed

These Beats allow us to collect the following information from each machine:

- TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc.

### Using the Playbook

In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:

- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

TODO: Answer the following questions to fill in the blanks:

- Which file is the playbook? Where do you copy it?
- Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?
- Which URL do you navigate to in order to check that the ELK server is running?

As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, *etc*.
