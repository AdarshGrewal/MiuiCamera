.class public Lcom/xiaomi/stat/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/xiaomi/stat/a/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/stat/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "ts"

    const-string v2, "EventManager"

    .line 1
    :try_start_0
    iget-object v4, v1, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-static {v4}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 3
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v5

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v5, 0x6

    .line 4
    invoke-virtual {v13, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    invoke-virtual {v13, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xb

    const/4 v14, 0x0

    .line 5
    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    .line 6
    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    .line 7
    invoke-virtual {v13, v5, v14}, Ljava/util/Calendar;->set(II)V

    .line 8
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-string v15, "ts < ? and e != ?"

    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v14

    const-string v5, "mistat_delete_event"

    const/4 v10, 0x1

    aput-object v5, v11, v10

    const-string v6, "events"

    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "ts ASC"

    move-object v5, v4

    move-object v8, v15

    move-object v9, v11

    move v3, v10

    move-object/from16 v10, v16

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move v14, v12

    move-object/from16 v12, v18

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_4

    .line 12
    new-instance v7, Lcom/xiaomi/stat/aj;

    invoke-direct {v7}, Lcom/xiaomi/stat/aj;-><init>()V

    const-string v8, "ca"

    .line 13
    invoke-virtual {v7, v8, v6}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete obsolete events total number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 16
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, "c_"

    if-eqz v9, :cond_2

    .line 17
    :try_start_2
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 18
    invoke-virtual {v13, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 20
    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v3

    const/4 v12, 0x5

    .line 21
    invoke-virtual {v13, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const-string v14, "%4d%02d%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v16, 0x0

    aput-object v9, v3, v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v3, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v3, v12

    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v6, :cond_0

    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6, v8}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    :cond_0
    move-object v6, v3

    move v8, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v8, 0x1

    move v8, v10

    :goto_1
    move v3, v11

    move v14, v12

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 26
    :cond_3
    iget-object v0, v1, Lcom/xiaomi/stat/a/g;->a:Lcom/xiaomi/stat/a/c;

    invoke-static {v7}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/aj;)Lcom/xiaomi/stat/a/l;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    const-string v0, "events"

    move-object/from16 v3, v19

    .line 27
    invoke-virtual {v4, v0, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v5, :cond_5

    .line 28
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v5

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    .line 29
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove obsolete events failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_5

    .line 30
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    return-void

    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method
