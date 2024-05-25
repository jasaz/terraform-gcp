// Create a Cloud Run service
resource "google_cloud_run_v2_service" "cr_service" {
  name     = "cloudrun-service"
  location = var.region
  ingress  = var.cloud_run_ingress

  template {

    containers {
      name = "ingress_container"
      image = "us-docker.pkg.dev/cloudrun/container/hello"

      startup_probe {
        initial_delay_seconds = 0
        timeout_seconds = 1
        period_seconds = 3
        failure_threshold = 1
        tcp_socket {
          port = 8888
        }
      }
      liveness_probe {
        http_get {
          path = "/"
        }
      }
      depends_on = ["nginx-sidecar"]
    }

    containers {
      
      name = "nginx-sidecar"
      image = "nginx"
      resources {
        limits = {
          cpu    = "2"
          memory = "1024Mi"
        }
      }
      volume_mounts {
        name = "nginx_conf-secret-vol"
        mount_path = "/etc/nginx/conf.d/"
      }
      ports {
        container_port = 8080
      }
    }

    volumes {
      name = "nginx_conf-secret-vol"
      secret {
        secret = "nginx_config"
        items {
          version = "1"
          path = "projects/1025759812276/secrets/nginx_config"
        }
      }
    }

    service_account = google_service_account.cloud_run_sa.email

    
  }

  /*
  depends_on = [
    google_service_account_iam_member.cr-sa-github-wi-sa-binding
  ] */

}
