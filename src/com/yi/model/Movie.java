package com.yi.model;

public class Movie {
	private int mNo;
	private String mTitle;
	private String mExplain;
	private String mFile;
	private String mTime;

	public Movie() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Movie(int mNo, String mTitle, String mExplain, String mFile, String mTime) {
		super();
		this.mNo = mNo;
		this.mTitle = mTitle;
		this.mExplain = mExplain;
		this.mFile = mFile;
		this.mTime = mTime;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public String getmTitle() {
		return mTitle;
	}

	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}

	public String getmExplain() {
		return mExplain;
	}

	public void setmExplain(String mExplain) {
		this.mExplain = mExplain;
	}

	public String getmFile() {
		return mFile;
	}

	public void setmFile(String mFile) {
		this.mFile = mFile;
	}

	public String getmTime() {
		return mTime;
	}

	public void setmTime(String mTime) {
		this.mTime = mTime;
	}

	@Override
	public String toString() {
		return String.format("Movie [mNo=%s, mTitle=%s, mExplain=%s, mFile=%s, mTime=%s]", mNo, mTitle, mExplain, mFile,
				mTime);
	}

}
