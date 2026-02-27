# Contact:
- **Mail**: *lytranvinh.work@gmail.com*
- **Github**: *https://github.com/Youknow2509*

# N8N AI Agent For Image Analysis | Genator | Editor
This repository contains a collection of n8n workflows that utilize AI agents for image analysis, generation, and editing. These workflows are designed to automate various tasks related to image processing using AI technologies.

# How to Use:
## 1. Clone the repository to your local machine:
    ```bash
    git clone https://github.com/Youknow2509/n8n_agent_for_image.git
    ```
## 2. Create file `.env` in the root directory of the project with example file `.env.dev`:
    ```bash
    cp .env.dev .env
    ```

## 3. Fill in the required environment variables in the `.env` file, such as API keys for AI services.
- Note: Get credentials for `google cloud` [here](https://docs.n8n.io/integrations/builtin/credentials/google/service-account/)

## 4. Using makefile running docker n8n local:
    ```bash
    make docker_n8n_run
    # or using docker compose
    docker compose up -d
    ```

## 5. Access the n8n interface:
    Open your web browser and navigate to `http://localhost:5678` (default) to access the n8n interface. You can log in using the credentials specified in your `.env` file.

## 6. Import the workflows:
    - In the n8n interface, click on the "Import" button.
    - Select the workflow files from the `workflows` directory in this repository and import them into n8n.
    
    ```txt
    └── workflows
        ├── agent_edit_image.json
        └── subwf_prepare_data_req_to_model.json
    ```

## 7. Create database using with `google sheets` and `google drive`:
    - From `google drive`, create a folder named `agent_image` and create sheet file named `logs` in that folder.
    - In the `logs` sheet, create the following columns:
    | timestamp | session_id | chat_input | has_file | file_name | file_id | file_res | file_res_id | text_res |
    |

## 8. Create credential for `google drive` and `google sheets` in `google cloud` and access your account to n8n to use those credentials.
- Note: Check all note using `google drive` and `google sheets` in the workflow to use those credentials.

## 9. Each node `google drive`:
- Copy node for check field in workflow.
- Reaload data node -> Access your google drive account and check field copped and restore data to that field.
- Handle with all node `google drive` in workflow.

## 10. Each node `google sheets`:
- Copy node for check field in workflow.
- Reaload data node -> Access your google sheets account and check field copped and restore data to that field.
- Handle with all node `google sheets` in workflow.
## 11. Run the workflows:
    - After importing the workflows and setting up the necessary credentials, you can run the workflows to see how they utilize AI agents for image analysis, generation, and editing.