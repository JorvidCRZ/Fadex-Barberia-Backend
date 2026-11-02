package com.sistemabarberia.fadex_backend.auth.usuario.dto.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class RegisterRequest {

    private String username;
    private String password;
    private Integer idRol;
    private Integer idPersona;
}
