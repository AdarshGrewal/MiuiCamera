.class public Lcom/android/camera/ui/FaceView$FaceAnimation;
.super Ljava/lang/Object;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceAnimation"
.end annotation


# instance fields
.field public mShowAnimator:Landroid/animation/AnimatorSet;

.field public mShowFaceScaleRatio:F

.field public final synthetic this$0:Lcom/android/camera/ui/FaceView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowFaceScaleRatio:F

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/FaceView$FaceAnimation;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/android/camera/ui/FaceView$FaceAnimation;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowFaceScaleRatio:F

    return p1
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowFaceScaleRatio:F

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {v0}, Lcom/android/camera/ui/FaceView;->access$600(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-static {v0}, Lcom/android/camera/ui/FaceView;->access$700(Lcom/android/camera/ui/FaceView;)Landroid/graphics/Paint;

    move-result-object v0

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public getShowFaceScaleRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowFaceScaleRatio:F

    return v0
.end method

.method public isAnimRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startFaceAnimWithAssociatedFrame()V
    .locals 5

    const-string v0, "FaceView"

    const-string/jumbo v1, "startFaceAnimWithAssociatedFrame: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOO0o;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOO0o;-><init>(Lcom/android/camera/ui/FaceView$FaceAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance v2, Lcom/android/camera/ui/FaceView$FaceAnimation$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FaceView$FaceAnimation$1;-><init>(Lcom/android/camera/ui/FaceView$FaceAnimation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v2, v0, [F

    .line 9
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 10
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO0;

    invoke-direct {v4, p0}, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO0;-><init>(Lcom/android/camera/ui/FaceView$FaceAnimation;)V

    .line 11
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object v3, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/FaceView$FaceAnimation;->mShowAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
