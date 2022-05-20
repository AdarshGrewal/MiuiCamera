.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "fu_xiaomi.db"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final HISTORY_DIR:Ljava/lang/String; = "dir"

.field public static final HISTORY_STYLE:Ljava/lang/String; = "style"

.field public static final HISTORY_TABLE_NAME:Ljava/lang/String; = "avatar_history"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fu_xiaomi.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public deleteAllHistory()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from avatar_history"

    .line 2
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x1

    return v0
.end method

.method public deleteHistoryByDir(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "avatar_history"

    const-string v3, "dir=?"

    .line 2
    invoke-virtual {v0, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v1
.end method

.method public getAllAvatarPTAs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/config/Constant;->head1Path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/DBHelper;->getAllHistoryItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllHistoryItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "select * from avatar_history where style=1"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "dir"

    .line 5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 6
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v2
.end method

.method public insertHistory(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "style"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "dir"

    .line 4
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "avatar_history"

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table avatar_history(id integer primary key, dir text, style integer)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS avatar_history"

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public updateHistory(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
