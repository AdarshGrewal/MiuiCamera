.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;

.field private final synthetic OooO0O0:Lcom/android/camera/dualvideo/render/MiscTextureManager;

.field private final synthetic OooO0OO:I

.field private final synthetic OooO0Oo:Lcom/android/gallery3d/ui/GLCanvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/MiscTextureManager;ILcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;->OooO0O0:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iput p3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;->OooO0OO:I

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;->OooO0Oo:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;->OooO0O0:Lcom/android/camera/dualvideo/render/MiscTextureManager;

    iget v2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;->OooO0OO:I

    iget-object v3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OooO;->OooO0Oo:Lcom/android/gallery3d/ui/GLCanvas;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->OooO00o(Lcom/android/camera/dualvideo/render/MiscTextureManager;ILcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V

    return-void
.end method
