.class public Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;
.super Landroid/os/Handler;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask$LocalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;

    .line 3
    invoke-interface {p1, v1}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;->playbackStopped(I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayerFeedback;->playbackStopped(I)V

    :goto_0
    return-void
.end method
