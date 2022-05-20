.class public Lcom/android/camera/dualvideo/render/MiscRenderItem;
.super Ljava/lang/Object;
.source "MiscRenderItem.java"


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mTex:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mTex:Lcom/android/gallery3d/ui/BasicTexture;

    return-void
.end method


# virtual methods
.method public declared-synchronized getBasicTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mTex:Lcom/android/gallery3d/ui/BasicTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MiscRenderItem;->mName:Ljava/lang/String;

    return-object v0
.end method
