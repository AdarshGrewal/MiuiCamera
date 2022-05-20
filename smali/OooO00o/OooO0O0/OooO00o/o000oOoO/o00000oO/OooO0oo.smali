.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/video/CameraDeviceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/video/CameraDeviceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0oo;->OooO00o:Lcom/android/camera/module/video/CameraDeviceController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooO0oo;->OooO00o:Lcom/android/camera/module/video/CameraDeviceController;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/video/CameraDeviceController;->OooO0o0(Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;)V

    return-void
.end method
