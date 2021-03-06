
open Javalib_pack
open Sawja_pack


val is_static_final_field : JContext.t -> JBasics.class_name -> JBasics.field_signature -> bool

val has_static_final_fields : JCode.jcode Javalib.interface_or_class -> bool

val translate_instr_static_field : JContext.t -> Cfg.Procdesc.t -> JBasics.field_signature -> Sil.typ ->
Sil.location -> Ident.t list * Sil.instr list * Sil.exp


val static_field_init : JCode.jcode Javalib.interface_or_class -> JBasics.class_name -> JBir.instr array -> JBir.instr array
