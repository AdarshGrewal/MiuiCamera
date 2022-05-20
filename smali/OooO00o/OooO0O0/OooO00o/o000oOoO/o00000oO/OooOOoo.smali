.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/video/VideoCastModule;

.field private final synthetic OooO0O0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/video/VideoCastModule;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOoo;->OooO00o:Lcom/android/camera/module/video/VideoCastModule;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOoo;->OooO0O0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOoo;->OooO00o:Lcom/android/camera/module/video/VideoCastModule;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOoo;->OooO0O0:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/video/VideoCastModule;->OooO00o(Landroid/os/Bundle;)V

    return-void
.end method
