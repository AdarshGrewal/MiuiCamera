.class public interface abstract Lcom/android/gallery3d/ui/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# virtual methods
.method public abstract beginBindFrameBuffer(III)V
.end method

.method public abstract beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
.end method

.method public abstract clearBuffer()V
.end method

.method public abstract deleteBuffer(I)V
.end method

.method public abstract deleteFrameBuffer(I)V
.end method

.method public abstract deleteProgram()V
.end method

.method public abstract deleteProgram(I)V
.end method

.method public abstract deleteSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract deleteTexture(I)Z
.end method

.method public abstract deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
.end method

.method public abstract draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
.end method

.method public abstract endBindFrameBuffer()V
.end method

.method public abstract getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getState()Lcom/android/camera/effect/GLCanvasState;
.end method

.method public abstract getWidth()I
.end method

.method public prepareBlurRenders()V
    .locals 0

    return-void
.end method

.method public prepareEffectRenders(ZI)V
    .locals 0

    return-void
.end method

.method public prepareMimojiRenders()V
    .locals 0

    return-void
.end method

.method public prepareTransformRenders()V
    .locals 0

    return-void
.end method

.method public prepareYuvRenders()V
    .locals 0

    return-void
.end method

.method public abstract recycledResources()V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setSize(II)V
.end method
