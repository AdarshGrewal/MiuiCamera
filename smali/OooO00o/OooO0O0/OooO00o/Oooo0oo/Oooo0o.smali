.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/Oooo0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$FocusCallback;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/Oooo0o;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    return-void
.end method


# virtual methods
.method public final onFocusStateChanged(Lcom/android/camera/module/loader/camera2/FocusTask;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/Oooo0o;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    return-void
.end method
