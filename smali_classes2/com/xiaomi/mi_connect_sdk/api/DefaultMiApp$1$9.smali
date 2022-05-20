.class public Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;
.super Ljava/lang/Object;
.source "DefaultMiApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->onPayloadReceived(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

.field public final synthetic val$appData:[B

.field public final synthetic val$appEndPointId:I

.field public final synthetic val$appId:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;II[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;->this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

    iput p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;->val$appId:I

    iput p3, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;->val$appEndPointId:I

    iput-object p4, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;->val$appData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;->this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

    iget-object v0, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$1100(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;->val$appId:I

    iget v2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;->val$appEndPointId:I

    iget-object v3, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$9;->val$appData:[B

    if-nez v3, :cond_0

    const/4 v3, 0x0

    new-array v3, v3, [B

    :cond_0
    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onPayloadReceived(II[B)V

    return-void
.end method
