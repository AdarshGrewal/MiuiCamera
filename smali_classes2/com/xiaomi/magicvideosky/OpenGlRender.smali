.class public Lcom/xiaomi/magicvideosky/OpenGlRender;
.super Ljava/lang/Object;
.source "OpenGlRender.java"


# static fields
.field public static TAG:Ljava/lang/String; = "OpenGlRender"


# instance fields
.field public mAttribtexture:I

.field public mAttribvertex:I

.field public mTextureVertices_buffer:[B

.field public mVertexVertices_buffer:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/xiaomi/magicvideosky/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v1, "construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native FrameAvailableJni()V
.end method

.method public static native RenderFrameJni()V
.end method

.method public static native SetCurrentGLContextForGraphJni()V
.end method

.method public static native SetCurrentGLContextJni()V
.end method

.method public static native SetOpengGlRenderParamsJni(IIII[B[B)V
.end method

.method public static native SetWindowSizeJni(IIII)V
.end method

.method public static native setCopyTextureOfFBOJni(II)V
.end method


# virtual methods
.method public RenderFrame()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/magicvideosky/OpenGlRender;->RenderFrameJni()V

    return-void
.end method

.method public SetCurrentGLContext()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideosky/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v1, "SetCurrentGLContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/magicvideosky/OpenGlRender;->SetCurrentGLContextJni()V

    return-void
.end method

.method public SetCurrentGLContextJniForGraph()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideosky/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v1, "SetCurrentGLContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/magicvideosky/OpenGlRender;->SetCurrentGLContextForGraphJni()V

    return-void
.end method

.method public SetOpengGlRenderParams(IIII[B[B)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/magicvideosky/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v1, "SetOpengGlRenderParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p1 .. p6}, Lcom/xiaomi/magicvideosky/OpenGlRender;->SetOpengGlRenderParamsJni(IIII[B[B)V

    return-void
.end method

.method public SetWindowSize(IIII)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/magicvideosky/OpenGlRender;->SetWindowSizeJni(IIII)V

    return-void
.end method

.method public onFrameAvailable()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/magicvideosky/OpenGlRender;->FrameAvailableJni()V

    return-void
.end method

.method public setCopyTextureOfFBO(II)V
    .locals 0

    .line 1
    sget-object p1, Lcom/xiaomi/magicvideosky/OpenGlRender;->TAG:Ljava/lang/String;

    const-string p2, "setCopyTextureOfFBO"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
