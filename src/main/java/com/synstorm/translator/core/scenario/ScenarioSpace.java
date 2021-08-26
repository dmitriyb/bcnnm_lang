package com.synstorm.translator.core.scenario;

import java.util.List;

public class ScenarioSpace {
    private ScenarioLattice lattice;
    private List<ScenarioCell> objects;

    public ScenarioLattice getLattice() {
        return lattice;
    }

    public void setLattice(ScenarioLattice grid) {
        this.lattice = grid;
    }

    public List<ScenarioCell> getObjects() {
        return objects;
    }

    public void setObjects(List<ScenarioCell> objects) {
        this.objects = objects;
    }

//    public IEventResponse[] addInitialObjects(final Space space) {
//        final int objectType = DSLLibrary.INSTANCE.getDSLObjectTypeByLabel("Cell");
//        final DSLLibrary.DSLObject dslObject = DSLLibrary.INSTANCE.getDSLObjectByType(objectType);
//
//
//        final PhysicalObject obj_0 = new Cell(objectType, DSLLibrary.INSTANCE.molecules.size(), space);
//        dslObject.getMolecules().forEachEntry((s, v) -> {
//            obj_0.updateSignal(obj_0.getId(), obj_0.getId(), s, v);
//            return true;
//        });
//        final PhysicalObjectAddResponse resp_0 = new PhysicalObjectAddResponse(space::updateAddObject,
//                obj_0, 100 * (50 * 100 + 50) + 50, 1);
//        final ConnectionAddResponse resp_1 = obj_0.connectWithSpace();
//        return new IEventResponse[] {resp_0, resp_1};
//    }

}
