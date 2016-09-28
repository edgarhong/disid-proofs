// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.web;

import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

import com.springsource.petclinic.web.security.PetclinicUserDetails;

privileged aspect PetclinicUserDetails_Roo_Equals {
    
    public boolean PetclinicUserDetails.equals(Object obj) {
        if (!(obj instanceof PetclinicUserDetails)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        PetclinicUserDetails rhs = (PetclinicUserDetails) obj;
        return new EqualsBuilder().append(id, rhs.id).append(password, rhs.password).append(username, rhs.username).isEquals();
    }
    
    public int PetclinicUserDetails.hashCode() {
        return new HashCodeBuilder().append(id).append(password).append(username).toHashCode();
    }
    
}
