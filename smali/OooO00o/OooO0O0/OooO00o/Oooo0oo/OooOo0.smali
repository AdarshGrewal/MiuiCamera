.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoModuleBase;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOo0;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOo0;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOo0;->OooO00o:Lcom/android/camera/dualvideo/DualVideoModuleBase;

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/OooOo0;->OooO0O0:I

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(ILcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
