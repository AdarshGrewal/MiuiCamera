.class public Lcom/android/camera/db/item/DbItemSaveTask;
.super Lcom/android/camera/db/item/DbItemBase;
.source "DbItemSaveTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/db/item/DbItemBase<",
        "Lcom/android/camera/db/element/SaveTask;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DbItemSaveTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/db/item/DbItemBase;-><init>()V

    return-void
.end method

.method private clearTask(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->isValid()Z

    move-result v0

    const-string v1, "DbItemSaveTask"

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearTask: not valid, remove:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearTask: mark departed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera/db/element/SaveTask;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p2}, Lcom/xiaomi/camera/parallelservice/util/ParallelUtil;->markTaskFinish(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clearDepartedTask(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDepartedTask: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DbItemSaveTask"

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/db/item/DbItemSaveTask;->clearTask(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    :cond_1
    return-void
.end method

.method public createItem(J)Lcom/android/camera/db/element/SaveTask;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/android/camera/db/element/SaveTask;

    invoke-direct {v1}, Lcom/android/camera/db/element/SaveTask;-><init>()V

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/camera/db/element/SaveTask;->setStartTime(Ljava/lang/Long;)V

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic createItem(J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/db/item/DbItemSaveTask;->createItem(J)Lcom/android/camera/db/element/SaveTask;

    move-result-object p1

    return-object p1
.end method

.method public endItem(Lcom/android/camera/db/element/SaveTask;J)Lcom/android/camera/db/element/SaveTask;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic endItem(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/db/element/SaveTask;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/db/item/DbItemSaveTask;->endItem(Lcom/android/camera/db/element/SaveTask;J)Lcom/android/camera/db/element/SaveTask;

    move-result-object p1

    return-object p1
.end method

.method public getDao()Lorg/greenrobot/greendao/AbstractDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "Lcom/android/camera/db/element/SaveTask;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getDaoSession()Lcom/android/camera/db/greendao/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/db/greendao/DaoSession;->getSaveTaskDao()Lcom/android/camera/db/greendao/SaveTaskDao;

    move-result-object v0

    return-object v0
.end method

.method public getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemSaveTask;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/db/greendao/SaveTaskDao$Properties;->MediaStoreId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/db/element/SaveTask;

    const-string v1, "DbItemSaveTask"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemByMediaId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getItemByMediaId(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByMediaId(Ljava/lang/Long;)Lcom/android/camera/db/element/SaveTask;

    move-result-object p1

    return-object p1
.end method

.method public getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemSaveTask;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/db/greendao/SaveTaskDao$Properties;->Path:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/db/element/SaveTask;

    const-string v1, "DbItemSaveTask"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemByPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getItemByPath(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemByPath(Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object p1

    return-object p1
.end method

.method public getItemWithExistedQuery(Lorg/greenrobot/greendao/query/Query;Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p1, v1, p2}, Lorg/greenrobot/greendao/query/Query;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemSaveTask;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    sget-object v2, Lcom/android/camera/db/greendao/SaveTaskDao$Properties;->Path:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p2

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {p1, p2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/db/element/SaveTask;

    const-string p2, "DbItemSaveTask"

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemWithExistedQuery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getItemWithExistedQuery(Lorg/greenrobot/greendao/query/Query;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/db/item/DbItemSaveTask;->getItemWithExistedQuery(Lorg/greenrobot/greendao/query/Query;Ljava/lang/String;)Lcom/android/camera/db/element/SaveTask;

    move-result-object p1

    return-object p1
.end method

.method public getOrderProperty()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/db/greendao/SaveTaskDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public markAllDepartedTask(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/db/item/DbItemBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/db/item/DbItemBase;->getAllItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/db/element/SaveTask;

    .line 7
    invoke-virtual {v5, v3, v4, p1}, Lcom/android/camera/db/element/SaveTask;->isDeparted(JI)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-direct {p0, v2, v5}, Lcom/android/camera/db/item/DbItemSaveTask;->clearTask(Landroid/content/Context;Lcom/android/camera/db/element/SaveTask;)V

    goto :goto_0

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    .line 10
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public provideTableName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tasks"

    return-object v0
.end method
