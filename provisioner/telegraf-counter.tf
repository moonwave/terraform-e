provisioner "remote-exec" {
    inline = [
        "mkdir -p ${var.tmp_dir}; chmod +x "${var.tmp_dir}"/deploy-files.sh; sudo "${var.tmp_dir}"/deploy-files.sh"
    ]
}

provisioner "file" {
    source      = "${path.module}/files/data-collector.py"
    destination =  "${var.tmp_dir}/data-collector.py"
}

provisioner "file" {
    source      = "${path.module}"/files/telegraf-service-count.conf
    destination = "${var.tmp_dir}"/telegraf-service-count.conf
}

provisioner "remote-exec" {
    inline = [
        "chmod +x "${var.tmp_dir}"/deploy-files.sh; sudo "${var.tmp_dir}"/deploy-files.sh"
    ]
}
