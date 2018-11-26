package ch.martinelli.aspects;

public aspect ArchitectureCheckAspect {

    declare error:
            within (*..entity..*) && call (* *..api..*(..)) :
            "Architecure violation: entity package must not access api package";

    declare error:
            within (*..entity..*) && call (* *..service..*(..)) :
            "Architecure violation: entity package must not access service package";

    declare error:
            within (*..entity..*) && call (* *..repository..*(..)) :
            "Architecure violation: entity package must not access repository package";

    declare error:
            within (*..service..*) && call (* *..api..*(..)) :
            "Architecure violation: control package must not access boundary package";

    declare error:
            within (*..repository..*) && call (* *..api..*(..)) :
            "Architecure violation: repository package must not access service package";

    declare error:
            within (*..repository..*) && call (* *..service..*(..)) :
            "Architecure violation: repository package must not access service package";
}
