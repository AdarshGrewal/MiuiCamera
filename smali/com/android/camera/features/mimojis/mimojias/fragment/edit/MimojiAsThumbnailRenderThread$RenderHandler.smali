.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$RenderHandler;
.super Landroid/os/Handler;
.source "MimojiAsThumbnailRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderHandler"
.end annotation


# instance fields
.field public final mRenderThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$RenderHandler;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_8

    const/16 v2, 0x20

    if-eq v1, v2, :cond_7

    const/16 v2, 0x30

    if-eq v1, v2, :cond_6

    const/16 v2, 0x40

    if-eq v1, v2, :cond_5

    const/16 v2, 0x50

    if-eq v1, v2, :cond_4

    const/16 v2, 0x60

    if-eq v1, v2, :cond_3

    const/16 v2, 0x70

    if-eq v1, v2, :cond_2

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$1100(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$1000(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$800(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$700(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)V

    goto :goto_0

    .line 7
    :cond_5
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$900(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)V

    goto :goto_0

    .line 8
    :cond_6
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$600(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)V

    goto :goto_0

    .line 9
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$500(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;Ljava/lang/String;)Z

    goto :goto_0

    .line 10
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$400(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;Z)V

    :goto_0
    return-void
.end method
