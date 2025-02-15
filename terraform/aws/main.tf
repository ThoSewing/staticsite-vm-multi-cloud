module "rede" {
    source      = "./modules/rede"
    rede_cidr   = "${var.rede_cidr}"
    subnet_cidr = "${var.subnet_cidr}"
    subnet2_cidr = "${var.subnet2_cidr}"
}

module "compute" {
    source     = "./modules/compute"
    rede_id    = "${module.rede.vpc_id}"
    subnet_id  = "${module.rede.subnet_id}"
    subnet2_id = "${module.rede.subnet2_id}"
    rede_cidr  = "${var.rede_cidr}"
    ami        = "${var.ami}"
    depends_on = [module.rede]
}