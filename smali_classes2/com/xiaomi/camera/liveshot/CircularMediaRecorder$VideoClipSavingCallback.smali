.class public interface abstract Lcom/xiaomi/camera/liveshot/CircularMediaRecorder$VideoClipSavingCallback;
.super Ljava/lang/Object;
.source "CircularMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/CircularMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoClipSavingCallback"
.end annotation


# static fields
.field public static final EMPTY_VIDEO_PATH:Ljava/lang/String; = "empty"


# virtual methods
.method public abstract onVideoClipSavingCancelled(Ljava/lang/Object;)V
.end method

.method public abstract onVideoClipSavingCompleted(Ljava/lang/Object;Ljava/lang/String;J)V
.end method

.method public abstract onVideoClipSavingException(Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method
