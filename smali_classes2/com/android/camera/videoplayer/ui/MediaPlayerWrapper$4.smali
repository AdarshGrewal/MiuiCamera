.class public Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$4;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$4;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$4;->this$0:Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->access$300(Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;)V

    return-void
.end method
