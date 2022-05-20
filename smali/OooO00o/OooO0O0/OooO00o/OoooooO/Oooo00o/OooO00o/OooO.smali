.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

.field private final synthetic OooO0O0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO;->OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO;->OooO0O0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO;->OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooO;->OooO0O0:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusEyeDrawable;->OooO0O0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
