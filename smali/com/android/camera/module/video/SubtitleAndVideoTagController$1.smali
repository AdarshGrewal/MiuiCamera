.class public Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;
.super Ljava/lang/Object;
.source "SubtitleAndVideoTagController.java"

# interfaces
.implements Lcom/android/camera/module/VideoBase$OnTagsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/video/SubtitleAndVideoTagController;->getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

.field public final synthetic val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/SubtitleAndVideoTagController;Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->this$0:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    iput-object p2, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagsReady(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->this$0:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-static {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->access$000(Lcom/android/camera/module/video/SubtitleAndVideoTagController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->this$0:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-static {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->access$100(Lcom/android/camera/module/video/SubtitleAndVideoTagController;)Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->this$0:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-static {v0}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->access$100(Lcom/android/camera/module/video/SubtitleAndVideoTagController;)Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;

    move-result-object v0

    new-instance v2, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1$1;-><init>(Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;Ljava/util/List;)V

    const-wide/16 v3, 0x1f4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording;->getSubtitleContentAsync(Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;J)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->this$0:Lcom/android/camera/module/video/SubtitleAndVideoTagController;

    invoke-static {v2}, Lcom/android/camera/module/video/SubtitleAndVideoTagController;->access$200(Lcom/android/camera/module/video/SubtitleAndVideoTagController;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    .line 5
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const-string/jumbo v2, "video tag is empty "

    const-string v3, "SubtitleAndVideoTagCont"

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->getVideoTagContent()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    new-instance v2, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MtagBox;->fourcc()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaomi.support_tags"

    invoke-direct {v2, v4, v0, v3}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;

    invoke-interface {v0, p1}, Lcom/android/camera/module/VideoBase$OnTagsListener;->onTagsReady(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-nez v1, :cond_4

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/video/SubtitleAndVideoTagController$1;->val$listener:Lcom/android/camera/module/VideoBase$OnTagsListener;

    invoke-interface {v0, p1}, Lcom/android/camera/module/VideoBase$OnTagsListener;->onTagsReady(Ljava/util/List;)V

    :cond_4
    return-void
.end method
