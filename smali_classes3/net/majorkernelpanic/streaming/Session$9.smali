.class public Lnet/majorkernelpanic/streaming/Session$9;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/Session;->postPreviewStarted()V
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
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/Session$9;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$9;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/Session$9;->this$0:Lnet/majorkernelpanic/streaming/Session;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/Session;->access$300(Lnet/majorkernelpanic/streaming/Session;)Lnet/majorkernelpanic/streaming/Session$Callback;

    move-result-object v0

    invoke-interface {v0}, Lnet/majorkernelpanic/streaming/Session$Callback;->onPreviewStarted()V

    :cond_0
    return-void
.end method
