.class public interface abstract Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;
.super Ljava/lang/Object;
.source "MimojiModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MimojiControl"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xf6


# virtual methods
.method public abstract createAvatar(Landroid/graphics/Bitmap;)V
.end method

.method public abstract createEmoticon()V
.end method

.method public abstract drawPreview(Landroid/graphics/Rect;IIZ[IZ)Z
.end method

.method public abstract getMimojiPara()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initEngine(IIIIZ)V
.end method

.method public abstract initMimojiResource()V
.end method

.method public abstract isAvatarInited()Z
.end method

.method public abstract onAvatarSelect(Lcom/android/camera/features/mimojis/mimojias/bean/AvatarItem;Z)Z
.end method

.method public abstract onBgSelect(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiBgItem;Z)V
.end method

.method public abstract onDeviceRotationChange(I)V
.end method

.method public abstract onEmoticonBack(Z)V
.end method

.method public abstract onFaceDetectResult(Landroid/media/Image;)I
.end method

.method public abstract refeshMaterialConfig(Z)V
.end method

.method public abstract releaseRender()V
.end method

.method public abstract saveEmoticon(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPicIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$TakePhotoCallBack;)V
.end method

.method public abstract unInitEngine()V
.end method
