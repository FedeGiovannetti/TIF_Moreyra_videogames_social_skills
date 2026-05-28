
library(dplyr)



clean_colnames <- function(data){
  
  subject_info_columns <- c("max_educ_level" = "¿Cual es tu máximo nivel de estudios alcanzado?",
                            "birth_place" = "Lugar de nacimiento",
                            "work" = "Profesión/Ocupación",
                            "career" = "Si estás estudiando ¿Qué carrera estás estudiando?",
                            "work_spec" = "Si estás trabajando ¿Cuál es tu trabajo?",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
                            "work_info" = "¿Qué tipo de trabajo tenes?",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
                            "work_change_6_mo" = "¿Cambiaste de trabajo en los últimos 6 meses?",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                            "psych_treatment" = "¿Te encontrás bajo tratamiento psiquiátrico/neurológico?",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
                            "dx_info" = "Si tenés algún diagnóstico psiquiátrico/neurológico, podés indicarnos cual/es:"                 
                            )
  
  videogame_info_columns <- c("videogame_play" = "¿Jugás videojuegos?",
                              "videogame_hours" =  "Horas de videojuegos empleadas diariamente.",
                              "videogame_hours_week" =  "¿Cuántas horas a la semana jugás?",
                              "videogame_years_exp" =  "¿Hace cuántos años jugás a los videojuegos?",
                              "videogame_device" =  "¿Hace cuántos años jugás a los videojuegos?",
                              "videogame_fav_genre" = "¿Cuáles son tus géneros de videojuegos favoritos?", 
                              "videogame_fav_5" = "Nombre de tus 5 juegos favoritos actuales o pasados",                                                                                                        
                              "videogame_modality" = "En lo que refiere a la modalidad en que solés jugar, ¿qué opción te define mejor?",                                                                          
                              "videogame_context" = "En lo que refiere al contexto en el que solés jugar, ¿qué opción te define mejor?" 
    
  )
  
  social_skills_columns <- c("CHS_U_academic_1"= "1. En la universidad o trabajo, cuando no comprendo una explicación sobre algún tema, pregunto hasta comprenderlo.",                                         
                             "CHS_U_academic_2"= "2. Cuando mis aportes no son tenidos en cuenta en la elaboración de un trabajo en grupo, expreso directamente mi disgusto.",                                 
                             "CHS_U_academic_3"= "3. Si un compañero emite públicamente una opinión personal que me afecta, expreso mi posición.",                                                             
                             "CHS_U_academic_4"= "4. Si encuentro que me han corregido mal un examen, le solicito al profesor que lo revise.",
                             
                             "CHS_U_opposition_5"= "5. Si me cortan el pelo y no quedo conforme, le reclamo al peluquero.",                                                                                      
                             "CHS_U_opposition_6"= "6. Si un taxista conduce en forma imprudente, le solicito que lo haga en forma adecuada.",                                                                   
                             "CHS_U_opposition_7"= "7. En la sala de espera de un consultorio médico, si entra un visitador médico cuando me toca el turno, expreso respetuosamente mi malestar al profesional.",
                             "CHS_U_opposition_8"= "8. Si en un comercio me tratan mal comunico mi disconformidad al encargado.",      
                             
                             "CHS_U_empathetic_9"= "9. Si un compañero me hace una crítica adecuada sobre mi comportamiento, lo acepto abiertamente.",                                                           
                             "CHS_U_empathetic_10"= "10. Si un amigo se siente mal por algo que dije o hice, le pido disculpas.",                                                                                 
                             "CHS_U_empathetic_11"= "11. Si en una discusión ofendo a mi pareja, le pido disculpas en ese momento.",                                                                              
                             "CHS_U_empathetic_12"= "12. Si un amigo tiene dificultades, lo escucho atentamente evitando contar mis propios problemas.",
                             
                             "CHS_U_affective_13"= "13. Al sentir deseos de conocer a alguien a quien no fui presentado(a), yo mismo me presento."  ,                                                            
                             "CHS_U_affective_14"= "14. Si una persona me interesa sexualmente, consigo acercarme a ella para iniciar una conversación." ,                                                      
                             "CHS_U_affective_15"= "15. Si una persona me gusta, la invito a salir en la primera oportunidad.",                                                                                  
                             "CHS_U_affective_16"= "16. Halago a personas que despiertan un interés sexual en mí." , 
                             
                             "CHS_U_conversation_17" = "17. En un viaje en ómnibus, converso con desconocidos.",                                                                                                     
                             "CHS_U_conversation_18" = "18. Mientras estoy en la fila de un banco inicio conversaciones con otras personas.",                                                                        
                             "CHS_U_conversation_19" = "19. Cuando estoy en la playa o en el parque, inicio conversaciones con personas que se encuentran cerca.",                                                   
                             "CHS_U_conversation_20" = "20. En un congreso, me integro a conversaciones con desconocidos."  
    
  )

  
  renamed_data <- data %>% 
    rename(any_of(subject_info_columns)) %>% 
    rename(any_of(videogame_info_columns))  %>% 
    rename(any_of(social_skills_columns)) 
  
  return(renamed_data)
  
  
}



