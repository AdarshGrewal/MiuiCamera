.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;

.field private final synthetic OooO0O0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;Landroid/hardware/camera2/CameraManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO00o;->OooO00o:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO00o;->OooO0O0:Landroid/hardware/camera2/CameraManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO00o;->OooO00o:Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooOO0/o00000Oo/OooO0OO/OooO00o;->OooO0O0:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2CompatAdapterRole;->OooO00o(Landroid/hardware/camera2/CameraManager;)V

    return-void
.end method
