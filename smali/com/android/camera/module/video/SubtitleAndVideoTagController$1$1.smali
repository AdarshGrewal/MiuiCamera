.class public Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;
.super Ljava/lang/Object;
.source "SubtitleAndVideoTagController.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->onTagsReady(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;

.field public final synthetic val$tags:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->this$1:Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;

    iput-object p2, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->val$tags:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SubtitleAndVideoTagCont"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResult, sub title  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->val$tags:Ljava/util/List;

    new-instance v1, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MsrtBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.xiaomi.support_subtitle"

    invoke-direct {v1, v3, p1, v2}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "video subtitle is empty "

    .line 6
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->this$1:Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;

    iget-object p1, p1, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;

    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->val$tags:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/android/camera/module/VideoBase$OnTagsListener;->onTagsReady(Ljava/util/List;)V

    return-void
.end method

.method public onTimeout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->this$1:Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;

    iget-object v0, v0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->this$0:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-static {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->access$100(Lcom/android/camera/module/video/SubtitleAndVideoTagController;)Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->getSubtitleContentSync()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTimeout, sub title  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubtitleAndVideoTagCont"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->val$tags:Ljava/util/List;

    new-instance v2, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MsrtBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaomi.support_subtitle"

    invoke-direct {v2, v4, v0, v3}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "video subtitle is empty "

    .line 7
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->this$1:Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;

    iget-object v0, v0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;

    iget-object v1, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;->val$tags:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/camera/module/VideoBase$OnTagsListener;->onTagsReady(Ljava/util/List;)V

    return-void
.end method
