.class public Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem$1;
.super Ljava/lang/Object;
.source "VVWorkspacePlayerItem.java"

# interfaces
.implements Lcom/xiaomi/mediaprocess/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;->startPlay(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem$1;->this$0:Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnReceiveFailed()V
    .locals 2

    const-string v0, "OnReceiveFailed:"

    const-string/jumbo v1, "yes"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 2

    const-string v0, "OnReceiveFinish:"

    const-string/jumbo v1, "yes"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
