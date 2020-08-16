package com.jetbrains.bcnnm.core;

import lombok.Getter;
import lombok.Setter;

public class PathwayCondition {
    public PathwayCondition(String name, String condition)
    {
        this.name = name;
        this.condition = condition;
    }

    @Getter @Setter private String name;
    @Getter @Setter private String condition;

}
