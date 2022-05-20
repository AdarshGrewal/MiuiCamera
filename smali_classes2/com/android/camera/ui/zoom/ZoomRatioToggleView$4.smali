.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomRatioToggleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->showZoomChildView(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

.field public final synthetic val$currZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

.field public final synthetic val$nextZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;Lcom/android/camera/ui/zoom/ZoomRatioView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$currZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    iput-object p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$nextZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$currZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$currZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->resetScale()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$nextZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setIconify(Z)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$4;->val$nextZoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->resetScale()V

    :cond_1
    return-void
.end method
