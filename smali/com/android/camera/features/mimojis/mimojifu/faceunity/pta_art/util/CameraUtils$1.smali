.class public final Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils$1;
.super Ljava/lang/Object;
.source "CameraUtils.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils;->handleFocus(Landroid/hardware/Camera;FFIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$currentFocusMode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils$1;->val$currentFocusMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 2
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/CameraUtils$1;->val$currentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
