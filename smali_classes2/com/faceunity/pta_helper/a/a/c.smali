.class public Lcom/faceunity/pta_helper/a/a/c;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lcom/faceunity/pta_helper/a/a/b;

.field public c:Landroid/opengl/EGLSurface;

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/faceunity/pta_helper/a/a/d;->a:Ljava/lang/String;

    sput-object v0, Lcom/faceunity/pta_helper/a/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/faceunity/pta_helper/a/a/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/c;->c:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/faceunity/pta_helper/a/a/c;->d:I

    .line 4
    iput v0, p0, Lcom/faceunity/pta_helper/a/a/c;->e:I

    .line 5
    iput-object p1, p0, Lcom/faceunity/pta_helper/a/a/c;->b:Lcom/faceunity/pta_helper/a/a/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/c;->b:Lcom/faceunity/pta_helper/a/a/b;

    iget-object v1, p0, Lcom/faceunity/pta_helper/a/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_helper/a/a/b;->a(Landroid/opengl/EGLSurface;)V

    .line 5
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/c;->c:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/faceunity/pta_helper/a/a/c;->e:I

    iput v0, p0, Lcom/faceunity/pta_helper/a/a/c;->d:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/c;->c:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/c;->b:Lcom/faceunity/pta_helper/a/a/b;

    invoke-virtual {v0, p1}, Lcom/faceunity/pta_helper/a/a/b;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_helper/a/a/c;->c:Landroid/opengl/EGLSurface;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/c;->b:Lcom/faceunity/pta_helper/a/a/b;

    iget-object v1, p0, Lcom/faceunity/pta_helper/a/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_helper/a/a/b;->b(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/c;->b:Lcom/faceunity/pta_helper/a/a/b;

    iget-object v1, p0, Lcom/faceunity/pta_helper/a/a/c;->c:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_helper/a/a/b;->c(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/faceunity/pta_helper/a/a/c;->a:Ljava/lang/String;

    const-string v2, "WARNING: swapBuffers() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method
