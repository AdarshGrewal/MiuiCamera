.class public Lcom/android/camera/ui/HorizontalZoomView$3;
.super Ljava/lang/Object;
.source "HorizontalZoomView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/HorizontalZoomView;->startScrollAnimator(FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/HorizontalZoomView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/HorizontalZoomView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$3;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalZoomView$3;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/camera/ui/HorizontalZoomView;->mSelectPointX:F

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$3;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/HorizontalZoomView;->access$202(Lcom/android/camera/ui/HorizontalZoomView;Z)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalZoomView$3;->this$0:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
