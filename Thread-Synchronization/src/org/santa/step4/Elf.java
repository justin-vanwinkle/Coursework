package org.santa.step4;

import java.util.Random;

import org.santa.step4.Santa.SantaState;

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
		while (scenario.day <= 370) {
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
					scenario.elfSem.acquire(1);
					
					if(scenario.elfSem.availablePermits() == 0 && scenario.getSanta().getState() == SantaState.SLEEPING){
						synchronized(scenario.elfSem){
							scenario.elfSem.notifyAll();
						}
						state = ElfState.AT_SANTAS_DOOR;
						scenario.elfMutex.lock();
						scenario.elfCount++;
						scenario.elfMutex.unlock();
					}
					else{
						synchronized(scenario.elfSem){
							scenario.elfSem.wait();
						}
						state = ElfState.AT_SANTAS_DOOR;
						scenario.elfMutex.lock();
						scenario.elfCount++;
						scenario.elfMutex.unlock();
					}
				} 
				catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
				
			case AT_SANTAS_DOOR:
				if(scenario.getSanta().getState() == SantaState.SLEEPING)
					synchronized(scenario.santaSem){
						scenario.santaSem.notify();
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
		scenario.elfSem.release(1);
		scenario.elfMutex.lock();
		scenario.elfCount--;
		scenario.elfMutex.unlock();
		if(scenario.elfCount == 0)
			synchronized(scenario.elfSem){
				scenario.elfSem.notify();
			}			
	}
}
