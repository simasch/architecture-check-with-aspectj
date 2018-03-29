package ch.martinelli.aspects;

public aspect ArchitectureCheckAspect {

    declare error:
            within (*..entity..*) && call (* *..control..*(..)) :
            "Architecure violation: entity package must not access control package";

    declare error:
            within (*..control..*) && call (* *..boundary..*(..)) :
            "Architecure violation: control package must not access boundary package";

    declare error:
            within (*..control.repository..*) && call (* *..control.service..*(..)) :
            "Architecure violation: repository package must not access service package";
}
