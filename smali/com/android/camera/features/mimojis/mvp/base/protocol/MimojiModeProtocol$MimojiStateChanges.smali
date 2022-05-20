.class public interface abstract Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;
.super Ljava/lang/Object;
.source "MimojiModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFaceDetectChanges;
.implements Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.implements Lcom/android/camera2/Camera2Proxy$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MimojiStateChanges"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xed


# virtual methods
.method public abstract getGlcontext()Ljavax/microedition/khronos/egl/EGLContext;
.end method

.method public abstract initPreview(ZLcom/android/camera/CameraSize;)V
.end method

.method public abstract onDrawFrame(Landroid/graphics/Rect;IIZ)Z
.end method

.method public abstract onModeStateBack(IZ)V
.end method

.method public abstract onShutterButtonClick(I)V
.end method

.method public abstract setActionState(I)V
.end method

.method public abstract setDisableSingleTapUp(Z)V
.end method

.method public abstract setIsFrameAvailable(Z)V
.end method

.method public abstract setModeState(I)V
.end method
