.class public Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;
.super Ljava/lang/Object;
.source "OpenGlRender.java"


# static fields
.field public static TAG:Ljava/lang/String; = "OpenGlRender"


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
    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v1, "construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native FrameAvailableJni()V
.end method

.method public static native RenderFrameJni()V
.end method

.method public static native SetCurrentGLContextJni(I)V
.end method

.method public static native SetOpengGlRenderParamsJni(IIIII[B[B)V
.end method

.method private native SetWindowSizeJni(IIII)V
.end method


# virtual methods
.method public RenderFrame()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->RenderFrameJni()V

    return-void
.end method

.method public SetCurrentGLContext(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCurrentGLContext, surface texture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->SetCurrentGLContextJni(I)V

    return-void
.end method

.method public SetOpengGlRenderParams(IIIII[B[B)V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v1, "SetOpengGlRenderParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p1 .. p7}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->SetOpengGlRenderParamsJni(IIIII[B[B)V

    return-void
.end method

.method public SetWindowSize(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->SetWindowSizeJni(IIII)V

    return-void
.end method

.method public onFrameAvailable()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/xiaomi/inceptionmediaprocess/OpenGlRender;->FrameAvailableJni()V

    return-void
.end method
