.class public final synthetic LOooO00o/OooO0O0/OooO00o/o0OoOo0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o0OoOo0/OooO00o;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o0OoOo0/OooO00o;->OooO00o:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-virtual {v0, p1}, Lcom/android/camera/zoommap/ZoomMapController;->OooO00o(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
