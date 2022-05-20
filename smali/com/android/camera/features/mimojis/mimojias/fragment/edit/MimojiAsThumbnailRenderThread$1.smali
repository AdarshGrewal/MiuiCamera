.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;
.super Ljava/lang/Object;
.source "MimojiAsThumbnailRenderThread.java"

# interfaces
.implements Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager$AvatarEmoResCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->initEmoticon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameRefresh(Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFrameRefresh emoExtraInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->emoGLRender(Lcom/arcsoft/avatar2/emoticon/EmoInfo$EmoExtraInfo;)V

    :cond_0
    return-void
.end method

.method public onMakeMediaEnd()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMakeMediaEnd \u65f6\u95f4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;->stopRecording()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;->access$300(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsThumbnailRenderThread;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xfa

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->updateEmoticonGifProgress(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string/jumbo v0, "release_avatar"

    const-string v1, "-> for break ---"

    .line 8
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
