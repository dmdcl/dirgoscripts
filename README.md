# SCRIPTS BY DIRGO

## port-forwarding.sh
### EN
Forwards ports using SSM, so you can use RDP with port 3389 closed. Local port is your local machine port you want to forward.

### ES
sirve para redireccionar puertos en una instancia con SSM para utilizar RDP sin abrir el puerto 3389, el puerto local es el puerto de tu maquina que quieres redirigir.

## ssm-connect.sh
### EN
this script connects to a instance by ssm, asks you for a profile (if you only have one you can write default) and shows you the instances available, then you select the id to the instance and connect.

### ES
Este script permite conectarte a una instancia por SSM, te pregunta por tu perfil de AWS (si solo tienes uno puedes escribir default) y te muestra las instancias disponibles, entonces seleccionas el ID de la instancia y te conectas.

## add-tmux.sh 
### EN
First you need to install tmux on your system:  
```bash
sudo apt install tmux -y # Debian
sudo dnf install tmux -y # RHEL
```  

Then run this script:  

If you use another shell just change the '.bashrc' value.   
You only need to run this script once.

### ES
Primero tienes que instalar tmux en tu terminal:  
```bash
sudo apt install tmux -y # Debian
sudo dnf install tmux -y # RHEL
```  

Luego corre este script:  

Si utilizas otro shell, solamente cambia el valor de '.bashrc'.  
Solamente necesitas ejecutar este script una vez.

