.class public Lcom/android/camera/ui/gl/EglOffscreenSurface;
.super Lcom/android/camera/ui/gl/EglSurfaceBase;
.source "EglOffscreenSurface.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/gl/EglCore;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/gl/EglSurfaceBase;-><init>(Lcom/android/camera/ui/gl/EglCore;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEglCore:Lcom/android/camera/ui/gl/EglCore;

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/ui/gl/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 3
    iput p2, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mWidth:I

    .line 4
    iput p3, p0, Lcom/android/camera/ui/gl/EglSurfaceBase;->mHeight:I

    return-void
.end method
