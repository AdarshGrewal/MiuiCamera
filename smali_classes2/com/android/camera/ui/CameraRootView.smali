.class public Lcom/android/camera/ui/CameraRootView;
.super Landroid/widget/FrameLayout;
.source "CameraRootView.java"


# instance fields
.field public mDisableTouchevt:Z

.field public mHostPaused:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    return-void
.end method


# virtual methods
.method public disableTouchEvent()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableTouchEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    return-void
.end method

.method public onHostPause()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mHostPaused:Z

    return-void
.end method

.method public onHostResume()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mHostPaused:Z

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mHostPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method
