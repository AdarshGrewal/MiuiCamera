.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
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
    name = "ActionProcessing"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa2


# virtual methods
.method public abstract adjustViewBackground()V
.end method

.method public abstract announceForAccessibility(I)V
.end method

.method public abstract enableStopButton(ZZ)V
.end method

.method public abstract pauseRecording()V
.end method

.method public abstract processingAudioCapture(Z)V
.end method

.method public abstract processingFailed()V
.end method

.method public abstract processingFinish()V
.end method

.method public abstract processingLongExposePrepare()V
.end method

.method public abstract processingLongExposeStart()V
.end method

.method public abstract processingMimojiCreate()V
.end method

.method public abstract processingPause()V
.end method

.method public abstract processingPostAction(I)V
.end method

.method public abstract processingPrepare()V
.end method

.method public abstract processingResume()V
.end method

.method public abstract processingSpeechShutter(ZZ)V
.end method

.method public abstract processingStart()V
.end method

.method public abstract processingWorkspace()V
.end method

.method public abstract setBackgroundColor(Lcom/android/camera/fragment/bottom/action/FragmentBottomAction$BackgroundType;)V
.end method

.method public abstract showDocumentReviewViews(Landroid/graphics/Bitmap;[FLandroid/util/Size;)V
.end method

.method public abstract showOrHideBottom(Z)V
.end method

.method public abstract showOrHideLoadingProgress(ZZ)V
.end method

.method public abstract showOrHideMimojiProgress(Z)V
.end method

.method public abstract switchThumbnailFunction(Z)V
.end method

.method public abstract updateLoading(Z)V
.end method

.method public abstract updatePauseAndCaptureView(Z)V
.end method

.method public abstract updateResourceState(I)V
.end method

.method public abstract updateThumbnail(Lcom/android/camera/Thumbnail;ZIZ)V
.end method
