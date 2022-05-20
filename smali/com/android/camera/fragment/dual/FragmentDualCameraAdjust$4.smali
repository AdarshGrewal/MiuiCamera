.class public Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentDualCameraAdjust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onClick(Lcom/android/camera/ui/zoom/ZoomRatioView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

.field public final synthetic val$targetZoomRatio:F


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    iput p2, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->val$targetZoomRatio:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$600(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->val$targetZoomRatio:F

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onScrollEnd(ZFI)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-static {p1}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->access$600(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->val$targetZoomRatio:F

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onScrollEnd(ZFI)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    iget v0, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$4;->val$targetZoomRatio:F

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->onScrollStart(F)V

    return-void
.end method
