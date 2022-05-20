.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;
.source "FuController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;
    }
.end annotation


# static fields
.field public static final MAX_FACE_NUM:I = 0x1

.field public static final TAG:Ljava/lang/String; = "FuController"

.field public static fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;


# instance fields
.field public _allBundleMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field public _allColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;"
        }
    .end annotation
.end field

.field public _avatarInstanceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;",
            ">;"
        }
    .end annotation
.end field

.field public _sceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;",
            ">;"
        }
    .end annotation
.end field

.field public blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public fuIconThread:Ljava/util/concurrent/ExecutorService;

.field public fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

.field public g_create_items:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;",
            ">;"
        }
    .end annotation
.end field

.field public hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isAddBg:Z

.field public isCreateFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isExitIconThread:Z

.field public isFirst:Z

.field public isFirstSurfaceCreate:Z

.field public loadCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;

.field public mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

.field public rendIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;

.field public rgba:[D

.field public volatile taskNum:I

.field public taskRunnable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirstSurfaceCreate:Z

    const/4 v1, 0x4

    new-array v1, v1, [D

    .line 4
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rgba:[D

    .line 5
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isCreateFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    .line 8
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v3, 0x64

    invoke-direct {v1, v3}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isCreateFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isCreateFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirstSurfaceCreate:Z

    .line 13
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->mContext:Ljava/lang/ref/WeakReference;

    const-string p1, "FUItemHandlerThread"

    .line 14
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->create(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    .line 15
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuIconThread:Ljava/util/concurrent/ExecutorService;

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0600e0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 17
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rgba:[D

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v1, v2

    .line 18
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rgba:[D

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rgba:[D

    const/4 v1, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    .line 20
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rgba:[D

    const/4 v1, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-double v2, p1

    aput-wide v2, v0, v1

    .line 21
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    invoke-direct {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    return-void
.end method

.method public static CreateItem(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->readFileToBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    array-length v0, p0

    if-lez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuCreateItemFromPackage([B)I

    move-result v1

    .line 5
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreateItem isLocalFile  path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " item "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static DestroyItem(I)V
    .locals 0

    if-lez p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuDestroyItem(I)V

    :cond_0
    return-void
.end method

.method private ReleaseGroupAllAvatarInstance()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->release()V

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$13;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$13;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->bindAllAndSetPinchFace()V

    return-void
.end method

.method private ReleaseGroupAllSceneInstance()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-lt v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->release()V

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->bindAll()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->openbodyCut()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->exitIconThread()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->destroyIcon()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isExitIconThread:Z

    return p0
.end method

.method public static synthetic access$1402(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isExitIconThread:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->create_Items_Icon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;IZ)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getHandleItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->resetIconHead(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    return-void
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Hashtable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;[D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->enterEdit([D)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->loadCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private can_invoke_trigger(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    if-eqz p1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string p1, "can_invoke_trigger"

    invoke-static {v0, p1, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    .line 5
    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$1;-><init>(Landroid/content/Context;)V

    .line 6
    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->sendMsg(Ljava/lang/Runnable;)V

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    return-object p0
.end method

.method private create_Items_Icon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;IZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;

    invoke-direct {v0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;-><init>(I)V

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->renouIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 3
    :cond_0
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$23;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$entity$LabelCollection$ItemType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->lianxingIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 5
    :pswitch_1
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->toufaIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 6
    :pswitch_2
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->quebanIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 7
    :pswitch_3
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->huziIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 8
    :pswitch_4
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->zuichunIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 9
    :pswitch_5
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->biziIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 10
    :pswitch_6
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->yanjingIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 11
    :pswitch_7
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->jiemaoIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    .line 12
    :pswitch_8
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->ershiIconCam:I

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    goto :goto_1

    :pswitch_9
    if-eqz p3, :cond_1

    .line 13
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->toushiIconCam:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->toufaIconCam:I

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->setCameraId(I)V

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string p2, " Queue full, add fail "

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dealChangeMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$23;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$BaseFuController$RenderMode:[I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->exitEdit()V

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedRenderCamera(Z)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Picture:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->exitPicture()V

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 8
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    .line 9
    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isAddBg:Z

    .line 10
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->exitAR()V

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->exitARScene()V

    goto :goto_1

    .line 13
    :cond_3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private dealDelayRenderChange()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDealTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isDealTask()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  isChangeMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "test"

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isDealTask()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeMode:Z

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$23;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$BaseFuController$RenderMode:[I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleItems()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleItems()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getColors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->camera:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->background:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rgba:[D

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->enterEdit([D)V

    :goto_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeModeDelay:Z

    :cond_2
    return-void
.end method

.method private dealOtherTask()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDealTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isDealTask()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isDealTask()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    .line 9
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dealOtherTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->putTaskQueue()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 12
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->sendMsg(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method private destroyIcon()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->getHandleId()I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    .line 4
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private enterEdit([D)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->clearSceneBind(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string v1, "current_instance_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->openChildAnimation(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getAllBundleList()[I

    move-result-object v1

    .line 6
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterEdit bind:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 7
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v2

    invoke-static {v2, v1}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 8
    :cond_0
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->iconBackgroundColor:[D

    const-string/jumbo v3, "set_background_color"

    invoke-static {v1, v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setAllColorMap()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 11
    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->can_invoke_trigger(Z)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setBackgroundColor([D)V

    :cond_1
    return-void
.end method

.method private exitEdit()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$12;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$12;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exitIconThread()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isExitIconThread:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuIconThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuIconThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string v2, "fuIconThread complete"

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuIconThread:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isExitIconThread:Z

    .line 7
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuTexIconId:I

    return-void

    :cond_0
    const-wide/16 v1, 0xa

    .line 8
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private getColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getColors()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getHandleItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static getSkinColorParam()[D
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "skin_color"

    invoke-static {v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParamdv(ILjava/lang/String;)[D

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSkinColorParam:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;[B[B)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fu sdk version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v0, [B

    .line 2
    invoke-static {v1, p1, p2}, Lcom/faceunity/wrapper/faceunity;->fuSetupInternalCheckEx([B[B[B)I

    move-result v1

    .line 3
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nama sdk Auth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ai_face_processor_xiaomi.bundle"

    .line 4
    invoke-static {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->readAssetsBuffer(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 v1, 0x400

    .line 5
    invoke-static {p0, v1}, Lcom/faceunity/wrapper/faceunity;->fuLoadAIModelFromPackage([BI)I

    move-result p0

    .line 6
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAiModel. , isLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v4, :cond_1

    const-string/jumbo p0, "yes"

    goto :goto_1

    :cond_1
    const-string p0, "no"

    :goto_1
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-static {p1, p2}, Lcom/faceunity/pta_server/fuPTAServer;->setAuthInternalCheckEx([B[B)Z

    move-result p0

    .line 8
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pta_server sdk Auth:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sput-boolean v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->INIT:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static initializeOffine(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo p0, "pta_core.bin"

    .line 1
    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->readLocalBuffer(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/faceunity/pta_server/fuPTAServer;->setData([B)Z

    const-string/jumbo p0, "pta_server_dl_lite.bin"

    .line 3
    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->readLocalBuffer(Ljava/lang/String;)[B

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/faceunity/pta_server/fuPTAServer;->setData([B)Z

    const-string/jumbo p0, "pta_server_xiaomi.bin"

    .line 5
    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->readLocalBuffer(Ljava/lang/String;)[B

    move-result-object p0

    .line 6
    invoke-static {p0}, Lcom/faceunity/pta_server/fuPTAServer;->setData([B)Z

    return-void
.end method

.method private isDealTask()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string v2, "isDealTask: null"

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isListEmpty(Ljava/util/List;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private openbodyCut()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-string/jumbo v1, "use_body_visible_list"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method private putTaskQueue()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reFullData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleItems()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleItems()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->camera:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->background:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private releaseGroupAll()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->ReleaseGroupAllSceneInstance()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->ReleaseGroupAllAvatarInstance()V

    return-void
.end method

.method public static releaseOfflineData()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/faceunity/pta_server/fuPTAServer;->releaseData()V

    return-void
.end method

.method private resetIconHead(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 2
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v4, "reset_head"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->face:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->ear:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 4
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->mouth:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 5
    invoke-static {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->nose:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 6
    invoke-static {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->brow:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 7
    invoke-static {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 8
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_4

    .line 9
    aget-object v5, v2, v3

    .line 10
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 11
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 12
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v6, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v6

    :cond_2
    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v5

    new-array v7, v0, [I

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v6

    aput v6, v7, v4

    invoke-static {v5, v7}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    return-void
.end method

.method public static setSkinColorParam([D)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSkinColorParam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "pta_skin_color"

    invoke-static {v0, v1, p0}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method


# virtual methods
.method public addAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$6;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCurrentAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirst:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isDealTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animationPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->animationPause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public animationPlay(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->animationPlay(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public animationStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->animationStart()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public animationStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->animationStop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bindIconData()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isNeedIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuTexIconId:I

    if-nez v0, :cond_3

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->destroyIcon()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->clear()V

    .line 6
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isNeedIcon:Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rendIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;->onReady()V

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->isFull()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;

    const/4 v2, 0x1

    .line 11
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 12
    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v4, v2, [I

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->currentIconCam:I

    aput v5, v4, v1

    invoke-static {v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 13
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unbindCam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->currentIconCam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->getCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->currentIconCam:I

    .line 15
    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v5, v2, [I

    aput v3, v5, v1

    invoke-static {v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 16
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindCam:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->currentIconCam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v4, v2, [I

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->getHandleId()I

    move-result v5

    aput v5, v4, v1

    invoke-static {v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    const/16 v3, 0x12c

    .line 18
    invoke-static {v3, v3}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 20
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->useFbo()V

    .line 21
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/4 v7, 0x1

    const/16 v8, 0x12c

    const/16 v9, 0x12c

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundlesToCurrentFBO(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[II)I

    .line 22
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->noUseFbo()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 24
    sget-object v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "renderTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v3

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v2, v2, [I

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->getHandleId()I

    move-result v4

    aput v4, v2, v1

    invoke-static {v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 26
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->getHandleId()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    .line 27
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind unBind destroy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->getHandleId()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 29
    sget v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    sget v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    invoke-static {v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public clearAll()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string v2, "clearAll destroyEmotionItem"

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->destroyEmotionItem()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->clearSceneBind(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 9
    :cond_2
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string v3, "clearAll Scene 1"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->clear()V

    .line 13
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 14
    :cond_3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 15
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->clear()V

    .line 16
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->clearSceneBind(I)V

    .line 18
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string v3, "clearAll Scene 0"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string v5, "enable_background_color"

    invoke-static {v2, v5, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 21
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v2

    sget-object v3, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->iconBackgroundColor:[D

    const-string/jumbo v4, "set_background_color"

    invoke-static {v2, v4, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 22
    :cond_5
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirst:Z

    .line 23
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isAddBg:Z

    return-void
.end method

.method public clearAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getInstanceID()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getInstanceID()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->clear()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public clearOfflineAll()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared:Z

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-string/jumbo v1, "release_gl_resources"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 3
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuReleaseGLResources()V

    return-void
.end method

.method public clearSceneInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getInstanceID()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getInstanceID()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->clear()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public createAvatarInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->Create(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    move-result-object v0

    return-object v0
.end method

.method public createIconItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createIconItem  eee queue  size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$18;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->exitIconThread()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuIconThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 5
    :catch_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string p2, "execute full"

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public createSceneInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->Create(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v0

    return-object v0
.end method

.method public enterPicture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->unBindAll()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->unBindAll()V

    return-void
.end method

.method public enterTheFrontDesk()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string v1, "enterTheFrontDesk"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FUItemHandlerThread"

    .line 2
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->create(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuIconThread:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirstSurfaceCreate:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared:Z

    .line 6
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    return-void
.end method

.method public exitBackstage()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string v1, "exitBackstage"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->g_create_items:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->quit()V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->exitIconThread()V

    .line 8
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "release_gl_resources"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 9
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuReleaseGLResources()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 14
    :cond_2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDealTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isDealTask()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    return-void
.end method

.method public exitPicture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$14;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$14;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->releaseGroupAll()V

    return-void
.end method

.method public getAllBundleList()[I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->head:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v3

    aput v3, v0, v4

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v5

    aput v5, v0, v3

    goto :goto_1

    .line 12
    :cond_2
    aput v4, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public getAvatarInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getController()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    return v0
.end method

.method public getCurrentAvatarInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentAvatarInstanceCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSceneInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconByte()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public getIsInitItemFinish()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isCreateFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isCreateFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isCreateFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getSceneInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public glAvatarExecution()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->loadCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;->onAvatarBindEnd()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->dealOtherTask()V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->dealDelayRenderChange()V

    return-void
.end method

.method public glSceneExecution()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->dealOtherTask()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->dealDelayRenderChange()V

    return-void
.end method

.method public isCanRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeModeDelay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedEnterFron()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadBackgroundImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mBackgroundUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->loadBackground(Ljava/lang/String;)V

    return-void
.end method

.method public loadEffect(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$7;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$7;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->sendMsg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCompete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->loadCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;->onComplete()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "test"

    const-string v1, "loadCompleteListener null !!!!"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSurfaceCreated()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirstSurfaceCreate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirstSurfaceCreate:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuPrepareGLResource()V

    return v2

    :cond_1
    return v1
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->quit()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuIconThread:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isExitIconThread:Z

    const/16 v0, 0x400

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->releaseAimModel(I)V

    .line 7
    invoke-super {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onSurfaceDestroyed()V

    const/4 v0, 0x0

    .line 8
    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    return-void
.end method

.method public queueIsEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/QueueUtil;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public refreshEditData()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$17;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseAvatarInstance(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->release()V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public releaseBackgroundImage()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mBackgroundUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->releaseImage()V

    :cond_0
    return-void
.end method

.method public removeCurrentAvatarInstance(I)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->release()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCurrentAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getInstanceID()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getInstanceID()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->release()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeCurrentSceneInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getInstanceID()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getInstanceID()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->release()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public rendIconEnd(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$21;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$21;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rendIconStart(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$20;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$20;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V

    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$19;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->exitIconThread()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuIconThread:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 4
    :catch_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string p2, "execute full"

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public resetEditData()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$16;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$16;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAllColorMap()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    .line 6
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->lip_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->liplash:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v1

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setMakeColor(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setItemColor(Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$23;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$entity$LabelCollection$ColorType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setItemColor(Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->liplash:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setMakeColor(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setCurrentSceneInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isAddBg:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$10;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$10;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isAddBg:Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;

    invoke-direct {v2, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V

    :cond_1
    return-void
.end method

.method public setItemColor(Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getR()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getG()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getB()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rgb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p2

    invoke-static {p2, p1, v0}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method

.method public setItemTrigger()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$15;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$15;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-static {v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuSetItemTriggerListener(ILcom/faceunity/wrapper/faceunity$OnItemTriggerListener;)V

    return-void
.end method

.method public setLoadCompleteListener(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->loadCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;

    return-void
.end method

.method public setMakeColor(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "global"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string v2, "face_detail"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "param"

    const-string v2, "blend_color"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "UUID"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x3

    new-array p1, p1, [D

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getR()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v6

    aput-wide v2, p1, v1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getG()D

    move-result-wide v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, p1, v1

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getB()D

    move-result-wide v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, p1, v1

    .line 10
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rgb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method

.method public setNeedRenderCamera(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$9;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$9;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNeedTrackFace(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isNeedTrackFace:Z

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$8;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$8;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRendIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rendIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;

    return-void
.end method

.method public setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;[D)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;[DZ)V

    return-void
.end method

.method public setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;[DZ)V
    .locals 7

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimojifu setRenderMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->dealChangeMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)Z

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 6
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Nama:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 7
    invoke-static {v5}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v4}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    .line 9
    :goto_0
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$23;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$BaseFuController$RenderMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x0

    if-eq v3, v5, :cond_8

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$2;

    invoke-direct {v4, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    .line 12
    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedRenderCamera(Z)V

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    if-nez v3, :cond_4

    .line 14
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    .line 15
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    .line 16
    :cond_4
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allBundleMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 17
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_allColorMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    if-nez p3, :cond_5

    .line 18
    new-instance p3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$3;

    invoke-direct {p3, p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$3;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;[D)V

    invoke-virtual {p0, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    .line 19
    iput-boolean v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeMode:Z

    goto :goto_2

    .line 20
    :cond_5
    iput-boolean v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeMode:Z

    :goto_2
    const-string/jumbo p2, "test"

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChangeMode:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeMode:Z

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->enterPicture()V

    move v1, v5

    goto :goto_3

    .line 23
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    .line 24
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 25
    invoke-direct {p0, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->can_invoke_trigger(Z)V

    .line 26
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->enterAR()V

    .line 27
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->enterARScene()V

    goto :goto_3

    .line 28
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    .line 29
    :cond_9
    :goto_3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    .line 30
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    if-nez p1, :cond_a

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->commitAvatar()V

    goto :goto_5

    .line 32
    :cond_a
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    if-lez p1, :cond_b

    goto :goto_4

    :cond_b
    move v5, v6

    :goto_4
    if-eqz v5, :cond_c

    .line 33
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()Z

    goto :goto_5

    :cond_c
    if-eqz v1, :cond_d

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->commitAvatar()V

    :cond_d
    :goto_5
    if-nez v2, :cond_e

    .line 35
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->loadCompleteListener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;

    if-eqz p1, :cond_e

    .line 36
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$4;

    invoke-direct {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$4;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    .line 37
    :cond_e
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public showOrHideAvatar(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->unBindAll()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->bindAllAndSetPinchFace()V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->commitAvatar()V

    return-void
.end method

.method public startTask()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->hasTaskQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isDealTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 8
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealOtherTask: isEmpty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->blockingQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " taskRunnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    return v0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    .line 13
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->putTaskQueue()V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 16
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->fuItemHandler:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/util/FuItemHandler;->sendMsg(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskRunnable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public stopIconThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rendIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rendIconCallBack:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$22;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$22;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public taskComplete()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "taskComplete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskNum:I

    if-nez v0, :cond_3

    .line 5
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirst:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isFirst:Z

    .line 7
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$23;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$BaseFuController$RenderMode:[I

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->exitAR()V

    .line 10
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->exitARScene()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    .line 12
    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->can_invoke_trigger(Z)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->enterAR()V

    .line 15
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_sceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->enterARScene()V

    .line 16
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->commitAvatar()V

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->onCompete()V

    :cond_3
    return-void
.end method

.method public unBindOld([I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 3
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    invoke-static {v0, p1}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    :cond_0
    return-void
.end method

.method public updateConfig()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateConfig begin"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configItem:I

    .line 3
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configIconItem:I

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string/jumbo v3, "others/controller_config.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configItem:I

    .line 5
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string/jumbo v3, "others/controller_config_for_icon_scene.bundle"

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configIconItem:I

    .line 6
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConfig new configItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " configIconItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configIconItem:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleList()[Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    array-length v4, v2

    if-lez v4, :cond_1

    .line 10
    array-length v4, v2

    new-array v4, v4, [I

    move v5, v3

    .line 11
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 12
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    invoke-static {v2, v4}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 14
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unbindAll:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v2, 0x1

    .line 15
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 16
    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v6, v2, [I

    aput v1, v6, v3

    invoke-static {v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 17
    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v6, v2, [I

    iget v7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configIconItem:I

    aput v7, v6, v3

    invoke-static {v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 18
    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    .line 19
    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v6, v2, [I

    aput v0, v6, v3

    invoke-static {v5, v6}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 20
    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    new-array v2, v2, [I

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configItem:I

    aput v6, v2, v3

    invoke-static {v5, v2}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 21
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unbind oldConfig:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " oldIconConfig:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  bind config:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configItem:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bind iconConfig:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->configIconItem:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    .line 22
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    invoke-static {v0, v4}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 23
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->_avatarInstanceList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->updateColor()V

    .line 26
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateColor"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateConfig end"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
