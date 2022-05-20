.class public Lcom/android/camera/ui/ShapeBackGroundView$3;
.super Ljava/lang/Object;
.source "ShapeBackGroundView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ShapeBackGroundView;->startBackGroundAnimator(IIIIIIILandroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/ShapeBackGroundView;

.field public final synthetic val$newAlpha:I

.field public final synthetic val$newHeight:I

.field public final synthetic val$newRadius:I

.field public final synthetic val$oldAlpha:I

.field public final synthetic val$oldHeight:I

.field public final synthetic val$oldRadius:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ShapeBackGroundView;IIIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$oldHeight:I

    iput p3, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$newHeight:I

    iput p4, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$oldRadius:I

    iput p5, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$newRadius:I

    iput p6, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$newAlpha:I

    iput p7, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$oldAlpha:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$oldHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$newHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$102(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$oldRadius:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$newRadius:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$202(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    .line 4
    iget v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$newAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {p1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$100(Lcom/android/camera/ui/ShapeBackGroundView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->access$302(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v2, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->val$oldAlpha:I

    int-to-float v3, v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v3, v0

    float-to-int p1, v3

    invoke-static {v1, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$402(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget-object v0, p1, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$400(Lcom/android/camera/ui/ShapeBackGroundView;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/ShapeBackGroundView;->access$302(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$3;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
