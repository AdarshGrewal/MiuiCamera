.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OoooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OoooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OoooOO0;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItemManager;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO0O0(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
