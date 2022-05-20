.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomRatioToggleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->setImmersive(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

.field public final synthetic val$needAnim:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;->val$needAnim:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/zoom/ZoomRatioView;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->resetScale()V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    .line 5
    div-int/lit8 v4, p1, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    .line 6
    invoke-virtual {v2, v4}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    .line 7
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    .line 9
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;->val$needAnim:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$2;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/zoom/ZoomRatioView;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 5
    div-int/lit8 v3, v0, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    .line 6
    invoke-virtual {v1, v3}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setVisibility(I)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
