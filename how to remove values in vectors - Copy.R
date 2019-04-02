#----------how to remove values in vectors

vec<-c(87,34,56,78)
vec<-vec[vec!=56]
vec

#------deleting series

vec2<-1:10
vec2<-vec2[vec2 %in% 3:7]
vec[-c(3,8)]
vec2[-2]
vec2

#------replacing with other numbers 

vec3<-c(12,13,14,15,16,17,18,19)
vec3[length(vec3)-4]=90
vec3
vec3[6]=56


#------------replacing with NA

vec4<-c(56,57,58,59,60,61,62,63,64)
vec4[2]=NA
vec4[c(3,4)]=NA
is.na(vec4)
vec4[!is.na(vec4)]
vec4








