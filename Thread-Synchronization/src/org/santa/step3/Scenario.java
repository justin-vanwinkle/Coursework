package org.santa.step3;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.*;
import java.util.concurrent.Semaphore;

public class Scenario {

	private Santa santa;
	private List<Elf> elves;
	private List<Reindeer> reindeers;
	private boolean isDecember;

	// all public because i'm being lazy
	public int day = 0;
	public int elfCount = 0;
    public int reindeerCount = 0;
	public final static Semaphore elfSem = new Semaphore(3,true);
	public final static Semaphore reindeerSem = new Semaphore(9,true);
	public final static Semaphore santaSem = new Semaphore(0,true);
	public final static Lock reindeerMutex = new ReentrantLock(true);
	public final static Lock elfMutex = new ReentrantLock(true);
	

	/**
	 * Initialize the lists etc
	 */
	public Scenario() {
		isDecember = false;
		santa = null;
		elves = new ArrayList<>();
		reindeers = new ArrayList<>();
	}

	public List<Elf> getElves() {
		return elves;
	}

	public List<Reindeer> getReindeers() {
		return reindeers;
	}

	public Santa getSanta() {
		return santa;
	}

	public boolean isDecember() {
		return isDecember;
	}

	public void setDecember(boolean isDecember) {
		this.isDecember = isDecember;
	}

	public void setSanta(Santa santa) {
		this.santa = santa;
	}

//	public int getElfCount() {
//		return elfCount;
//	}
//
//	public void setElfCount(int elfCount) {
//		this.elfCount = elfCount;
//	}
//
//	public int getReindeerCount() {
//		return reindeerCount;
//	}
//
//	public void setReindeerCount(int reindeerCount) {
//		this.reindeerCount = reindeerCount;
//	}
//
//	public static Semaphore getElfSem() {
//		return elfSem;
//	}
//
//	public static void setElfSem(Semaphore elfSem) {
//		Scenario.elfSem = elfSem;
//	}
//
//	public static Semaphore getReindeerSem() {
//		return reindeerSem;
//	}
//
//	public static void setReindeerSem(Semaphore reindeerSem) {
//		Scenario.reindeerSem = reindeerSem;
//	}
//
//	public static Semaphore getSantaSem() {
//		return santaSem;
//	}
//
//	public static void setSantaSem(Semaphore santaSem) {
//		Scenario.santaSem = santaSem;
//	}
//
//	public static Lock getMutex() {
//		return mutex;
//	}
//
//	public static void setMutex(Lock mutex) {
//		Scenario.mutex = mutex;
//	}
//
//	public static Lock getElfMutex() {
//		return elfMutex;
//	}
//
//	public static void setElfMutex(Lock elfMutex) {
//		Scenario.elfMutex = elfMutex;
//	}

}
