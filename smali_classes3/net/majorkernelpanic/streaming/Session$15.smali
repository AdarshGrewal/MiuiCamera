.class public Lnet/majorkernelpanic/streaming/Session$15;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/Session;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/Session;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->getBitrate()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnet/majorkernelpanic/streaming/Session;->access$400(Lnet/majorkernelpanic/streaming/Session;J)V

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$600(Lnet/majorkernelpanic/streaming/Session;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v1}, Lnet/majorkernelpanic/streaming/Session;->access$500(Lnet/majorkernelpanic/streaming/Session;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$15;->this$0:Lnet/majorkernelpanic/streaming/Session;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lnet/majorkernelpanic/streaming/Session;->access$400(Lnet/majorkernelpanic/streaming/Session;J)V

    :goto_0
    return-void
.end method
