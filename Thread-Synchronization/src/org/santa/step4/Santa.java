package org.santa.step4;

import org.santa.step4.Elf.ElfState;
import org.santa.step4.Reindeer.ReindeerState;

public class Santa implements Runnable {

	enum SantaState {
		SLEEPING, READY_FOR_CHRISTMAS, WOKEN_UP_BY_ELVES, WOKEN_UP_BY_REINDEER
	};

	private SantaState state;
	private Scenario scenario;

	public Santa(Scenario scenario) {
		this.scenario = scenario;
		this.state = SantaState.SLEEPING;
	}

	/**
	 * Report about my state
	 */
	public void report() {
		System.out.println("Santa : " + state);
	}

	@Override
	public synchronized void run() {
		while (scenario.day <= 370) {
			// wait a day...
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			switch (state) {
			case SLEEPING: 
				// if sleeping, continue to sleep
				try {
					synchronized(scenario.santaSem){
					scenario.santaSem.wait();
					}
					
//					if(scenario.reindeerCount == scenario.getReindeers().size()){
//						this.state = SantaState.WOKEN_UP_BY_REINDEER;
//					}
//					else {
						this.state = SantaState.WOKEN_UP_BY_ELVES;
//					}

				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			case WOKEN_UP_BY_ELVES:
				// FIXME: help the elves who are at the door and go back to sleep

				// prevent elf deadlock in the case that the last elf notified before the next
				// troubled elf aquired the semaphore and began waiting for notification.
				if(scenario.elfCount == 0)
					synchronized(scenario.elfSem){
						scenario.elfSem.notify();
						}
					for(Elf elf : scenario.getElves())
						if(elf.getState() == ElfState.AT_SANTAS_DOOR){
							elf.setState(ElfState.WORKING);
							break;
						}
					// if reindeer come home while elves need help, reindeer get priority... christmas can't be late!
//					if(scenario.reindeerCount == scenario.getReindeers().size()){
//						this.state = SantaState.WOKEN_UP_BY_REINDEER;
//					}

					if(scenario.elfSem.availablePermits() == 3)
						state = SantaState.SLEEPING;
				break;
			case WOKEN_UP_BY_REINDEER:
				// FIXME: assemble the reindeer to the sleigh then change state
				// to ready
				for(Reindeer reindeer : scenario.getReindeers()){
					reindeer.setState(ReindeerState.AT_THE_SLEIGH);
				}
				synchronized(scenario.reindeerSem){
					scenario.reindeerSem.notifyAll();
				}
				this.state = SantaState.READY_FOR_CHRISTMAS;
				break;
			case READY_FOR_CHRISTMAS: // nothing more to be done
				try {
					this.wait(100);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			}
		}
	}

	public SantaState getState(){
		return this.state;
	}
	
}
