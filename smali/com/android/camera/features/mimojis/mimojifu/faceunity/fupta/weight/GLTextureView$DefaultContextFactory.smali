.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field public EGL_CONTEXT_CLIENT_VERSION:I

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)V

    return-void
.end method


# virtual methods
.method public createContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    .line 2
    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$200(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 3
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$DefaultContextFactory;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    .line 4
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;->access$200(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {p1, p2, v1, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    return-object p1
.end method

.method public destroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " context: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultContextFactory"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p1

    const-string p2, "eglDestroyContex"

    invoke-static {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
