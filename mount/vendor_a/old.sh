cd .. && cd .. && cd imgs && e2fsck -f vendor_a_old.img && resize2fs vendor_a_old.img 4G && user=$(whoami) && mkdir vendor_a_old && sudo mount -o rw vendor_a_old.img vendor_a_old && sudo chown -R $user:$user vendor_a_old && cd vendor_a_old && rm -r lost+found && sudo mkdir lost+found && sudo chmod 700 lost+found && cd ..; read -p "APERTE ENTER, PARA FINALIZAR DE MODIFICAR A IMG " finalizar; sudo umount vendor_a_old && rm -r vendor_a_old && e2fsck -f vendor_a_old.img && resize2fs -M vendor_a_old.img; echo -e "FINALIZADO COM  SUCESSO! SUA IMG ESTA PRONTA PARA SER, INSTALADA! "
