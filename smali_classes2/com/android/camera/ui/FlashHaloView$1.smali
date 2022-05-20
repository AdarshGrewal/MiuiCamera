.class public Lcom/android/camera/ui/FlashHaloView$1;
.super Ljava/lang/Object;
.source "FlashHaloView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FlashHaloView;->setMaskMargins(IIIILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/FlashHaloView;

.field public final synthetic val$bottom:I

.field public final synthetic val$originalBottom:I

.field public final synthetic val$originalTop:I

.field public final synthetic val$params:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic val$top:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FlashHaloView;IIIILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView$1;->this$0:Lcom/android/camera/ui/FlashHaloView;

    iput p2, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$originalTop:I

    iput p3, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$top:I

    iput p4, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$originalBottom:I

    iput p5, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$bottom:I

    iput-object p6, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

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
    iget v0, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$originalTop:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 3
    iget v1, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$originalBottom:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$bottom:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v2, v1

    float-to-int v1, v2

    .line 4
    iget-object v2, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/ui/FlashHaloView$1;->this$0:Lcom/android/camera/ui/FlashHaloView;

    iget-object v3, p0, Lcom/android/camera/ui/FlashHaloView$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/ui/FlashHaloView$1;->this$0:Lcom/android/camera/ui/FlashHaloView;

    invoke-static {v2, v0, v1, p1}, Lcom/android/camera/ui/FlashHaloView;->access$000(Lcom/android/camera/ui/FlashHaloView;IIF)V

    return-void
.end method
