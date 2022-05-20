.class public Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusCommonAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startTouchDownAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mTouchDownAnimator:Landroid/animation/ValueAnimator;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusingAnimation()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusFailAnimation()V

    goto :goto_0

    .line 7
    :cond_2
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    iget-boolean v1, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mIsTouchFocus:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const v0, 0x3fc28f5c    # 1.52f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setCurrentAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    move-result-object p1

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetAlpha(I)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method
