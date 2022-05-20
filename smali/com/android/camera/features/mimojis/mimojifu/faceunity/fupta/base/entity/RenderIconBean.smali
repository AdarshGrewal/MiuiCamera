.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;
.super Ljava/lang/Object;
.source "RenderIconBean.java"


# instance fields
.field public cameraId:I

.field public handleId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->handleId:I

    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->cameraId:I

    return v0
.end method

.method public getHandleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->handleId:I

    return v0
.end method

.method public setCameraId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->cameraId:I

    return-void
.end method

.method public setHandleId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/RenderIconBean;->handleId:I

    return-void
.end method
