.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;
.super Ljava/lang/Object;
.source "CameraZoomAnimateDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->startTouchDownAnimation(Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->updateSliderTouchScaleAnimation(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
