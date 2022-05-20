.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

.field private final synthetic OooO0O0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooOOO;->OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooOOO;->OooO0O0:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooOOO;->OooO00o:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooooO/Oooo00o/OooO00o/OooOOO;->OooO0O0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->OooO00o(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
