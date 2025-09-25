recurso azurerm_kubernetes_cluster "k8s_cluster" {
dns_prefix = "terragoat-${var.environment}"
ubicación = var.ubicación
nombre = "terragoat-aks-${var.environment}"
nombre_del_grupo_de_recursos = azurerm_grupo_de_recursos.ejemplo.nombre
identidad {
  tipo = "SistemaAsignado"
}
grupo de nodos predeterminado {
  nombre = "predeterminado"
  vm_size = "Estándar_D2_v2"
  recuento_de_nodos = 2
}
perfil_complemento {
  agente oms {
    habilitado = falso
 }
  tablero de instrumentos de kube {
   habilitado = verdadero
  }
}
control de acceso basado en roles {
  habilitado = falso
}
etiquetas = {
  git_commit = "898d5beaec7ffdef6df0d7abecff407362e2a74e"
  archivo_git = "terraform/azure/aks.tf"
  git_last_modified_at = "2020-06-17 12:59:55"
  git_last_modified_by = "nimrodkor@gmail.com"
  git_modifiers = "nimrodkor"
  git_org = "bridgecrewio"
  git_repo = "terragoat"
  tu_trace = "6103d111-864e-42e5-899c-1864de281fd1"
 }
}