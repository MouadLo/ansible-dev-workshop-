data "template_file" "ansible-init" {
  template = file("scripts/ansible-init.sh")
  
  vars = {
    DEVICE          = var.INSTANCE_DEVICE_NAME
    JENKINS_VERSION = var.JENKINS_VERSION
  }
}

data "template_cloudinit_config" "cloudinit-ansible" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.ansible-init.rendered
  }
}

