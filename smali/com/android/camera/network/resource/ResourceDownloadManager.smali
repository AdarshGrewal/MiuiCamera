.class public Lcom/android/camera/network/resource/ResourceDownloadManager;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResourceDownloadManager"

.field public static mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;


# instance fields
.field public mDownloadState:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/network/resource/OnDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public mOnCompleteListener:Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;

.field public object:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->object:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/android/camera/network/resource/ResourceDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/network/resource/ResourceDownloadManager$1;-><init>(Lcom/android/camera/network/resource/ResourceDownloadManager;)V

    iput-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mOnCompleteListener:Lcom/android/camera/network/download/GalleryDownloadManager$OnCompleteListener;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/network/resource/ResourceDownloadManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->object:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/network/resource/ResourceDownloadManager;)Landroid/util/LongSparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/network/resource/ResourceDownloadManager;JI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/network/resource/ResourceDownloadManager;->dispatchListener(JI)V

    return-void
.end method

.method private dispatchListener(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/network/resource/OnDownloadListener;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/android/camera/network/resource/OnDownloadListener;->onFinish(JI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/camera/network/resource/ResourceDownloadManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/camera/network/resource/ResourceDownloadManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/network/resource/ResourceDownloadManager;

    invoke-direct {v1}, Lcom/android/camera/network/resource/ResourceDownloadManager;-><init>()V

    sput-object v1, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mInstance:Lcom/android/camera/network/resource/ResourceDownloadManager;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lcom/android/camera/network/resource/OnDownloadListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public download(Lcom/android/camera/network/resource/Resource;Lcom/android/camera/network/resource/DownloadHelper;)V
    .locals 0

    return-void
.end method

.method public getDownloadState(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mDownloadState:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public removeDownloadListener(Lcom/android/camera/network/resource/OnDownloadListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/network/resource/ResourceDownloadManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
