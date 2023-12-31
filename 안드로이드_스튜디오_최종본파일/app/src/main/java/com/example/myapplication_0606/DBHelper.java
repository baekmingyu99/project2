package com.example.myapplication_0606;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DBHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "CR.db";
    private static final int DATABASE_VERSION = 1;
    public static final String TABLE_NAME = "groupTBL";
    public static final String COLUMN_GCARD = "gcard";
    public static final String COLUMN_GNUMBER = "gNumber";
    public static final String COLUMN_MNAME = "mname";

    public DBHelper(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        String createTableQuery = "CREATE TABLE " + TABLE_NAME + "(" +
                COLUMN_GCARD + " TEXT PRIMARY KEY, " +
                COLUMN_GNUMBER + " TEXT, " +
                COLUMN_MNAME + " TEXT" +
                ")";
        db.execSQL(createTableQuery);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS " + TABLE_NAME);
        onCreate(db);
    }
}