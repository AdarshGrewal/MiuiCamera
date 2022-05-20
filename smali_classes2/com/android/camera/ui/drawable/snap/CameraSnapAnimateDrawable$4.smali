.class public Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraSnapAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$502(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$502(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
