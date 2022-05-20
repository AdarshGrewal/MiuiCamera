.class public Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;
.super Ljava/lang/Object;
.source "CloudMimojiBottomListDataImpl.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$MimojiBottomListData;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

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

    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBg:[I

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBgDesc:[I

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbre:[I

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbreDesc:[I

    .line 6
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0802fd
        0x7f0802ff
        0x7f080302
        0x7f080301
        0x7f0802fe
        0x7f080303
        0x7f080300
        0x7f0802fc
    .end array-data

    :array_1
    .array-data 4
        0x7f0802fd
        0x7f0802ff
        0x7f080302
        0x7f080301
        0x7f0802fe
        0x7f080303
        0x7f080300
        0x7f0802fc
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
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->mNetworkMaterialDownload:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->pullNewList(I)V

    const/4 p1, 0x0

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
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getBgList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBg:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->TAG:Ljava/lang/String;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 7
    new-instance v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBg:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceBgDesc:[I

    aget v7, v7, v3

    add-int/lit8 v8, v3, 0x1

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;III)V

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;->getFuItem()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbre:[I

    array-length v0, v0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->timbreTypes:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->TAG:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbre:[I

    array-length v1, v1

    if-ge v2, v1, :cond_4

    .line 6
    new-instance v1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiTimbreItem;->timbreTypes:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbre:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/CloudMimojiBottomListDataImpl;->resourceTimbreDesc:[I

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
