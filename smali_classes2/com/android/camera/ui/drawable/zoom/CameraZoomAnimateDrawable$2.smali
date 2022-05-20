.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;
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

.field public final synthetic val$listener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->val$listener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$100(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$300(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)Landroid/util/Spline;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    mul-float/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$202(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;F)F

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$400(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v2}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$500(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$202(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;F)F

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->val$listener:Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-static {v0}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;->access$200(Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/camera/ui/ZoomView$zoomValueChangeListener;->onZoomValueChanged(F)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable$2;->this$0:Lcom/android/camera/ui/drawable/zoom/CameraZoomAnimateDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
