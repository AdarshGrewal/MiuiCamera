.class public Lcom/android/camera/ui/FaceView$FaceAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FaceView$FaceAnimation;->startFaceAnimWithAssociatedFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FaceView$FaceAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation$1;->this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation$1;->this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;

    iget-object p1, p1, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation$1;->this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;

    iget-object p1, p1, Lcom/android/camera/ui/FaceView$FaceAnimation;->this$0:Lcom/android/camera/ui/FaceView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/camera/ui/FaceView;->setFaceRectVisible(II)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/FaceView$FaceAnimation$1;->this$1:Lcom/android/camera/ui/FaceView$FaceAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/android/camera/ui/FaceView$FaceAnimation;->access$802(Lcom/android/camera/ui/FaceView$FaceAnimation;F)F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
