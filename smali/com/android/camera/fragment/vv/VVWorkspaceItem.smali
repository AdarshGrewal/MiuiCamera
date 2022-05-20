.class public Lcom/android/camera/fragment/vv/VVWorkspaceItem;
.super Ljava/lang/Object;
.source "VVWorkspaceItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/fragment/vv/VVWorkspaceItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final DELETE_MARKED:Ljava/lang/String; = "d_"

.field public static final MIN_FRAGMENT_SIZE:I = 0x80000

.field public static final TIME_MARKED:Ljava/lang/String; = "t"


# instance fields
.field public mCreateTime:J

.field public mFolderPath:Ljava/lang/String;

.field public mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mItemId:Ljava/lang/String;

.field public mLastFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastModifiedTime:J

.field public mLastThumbPath:Ljava/lang/String;

.field public transient mMarked:Z

.field public mNewThumbPath:Ljava/lang/String;

.field public mTemplateId:Ljava/lang/String;

.field public mTimeUpdatePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastFragments:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mItemId:Ljava/lang/String;

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mItemId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "thumb"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastThumbPath:Ljava/lang/String;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "thumb_new"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mNewThumbPath:Ljava/lang/String;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTimeUpdatePath:Ljava/lang/String;

    return-void
.end method

.method public static final createNew(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/fragment/vv/VVWorkspaceItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final restoreByParseFolder(Ljava/lang/String;)Lcom/android/camera/fragment/vv/VVWorkspaceItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;-><init>()V

    .line 2
    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->restoreFromFolder(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private restoreFromFolder(Ljava/lang/String;)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iput-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mItemId:Ljava/lang/String;

    const-string v3, "\\_"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 5
    array-length v3, v1

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    const/4 v3, 0x1

    .line 7
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mCreateTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 9
    array-length v1, v0

    if-nez v1, :cond_1

    return v2

    .line 10
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "d_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 13
    invoke-static {v6}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_3
    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspaceItem$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem$1;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTimeUpdatePath:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTimeUpdatePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastModifiedTime:J

    goto :goto_2

    .line 20
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastModifiedTime:J

    .line 21
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 23
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x80000

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    goto :goto_3

    .line 24
    :cond_6
    invoke-static {v1}, Lcom/android/camera/Util;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "video/mp4"

    .line 25
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 26
    iget-object v4, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    return v2

    .line 28
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastFragments:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "thumb"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastThumbPath:Ljava/lang/String;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "thumb_new"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mNewThumbPath:Ljava/lang/String;

    return v3

    :cond_9
    :goto_4
    return v2

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->updateTime()V

    return-void
.end method

.method public compareTo(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->compareTo(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)I

    move-result p1

    return p1
.end method

.method public completeSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public confirmOperation()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "d_"

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-static {v3}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/io/File;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mNewThumbPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastThumbPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    return-void
.end method

.method public getFragmentAt(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    return-object v0
.end method

.method public getLastPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getFragmentAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLastThumbPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRawInfoPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "raw_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetThumbPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastThumbPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastThumbPath:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mNewThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->completeSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getFragmentAt(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 5
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->updateTime()V

    return-void
.end method

.method public removeSelf()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceItem$2;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public saveWorkspace()V
    .locals 0

    return-void
.end method

.method public undo()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mLastFragments:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 9
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "d_"

    .line 11
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mFolderPath:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mNewThumbPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    return-void
.end method

.method public updateTime()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTimeUpdatePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/io/File;)Z

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
