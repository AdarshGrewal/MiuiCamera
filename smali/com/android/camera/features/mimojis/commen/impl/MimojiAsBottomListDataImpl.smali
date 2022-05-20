.class public Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;
.super Ljava/lang/Object;
.source "MimojiAsBottomListDataImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;


# static fields
.field public static final HUMAN_DESC:[I

.field public static final TAG:Ljava/lang/String;

.field public static final human:[I


# instance fields
.field public mimojiVersion:I

.field public final resourceBg:[I

.field public final resourceBgDesc:[I

.field public final resourceTimbre:[I

.field public final resourceTimbreDesc:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->human:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->HUMAN_DESC:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x2
        0x3
        0x0
        0x1
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7f120520
        0x7f120527
        0x7f120528
        0x7f120521
        0x7f120526
        0x7f120525
        0x7f120524
        0x7f120522
        0x7f120523
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->mimojiVersion:I

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBgDesc:[I

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbreDesc:[I

    .line 7
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->mimojiVersion:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080302
        0x7f080301
        0x7f0802fe
        0x7f080303
        0x7f080300
        0x7f0802fc
    .end array-data

    :array_1
    .array-data 4
        0x7f1204d3
        0x7f1204d0
        0x7f1204d1
        0x7f1204d2
        0x7f1204cf
        0x7f1204ce
    .end array-data

    :array_2
    .array-data 4
        0x7f080309
        0x7f08030b
        0x7f08030a
        0x7f080308
        0x7f08030d
    .end array-data

    :array_3
    .array-data 4
        0x7f120963
        0x7f120965
        0x7f120964
        0x7f120962
        0x7f120967
    .end array-data
.end method


# virtual methods
.method public initAvatarData(ILjava/util/List;)I
    .locals 13

    const-string v0, "/"

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    iget v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->mimojiVersion:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->getMimoji1List()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_1
    const/16 v1, 0x64

    const v3, 0x7f120465

    const-string v4, "close_state"

    const-wide v5, 0x7fffffffffffffffL

    if-ne p1, v1, :cond_9

    .line 5
    :try_start_0
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 6
    iput-object v4, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 7
    iput-wide v5, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mDirectoryName:J

    .line 8
    iput v3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    const-string v1, "add_state"

    .line 11
    iput-object v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 12
    iput-wide v5, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mDirectoryName:J

    const v1, 0x7f12001e

    .line 13
    iput v1, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 14
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 19
    array-length v3, v1

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v1, v5

    .line 20
    new-instance v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {v7}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 21
    sget-object v8, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    .line 22
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 24
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "config.dat"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 25
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "pic.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 26
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 28
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->CUSTOM_DIR:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 29
    invoke-static {v6}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v10}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 30
    iput-object v6, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 31
    iput-object v10, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 32
    iput-object v9, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    .line 33
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mDirectoryName:J

    .line 34
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 37
    :cond_4
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 38
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    .line 41
    :goto_2
    sget-object v3, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->human:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 42
    new-instance v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {v3}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 43
    sget-object v5, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_HUMAN:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preconfig"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_PATH_PRE_HUMAN:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-static {v6}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v5}, Lcom/android/camera/module/impl/component/FileUtils;->checkFileConsist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 48
    iput-object v6, v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 49
    iput-object v6, v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mPackPath:Ljava/lang/String;

    .line 50
    iput-object v5, v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 51
    sget-object v5, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->HUMAN_DESC:[I

    aget v5, v5, v1

    iput v5, v3, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 52
    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setIsPreHuman(Z)V

    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 54
    :cond_6
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 56
    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 57
    :cond_8
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 59
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 60
    :cond_9
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 61
    iput-object v4, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 62
    iput-wide v5, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mDirectoryName:J

    .line 63
    iput v3, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 64
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 66
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_CAT:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v0, "cat"

    .line 67
    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cat.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cat1.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl2:Ljava/lang/String;

    const v0, 0x7f1204d7

    .line 70
    iput v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    const v0, 0x7f1204d8

    .line 71
    iput v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    .line 72
    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setDefaultFrame(I)V

    .line 73
    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setFrame(I)V

    .line 74
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 76
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_FROG:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v0, "frog"

    .line 77
    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "frog.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "frog1.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl2:Ljava/lang/String;

    const v0, 0x7f1204da

    .line 80
    iput v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    const v0, 0x7f1204db

    .line 81
    iput v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    .line 82
    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setDefaultFrame(I)V

    .line 83
    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setFrame(I)V

    .line 84
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 86
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_RABBIT2:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string/jumbo v0, "rabbit2"

    .line 87
    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rabbit.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rabbit1.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl2:Ljava/lang/String;

    const v0, 0x7f1204e1

    .line 90
    iput v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    const v0, 0x7f1204e2

    .line 91
    iput v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName2:I

    .line 92
    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setDefaultFrame(I)V

    .line 93
    invoke-virtual {p1, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->setFrame(I)V

    .line 94
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;-><init>()V

    .line 96
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->TEMPLATE_PATH_BEAR:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mAvatarTemplatePath:Ljava/lang/String;

    const-string v0, "bear"

    .line 97
    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mConfigPath:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->DATA_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bear.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mThumbnailUrl:Ljava/lang/String;

    const v0, 0x7f1204d6

    .line 99
    iput v0, p1, Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;->mName:I

    .line 100
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x2

    return p1
.end method

.method public initBgData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Ljava/util/List;)I
    .locals 9

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getBackgroundInfos()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->TAG:Ljava/lang/String;

    const-string p2, "mimoji bg resource size error"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_1
    const/4 v1, -0x3

    .line 5
    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-direct {v2, v5}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;-><init>(Z)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 7
    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar2/BackgroundInfo;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBg:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceBgDesc:[I

    aget v7, v7, v3

    add-int/lit8 v8, v3, 0x1

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;-><init>(Lcom/arcsoft/avatar2/BackgroundInfo;III)V

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getBackgroundInfo()Lcom/arcsoft/avatar2/BackgroundInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/BackgroundInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v2, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->setSelected(Z)V

    move v1, v3

    .line 10
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_1

    :cond_4
    return v1
.end method

.method public initTimbreData(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;Ljava/util/List;)I
    .locals 7

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    array-length v0, v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->timbreTypes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->TAG:Ljava/lang/String;

    const-string p2, "mimoji timbre resource size error"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_1
    const/4 v0, -0x3

    .line 4
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-direct {v1, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;-><init>(Z)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    array-length v1, v1

    if-ge v2, v1, :cond_4

    .line 6
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->timbreTypes:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbre:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiAsBottomListDataImpl;->resourceTimbreDesc:[I

    aget v6, v6, v2

    invoke-direct {v1, v4, v5, v6}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;-><init>(III)V

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->getTimbreId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 8
    invoke-virtual {v1, v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->setSelected(Z)V

    add-int/lit8 v0, v2, 0x1

    .line 9
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method
