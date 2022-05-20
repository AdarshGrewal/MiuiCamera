.class public Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source "FragmentTopAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlertRecommendDescRunable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field public tipType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->tipType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public runToSafe()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const-string/jumbo v1, "unknow"

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2402(Lcom/android/camera/fragment/top/FragmentTopAlert;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2300(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1700(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->tipType:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setTipsState(Ljava/lang/String;Z)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x2a1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlertEvent;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlertEvent;->onRecommendDescDismiss()V

    :cond_1
    return-void
.end method

.method public setTipType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->tipType:Ljava/lang/String;

    return-void
.end method
