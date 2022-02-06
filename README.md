# terraform_minkube_helm

All prometheus configuration inside the values yaml with receiver webhook. The authentication i did not do it because of i dont have much time for it.

$ terraform init

$ terraform plan

$ terraform apply --auto-approve

-- For vault --

$ kubectl exec-it -n staging vault-0 -- vault operator init

$ kubectl exec -it -n staging vault-0 -- vault operator unseal 'Key1'

$ kubectl exec -it -n staging vault-0 -- vault operator unseal 'Key2'

$ kubectl exec -it -n staging vault-0 -- vault operator unseal 'Key3'

$ kubectl exec -it -n staging vault-0 sh

    $ export VAULT_TOKEN=s.ayLb3cD9CLtn159etYrUh0R3
    $ vault login VAULT_TOKEN
    $ vault secrets enable -path=secrets kv
    $ vault kv put secrets/stef/prometheus password=test
    $ vault kv put secrets/stef/alertmanager password=test1
