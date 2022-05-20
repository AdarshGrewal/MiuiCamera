.class public final synthetic LOooO00o/OooO0o/OooO00o/OooO0O0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/camera/device/callable/CameraCallable;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/device/callable/CameraCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO00o;->OooO00o:Lcom/xiaomi/camera/device/callable/CameraCallable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO00o;->OooO00o:Lcom/xiaomi/camera/device/callable/CameraCallable;

    invoke-virtual {v0}, Lcom/xiaomi/camera/device/callable/CameraCallable;->call()Lcom/xiaomi/camera/device/callable/CallableReturn;

    move-result-object v0

    return-object v0
.end method
