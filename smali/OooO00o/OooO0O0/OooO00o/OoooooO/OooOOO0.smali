.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/FaceView$FaceAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/FaceView$FaceAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO0;->OooO00o:Lcom/android/camera/ui/FaceView$FaceAnimation;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/OooOOO0;->OooO00o:Lcom/android/camera/ui/FaceView$FaceAnimation;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FaceView$FaceAnimation;->OooO0O0(Landroid/animation/ValueAnimator;)V

    return-void
.end method