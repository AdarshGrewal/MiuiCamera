.class public Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/loader/camera2/FocusManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/loader/camera2/FocusManager2;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "AF timeout (threshold is %d ms)"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/log/MqsHelper;->sendMsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa6

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->reShowFaceRect()V

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->access$000(Lcom/android/camera/module/loader/camera2/FocusManager2;I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {p1, v0}, Lcom/android/camera/module/loader/camera2/FocusManager2;->access$100(Lcom/android/camera/module/loader/camera2/FocusManager2;I)V

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->access$200(Lcom/android/camera/module/loader/camera2/FocusManager2;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->access$300(Lcom/android/camera/module/loader/camera2/FocusManager2;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-static {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->access$400(Lcom/android/camera/module/loader/camera2/FocusManager2;)V

    goto :goto_0

    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p1, v1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelFocus(Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/camera/module/loader/camera2/FocusManager2$MainHandler;->this$0:Lcom/android/camera/module/loader/camera2/FocusManager2;

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/FocusManager2;->cancelFocus()V

    :goto_0
    return-void
.end method
