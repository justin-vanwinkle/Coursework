package org.santa.step5;

import java.util.Random;

import org.santa.step5.Santa.SantaState;

public class Elf implements Runnable {

	enum ElfState {
		WORKING, TROUBLE, AT_SANTAS_DOOR
	};

	private ElfState state;
	/**
	 * The number associated with the Elf
	 */
	private int identifier;
	private Random rand = new Random();
	private Scenario scenario;

	public Elf(int identifier, Scenario scenario) {
		this.identifier = identifier;
		this.scenario = scenario;
		this.state = ElfState.WORKING;
	}

	public ElfState getState() {
		return state;
	}

	/**
	 * Report about my state
	 */
	public void report() {
		System.out.println("Elf " + identifier + " : " + state);
	}

	@Override
	public synchronized void run() {		
		while (scenario.getDay() <= 370) {
			// wait a day
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			switch (state) {
			case WORKING: {
				// at each day, there is a 1% chance that an elf runs into
				// trouble.
				if (rand.nextDouble() < 0.05) {
					state = ElfState.TROUBLE;
				}
				break;
			}
			case TROUBLE:
				// FIXME: if possible, move to Santa's door
				// move to santa's door iff 3 semaphores are given AND santa is asleep
				// OR if you have a semaphore AND you are notified.
				try {
					scenario.getElfsem().acquire(1);
					
					if(scenario.getElfsem().availablePermits() == 0 && scenario.getSanta().getState() == SantaState.SLEEPING){
						synchronized(scenario.getElfsem()){
							scenario.getElfsem().notifyAll();
						}
						state = ElfState.AT_SANTAS_DOOR;
						scenario.getElfmutex().lock();
						scenario.setElfCount(scenario.getElfCount() + 1);
						scenario.getElfmutex().unlock();
					}
					else{
						synchronized(scenario.getElfsem()){
							scenario.getElfsem().wait();
						}
						state = ElfState.AT_SANTAS_DOOR;
						scenario.getElfmutex().lock();
						scenario.setElfCount(scenario.getElfCount() + 1);
						scenario.getElfmutex().unlock();
					}
				} 
				catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
				
			case AT_SANTAS_DOOR:
				if(scenario.getSanta().getState() == SantaState.SLEEPING)
					synchronized(scenario.getSantasem()){
						scenario.getSantasem().notify();
					}
				break;
			}
		}
	}

	/**
	 * ONLY LET SANTA CALL THIS
	 * TERRIBLE PRACTICE(LIKE MOST EVERYTHING I DID IN THIS WHOLE PROG), BUT IT'S FOR CLASS
	 * @param state
	 */
	public void setState(ElfState state) {
		this.state = state;
		scenario.getElfsem().release(1);
		scenario.getElfmutex().lock();
		scenario.setElfCount(scenario.getElfCount() - 1);
		scenario.getElfmutex().unlock();
		if(scenario.getElfCount() == 0)
			synchronized(scenario.getElfsem()){
				scenario.getElfsem().notify();
			}			
	}
}
