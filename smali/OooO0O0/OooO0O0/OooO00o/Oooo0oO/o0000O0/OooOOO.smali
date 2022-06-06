.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

.field private final synthetic OooO0O0:F

.field private final synthetic OooO0OO:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO;->OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO;->OooO0O0:F

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO;->OooO0OO:F

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO;->OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO;->OooO0O0:F

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000O0/OooOOO;->OooO0OO:F

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->OooO00o(FFLcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p1

    return p1
.end method
