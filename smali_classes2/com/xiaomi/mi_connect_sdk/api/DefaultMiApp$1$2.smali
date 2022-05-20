.class public Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;
.super Ljava/lang/Object;
.source "DefaultMiApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->onDiscoveryResult(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

.field public final synthetic val$appId:I

.field public final synthetic val$result:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;->this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

    iput p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;->val$appId:I

    iput p3, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;->this$1:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;

    iget-object v0, v0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->access$400(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;)Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;->val$appId:I

    iget v2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$1$2;->val$result:I

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/mi_connect_sdk/api/MiAppCallback;->onDiscoveryResult(II)V

    return-void
.end method
