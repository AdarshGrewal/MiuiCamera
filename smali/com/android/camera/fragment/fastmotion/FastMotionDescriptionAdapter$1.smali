.class public Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;
.super Ljava/lang/Object;
.source "FastMotionDescriptionAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;->onBindViewHolder(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;

.field public final synthetic val$holder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;->this$0:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter;

    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;->val$holder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;->val$holder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    iget-object p1, p1, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$1;->val$holder:Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;

    iget-object v0, v0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionAdapter$FastMotionViewHolder;->mCoverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
