package org.santa.step2;

public class Santa implements Runnable {

	enum SantaState {
		SLEEPING, READY_FOR_CHRISTMAS, WOKEN_UP_BY_ELVES, WOKEN_UP_BY_REINDEER
	};

	private SantaState state;
	private Scenario scenario;
	
	private volatile boolean isFinished = false;

	
	public Santa(Scenario scenario) {
		this.scenario = scenario;
		this.setState(SantaState.SLEEPING);
		}

	/**
	 * Report about my state
	 */
	public void report() {
		System.out.println("Santa : " + getState());
	}

	@Override
	public void run() {
		while (true) {
			// wait a day...
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			switch (getState()) {
			case SLEEPING: // if sleeping, continue to sleep
				
				break;
			case WOKEN_UP_BY_ELVES:
				// help the elves who are at the door and go back to sleeping
				for(Elf elf : scenario.getElves()){
					elf.setState(Elf.ElfState.WORKING);					
				}
				this.setState(SantaState.SLEEPING);
				break;
			case WOKEN_UP_BY_REINDEER:
				// FIXME: assemble the reindeer to the sleigh then change state
				// to ready
				break;
			case READY_FOR_CHRISTMAS: // nothing more to be done
				break;
			}
		}
	}
	
	public void setState (SantaState state) {
		this.state = state;
	}

	public SantaState getState() {
		return state;
	}
	
	public void stopThread() {
		isFinished = true;
	}
	

}
