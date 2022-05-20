.class public Lcom/android/camera/ui/ShapeBackGroundView$1;
.super Ljava/lang/Object;
.source "ShapeBackGroundView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ShapeBackGroundView;->updateThemeStyle(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/ShapeBackGroundView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/ShapeBackGroundView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    iget-object v0, v0, Lcom/android/camera/ui/ShapeBackGroundView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-static {v0}, Lcom/android/camera/ui/ShapeBackGroundView;->access$000(Lcom/android/camera/ui/ShapeBackGroundView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView$1;->this$0:Lcom/android/camera/ui/ShapeBackGroundView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
