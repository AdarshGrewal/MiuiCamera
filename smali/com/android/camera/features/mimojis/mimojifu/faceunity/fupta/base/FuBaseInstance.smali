.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;
.super Ljava/lang/Object;
.source "FuBaseInstance.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FuBaseInstance"

.field public static s_nextInstanceId:I


# instance fields
.field public _bundleItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field public _instanceID:I

.field public _unBindKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public bindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

.field public isArMode:Z

.field public needResetHead:Z

.field public object:Ljava/lang/Object;

.field public unBindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->object:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_unBindKey:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->isArMode:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->startExecution()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentInstanceId()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string v1, "current_instance_id"

    invoke-static {v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParam(ILjava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private startExecution()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$6;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$6;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public EditEnter()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getCurrentInstanceId()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_instanceID:I

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    return v0
.end method

.method public addEmoticonTask(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addTask()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$3;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$4;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public caiDanAnimate(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_0
    const-string p1, "animation_trigger_layer_weight"

    invoke-static {v0, p1, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public clear()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release start"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    .line 5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    aput v4, v0, v3

    goto :goto_1

    .line 9
    :cond_0
    aput v1, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v2

    if-eqz v0, :cond_3

    .line 11
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v3

    invoke-static {v3, v0}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 12
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "release Unbind "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_5

    .line 13
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_4

    aget v4, v0, v1

    .line 14
    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 15
    :cond_4
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release DestroyItem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 17
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 18
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->releaseGLEnd()V

    .line 19
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    :cond_8
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release end"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dynamicBone_Reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string v1, "dynamicBone_Delay_Reset"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public enable_Dynamicbone(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    if-eqz p1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string p1, "enable_dynamicbone"

    invoke-static {v0, p1, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public expression2dPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "reset_expression2d_animation"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public expression2dPlay()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "start_expression2d_animation"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public expression2dReset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "reset_expression2d_animation"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public expression2dStop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "stop_expression2d_animation"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public getBindItems()[I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_unBindKey:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_unBindKey:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 6
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_unBindKey:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v4

    .line 7
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unBindList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v5

    if-lez v5, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    aput v3, v0, v2

    .line 13
    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unBind: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBundleItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    return-object v0
.end method

.method public getBundleList()[Ljava/lang/Integer;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;-><init>()V

    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setBundle(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public getInstanceID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_instanceID:I

    return v0
.end method

.method public getNextInstanceId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->object:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->s_nextInstanceId:I

    .line 3
    sget v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->s_nextInstanceId:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->s_nextInstanceId:I

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUnBindItems()[I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_unBindKey:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_unBindKey:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 6
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_unBindKey:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v4

    .line 7
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unBindList: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v5

    if-lez v5, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 10
    :goto_1
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 11
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    aput v3, v0, v2

    .line 13
    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unBind: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_3
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public glExecution()V
    .locals 0

    return-void
.end method

.method public onlyBind()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$8;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$8;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onlyUnBind(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$7;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$7;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object p1, p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public preEmoticonTask(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract preTask()V
.end method

.method public preTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;)V
    .locals 0

    return-void
.end method

.method public preTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public preTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$9;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract releaseGLEnd()V
.end method

.method public setInstance(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    int-to-double v1, p1

    const-string p1, "current_instance_id"

    invoke-static {v0, p1, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method
