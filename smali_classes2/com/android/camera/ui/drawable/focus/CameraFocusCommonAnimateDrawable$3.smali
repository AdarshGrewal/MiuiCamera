.class public Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusCommonAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusingAnimation()V
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
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$3;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->pendingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusFailAnimation()V

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mSuccessFlag:I

    iget-boolean v1, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mIsTouchFocus:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    :goto_0
    return-void
.end method
