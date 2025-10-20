# check port
source ../common/check_port.sh
hosts=("68.183.62.71")
ports=("9090" "9100")
check_ports hosts[@] ports[@]

ansible-playbook \
-i 68.183.62.71, \
--user root \
--become \
--timeout 20 \
ansible/prometheus-install.yaml