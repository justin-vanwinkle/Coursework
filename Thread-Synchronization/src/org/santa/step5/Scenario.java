package org.santa.step5;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.*;
import java.util.concurrent.Semaphore;

public class Scenario {

	private Santa santa;
	private List<Elf> elves;
	private List<Reindeer> reindeers;
	private boolean isDecember;

	private int day = 0;
	private int elfCount = 0;
	private int reindeerCount = 0;
	private final static Semaphore elfSem = new Semaphore(3,true);
	private final static Semaphore reindeerSem = new Semaphore(9,true);
	private final static Semaphore santaSem = new Semaphore(0,true);
	private final static Lock reindeerMutex = new ReentrantLock(true);
	private final static Lock elfMutex = new ReentrantLock(true);
	

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

	public int getDay() {
		return day;
	}

	public void setDay(int day) {
		this.day = day;
	}

	public int getElfCount() {
		return elfCount;
	}

	public void setElfCount(int elfCount) {
		this.elfCount = elfCount;
	}

	public int getReindeerCount() {
		return reindeerCount;
	}

	public void setReindeerCount(int reindeerCount) {
		this.reindeerCount = reindeerCount;
	}

	public static Semaphore getElfsem() {
		return elfSem;
	}

	public static Semaphore getReindeersem() {
		return reindeerSem;
	}

	public static Semaphore getSantasem() {
		return santaSem;
	}

	public static Lock getReindeermutex() {
		return reindeerMutex;
	}

	public static Lock getElfmutex() {
		return elfMutex;
	}

}
