.class public interface abstract Lcom/android/camera/features/mimojis/commen/state/IMiState;
.super Ljava/lang/Object;
.source "IMiState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/commen/state/IMiState$MimojiAction;,
        Lcom/android/camera/features/mimojis/commen/state/IMiState$MimojiMode;
    }
.end annotation


# virtual methods
.method public abstract initModeState()V
.end method

.method public abstract onDrawFrame(Landroid/graphics/Rect;IIZZ)Z
.end method

.method public abstract onModeStateBack(IZ)V
.end method

.method public abstract onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)V
.end method

.method public abstract onShutterButtonClick(I)V
.end method
