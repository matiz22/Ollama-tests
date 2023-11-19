
# Ollama-tests

This repository contains simple scripts aimed at facilitating the addition of models to a server using SSH. These scripts streamline the process by leveraging the [Ollama](https://github.com/jmorganca/ollama/) tool and SSH configuration.


## Files

#### config.sh

Contains the ssh_config_profile_name variable.
Users need to input the name of the SSH configuration where models will be added or where Ollama should be installed.

#### install_on_server.sh

Installs Ollama using its provided script onto the server.

#### add_model_from_ollama.sh

Usage: ./add_model_from_ollama.sh "name_of_model"
Accepts a single parameter: the name of the model from Ollama to install.


##### add_model_from_hugging_face.sh

Usage: ./add_model_from_hugging_face.sh "name_of_profile" "repo" "file"
Requires three arguments:
name of the profile,
repository name,
filename.
[Requires Hugging Face CLI](https://huggingface.co/docs/huggingface_hub/guides/cli) installed in [Conda](https://docs.conda.io/projects/miniconda/en/latest/). The script can be used after setting up the environment (default is base).

Feel free to modify the environment variables and configurations in these scripts according to your requirements.


## Why Ollama?

Ollama was selected for its pivotal role in my BA dissertation project. The primary objective is to develop a client for Gophish, enabling the creation of emails using AI. Ollama serves as a valuable resource by providing an API that integrates seamlessly into the client infrastructure.

1. Reasons for Choosing Ollama:
API Integration for Email Generation:
Ollama's API facilitates the generation of emails using AI, a critical component for the envisioned Gophish client. This capability streamlines the creation process and enhances the authenticity of the generated content.

2. Unrestricted Access to Models:
Ollama offers access to a diverse range of models without restrictions. Unlike GPT, which has limitations in specific contexts like creating phishing emails, Ollama provides a broader spectrum of models suited for various tasks, including potentially sensitive use cases like these.

#### Considerations:

1. Compute Intensiveness:
Ollama's functionality comes at the cost of substantial computational resources. It demands significant compute power, which is a consideration for resource allocation and scalability.

2. Exploring Lite Models:
To mitigate the compute-intensive nature of Ollama, exploring the feasibility of utilizing lite (3b) models is under consideration. Testing these models, potentially on a Single Board Computer (SBC) like [Raspberry Pi](https://geeksheek.medium.com/llama-in-a-box-running-generativeai-out-of-a-raspberry-pi-4-81d9dfc7630e) or localhost, could offer insights into optimizing resource usage without compromising functionality significantly.

