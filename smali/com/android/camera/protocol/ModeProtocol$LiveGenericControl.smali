.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LiveGenericControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/protocol/ModeProtocol$LiveGenericControl$AuthResult;
    }
.end annotation


# static fields
.field public static final ACTIVATE_EXPIRED:I = 0x2

.field public static final ACTIVATE_FAIL:I = 0x3

.field public static final ACTIVATE_NOT_MATCH:I = 0x4

.field public static final ACTIVATE_OK:I = 0x0

.field public static final ACTIVATE_TBD:I = 0x1


# virtual methods
.method public abstract getAlgorithmPreviewSize(Ljava/util/List;)Lcom/android/camera/CameraSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation
.end method

.method public abstract getAuthResult()I
.end method

.method public abstract getPreviewRatio()F
.end method

.method public abstract initResource()V
.end method

.method public abstract onOrientationChanged(III)V
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public reset()V
    .locals 0

    return-void
.end method
