.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/AuxRenderSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0o0;->OooO00o:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0o0;->OooO00o:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->OooO00o(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
