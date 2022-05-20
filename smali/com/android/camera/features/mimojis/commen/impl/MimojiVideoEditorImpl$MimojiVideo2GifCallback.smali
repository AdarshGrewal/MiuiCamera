.class public Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;
.super Ljava/lang/Object;
.source "MimojiVideoEditorImpl.java"

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimojiVideo2GifCallback"
.end annotation


# instance fields
.field public count:I

.field public index:I

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V

    return-void
.end method


# virtual methods
.method public OnConvertProgress(I)V
    .locals 3

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->index:I

    iget v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->count:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfa

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$302(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Z)Z

    .line 5
    invoke-interface {p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;->coverEmoticonSuccess()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji void video2gif[]  Video  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " convert GIF progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->count:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->index:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->count:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiVideo2GifCallback;->index:I

    return-void
.end method
