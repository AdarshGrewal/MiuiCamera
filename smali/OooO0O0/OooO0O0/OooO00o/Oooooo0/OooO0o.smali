.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/ui/CameraRenderEngine;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I

.field private final synthetic OooO0Oo:Landroid/view/SurfaceHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/CameraRenderEngine;IILandroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;->OooO00o:Lcom/android/camera/ui/CameraRenderEngine;

    iput p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;->OooO0O0:I

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;->OooO0OO:I

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;->OooO0Oo:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;->OooO00o:Lcom/android/camera/ui/CameraRenderEngine;

    iget v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;->OooO0O0:I

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;->OooO0OO:I

    iget-object v3, p0, LOooO0O0/OooO0O0/OooO00o/Oooooo0/OooO0o;->OooO0Oo:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/CameraRenderEngine;->OooO00o(IILandroid/view/SurfaceHolder;)V

    return-void
.end method
