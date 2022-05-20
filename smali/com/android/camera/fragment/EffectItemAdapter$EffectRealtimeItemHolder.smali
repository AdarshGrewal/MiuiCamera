.class public Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;
.super Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;
.source "EffectItemAdapter.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/EffectItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectRealtimeItemHolder"
.end annotation


# instance fields
.field public mEglCore:Lcom/android/camera/ui/gl/EglCore;

.field public mEglSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

.field public mTextureView:Landroid/view/TextureView;

.field public final synthetic this$0:Lcom/android/camera/fragment/EffectItemAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/EffectItemAdapter;Landroid/view/View;Lcom/android/camera/ui/gl/EglCore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0146

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mTextureView:Landroid/view/TextureView;

    const p1, 0x7f0a0147

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    .line 5
    iput-object p3, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 3
    invoke-static {v0}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getCurrentIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 4
    :goto_0
    invoke-virtual {v0, v1, p2, v2}, Lcom/android/camera/fragment/EffectItemAdapter;->setAccessible(Landroid/view/View;IZ)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getTintResId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getCurrentIndex()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 7
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p1}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->isAnimation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1, v5}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 11
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;-><init>(Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;)V

    .line 12
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    .line 17
    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->isAnimation()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    .line 18
    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->this$0:Lcom/android/camera/fragment/EffectItemAdapter;

    invoke-static {p2}, Lcom/android/camera/fragment/EffectItemAdapter;->access$000(Lcom/android/camera/fragment/EffectItemAdapter;)Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/fragment/EffectItemAdapter$IEffectItemListener;->getLastIndex()I

    move-result p2

    if-ne p2, p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 21
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance p2, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$2;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$2;-><init>(Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;)V

    .line 22
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_1

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method public getEglSurface()Lcom/android/camera/ui/gl/EglWindowSurface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/android/camera/ui/gl/EglWindowSurface;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/android/camera/ui/gl/EglWindowSurface;-><init>(Lcom/android/camera/ui/gl/EglCore;Landroid/graphics/SurfaceTexture;[I)V

    iput-object v1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/fragment/EffectItemAdapter;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceTextureAvailable width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/ui/gl/EglWindowSurface;->release()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->mEglSurface:Lcom/android/camera/ui/gl/EglWindowSurface;

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {}, Lcom/android/camera/fragment/EffectItemAdapter;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/EffectItemAdapter;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSurfaceTextureSizeChanged width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
