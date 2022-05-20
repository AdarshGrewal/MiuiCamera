.class public final synthetic LOooO00o/OooO0o/OooO00o/OooO0o/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0o/OooO00o/OooO0o/OooO0o;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;

    iput p2, p0, LOooO00o/OooO0o/OooO00o/OooO0o/OooO0o;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0o/OooO00o/OooO0o/OooO0o;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;

    iget v1, p0, LOooO00o/OooO0o/OooO00o/OooO0o/OooO0o;->OooO0O0:I

    invoke-static {v0, v1}, Lcom/xiaomi/camera/videocast/VideoCastService$3;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$VideoCastModuleProtocol;I)V

    return-void
.end method
