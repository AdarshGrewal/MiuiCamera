.class public Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;
.super Ljava/lang/Object;
.source "DefaultMiApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->startAdvertising(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

.field public final synthetic val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;->val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    iget-object v1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$2;->val$appConfig:Lcom/xiaomi/mi_connect_sdk/api/AppConfig;

    invoke-virtual {v0, v1}, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;->startAdvertising(Lcom/xiaomi/mi_connect_sdk/api/AppConfig;)V

    return-void
.end method
