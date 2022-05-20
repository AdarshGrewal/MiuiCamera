.class public Lcom/android/camera/ui/ShapeBackGroundView$5;
.super Ljava/lang/Object;
.source "ShapeBackGroundView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ShapeBackGroundView;->setMaskSpecificWidth(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/ShapeBackGroundView;

.field public final synthetic val$startWidth:I

.field public final synthetic val$targetWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ShapeBackGroundView;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$5;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iput p2, p0, Lcom/android/camera/ui/ShapeBackGroundView$5;->val$startWidth:I

    iput p3, p0, Lcom/android/camera/ui/ShapeBackGroundView$5;->val$targetWidth:I

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
    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$5;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget v1, p0, Lcom/android/camera/ui/ShapeBackGroundView$5;->val$startWidth:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/camera/ui/ShapeBackGroundView$5;->val$targetWidth:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    invoke-static {v0, p1}, Lcom/android/camera/ui/ShapeBackGroundView;->access$502(Lcom/android/camera/ui/ShapeBackGroundView;I)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$5;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
