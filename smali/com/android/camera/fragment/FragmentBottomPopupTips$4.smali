.class public Lcom/android/camera/fragment/FragmentBottomPopupTips$4;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;->configRootLayoutParams(ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

.field public final synthetic val$dstWidth:I

.field public final synthetic val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic val$startWidth:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;IILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iput p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$startWidth:I

    iput p3, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$dstWidth:I

    iput-object p4, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$startWidth:I

    int-to-float v1, v0

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$dstWidth:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->access$700(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$4;->val$layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
