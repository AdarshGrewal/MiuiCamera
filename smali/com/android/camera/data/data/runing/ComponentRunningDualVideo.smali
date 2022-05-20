.class public Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningDualVideo.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "ComponentRunningDualVideo"


# instance fields
.field public mDrawGridWindow:Z

.field public mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

.field public mUserSelectDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/util/UserSelectData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->initUserSelectionDataIfNeed()V

    .line 4
    sget-object p1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 7
    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setSelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setSelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)V

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "printSelectData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ComponentRunningDualVideo"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 0

    .line 5
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0Oo;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0OO;

    invoke-direct {v0, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0OO;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Integer;)V
    .locals 1

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 14
    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 0

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Ljava/lang/Integer;)Z
    .locals 1

    .line 12
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(I)[Ljava/lang/Integer;
    .locals 0

    .line 11
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getFaceType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/UserSelectData;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Ljava/lang/Integer;)Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/UserSelectData;->getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/util/UserSelectData;->setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0o0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getLayoutForSelect()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 2
    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOo00;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOo00;

    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOO;

    .line 5
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o;

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/dualvideo/render/LayoutType;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    iget-object v0, v0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object v0
.end method

.method private initUserSelectionDataIfNeed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    sget-object v2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    sget-object v2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setmDrawGridWindow(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    sget-object v2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_1:Lcom/android/camera/dualvideo/util/SelectIndex;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/camera/dualvideo/util/UserSelectData;

    sget-object v2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_2:Lcom/android/camera/dualvideo/util/SelectIndex;

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v4, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOo0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOo0;-><init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/recorder/RecordType;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIds()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getDefaultDualVideoCameraIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO00o;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOOo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 4
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->sortId([Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v8, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v1, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/dualvideo/recorder/RecordType;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v5, 0x7f12037c

    const v6, 0x7f120052

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    .line 4
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    sget-object v2, Lcom/android/camera/dualvideo/recorder/RecordType;->STANDALONE:Lcom/android/camera/dualvideo/recorder/RecordType;

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/dualvideo/recorder/RecordType;->getName()Ljava/lang/String;

    move-result-object v15

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const v13, 0x7f12037e

    const v14, 0x7f120053

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalCameraId()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getIds()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0O;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOOO;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 5
    new-instance v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOo;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOo;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-object v0
.end method

.method public getRecordType()Lcom/android/camera/dualvideo/recorder/RecordType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

    return-object v0
.end method

.method public getSelectedData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/util/UserSelectData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ismDrawGridWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mDrawGridWindow:Z

    return v0
.end method

.method public printSelectData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOO0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOO0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public reInit()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/recorder/RecordType;->MERGED:Lcom/android/camera/dualvideo/recorder/RecordType;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->initUserSelectionDataIfNeed()V

    return-void
.end method

.method public refreshSelectData()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/dualvideo/util/UserSelectData;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0O0;

    invoke-direct {v4, v2}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0O0;-><init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->getLayoutForSelect()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/dualvideo/util/UserSelectData;->setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOoo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOOoo;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0oo;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0o;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0o;-><init>(Ljava/util/ArrayList;)V

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getGridLayoutTypeById(I)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o0;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0o0;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method public setRecordType(Lcom/android/camera/dualvideo/recorder/RecordType;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecordType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComponentRunningDualVideo"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mRecordType:Lcom/android/camera/dualvideo/recorder/RecordType;

    .line 4
    sget-object v0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo$1;->$SwitchMap$com$android$camera$dualvideo$recorder$RecordType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO0oO;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mUserSelectDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooO;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method public setmDrawGridWindow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->mDrawGridWindow:Z

    return-void
.end method
