.class public Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;
.super Lmiuix/view/animation/CubicEaseOutInterpolator;
.source "FragmentBottomAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->updateBottomInRecording(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

.field public final synthetic val$isHideThumbnail:Z

.field public final synthetic val$start:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    iput-boolean p2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$isHideThumbnail:Z

    iput-boolean p3, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$isHideThumbnail:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz v2, :cond_0

    sub-float v2, v1, p1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    .line 4
    invoke-static {v2}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 5
    :goto_0
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$900(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1000(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz v2, :cond_3

    move v2, p1

    goto :goto_1

    :cond_3
    sub-float v2, v1, p1

    :goto_1
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1100(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->this$0:Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->access$1200(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$12;->val$start:Z

    if-eqz v2, :cond_5

    move v1, p1

    goto :goto_2

    :cond_5
    sub-float/2addr v1, p1

    :goto_2
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_6
    return p1
.end method
