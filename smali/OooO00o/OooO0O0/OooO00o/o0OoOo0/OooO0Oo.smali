.class public final synthetic LOooO00o/OooO0O0/OooO00o/o0OoOo0/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o0OoOo0/OooO0Oo;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO00o/o0OoOo0/OooO0Oo;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o0OoOo0/OooO0Oo;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO00o/o0OoOo0/OooO0Oo;->OooO0O0:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/zoommap/ZoomMapController;->OooO00o(Z)V

    return-void
.end method
