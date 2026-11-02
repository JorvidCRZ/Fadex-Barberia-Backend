package com.sistemabarberia.fadex_backend.auth.usuario.dto.request;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public record ChangePasswordRequest(

        @NotBlank(message = "La contraseña actual es obligatoria")
        String currentPassword,

        @NotBlank(message = "La nueva contraseña es obligatoria")
        @Size(min = 8, max = 100)
        String newPassword,

        @NotBlank(message = "Debe confirmar la contraseña")
        String confirmPassword

) {
}