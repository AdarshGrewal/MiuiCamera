.class public Lcom/android/camera/fragment/clone/AssetVideoItem;
.super Lcom/android/camera/fragment/clone/BaseVideoItem;
.source "AssetVideoItem.java"


# static fields
.field public static final SHOW_LOGS:Z

.field public static final TAG:Ljava/lang/String; = "AssetVideoItem"


# instance fields
.field public final mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field public final mCoverResource:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    sput-boolean v0, Lcom/android/camera/fragment/clone/AssetVideoItem;->SHOW_LOGS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetFileDescriptor;",
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/clone/BaseVideoItem;-><init>(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/clone/AssetVideoItem;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/clone/AssetVideoItem;->mCoverResource:I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            "Lcom/android/camera/videoplayer/ui/VideoPlayerView;",
            "Lcom/android/camera/videoplayer/manager/VideoPlayerManager<",
            "Lcom/android/camera/videoplayer/meta/MetaData;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/AssetVideoItem;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p3, p1, p2, v0}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->playNewVideo(Lcom/android/camera/videoplayer/meta/MetaData;Lcom/android/camera/videoplayer/ui/VideoPlayerView;Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p3}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->stopAnyPlayback()V

    :goto_0
    return-void
.end method

.method public stopPlayback(Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/android/camera/videoplayer/manager/VideoPlayerManager;->stopAnyPlayback()V

    return-void
.end method

.method public update(ILcom/android/camera/fragment/clone/VideoViewHolder;Lcom/android/camera/videoplayer/manager/VideoPlayerManager;)V
    .locals 1

    .line 1
    sget-boolean p3, Lcom/android/camera/fragment/clone/AssetVideoItem;->SHOW_LOGS:Z

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update, position "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AssetVideoItem"

    invoke-static {p3, p1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object p1, p2, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
