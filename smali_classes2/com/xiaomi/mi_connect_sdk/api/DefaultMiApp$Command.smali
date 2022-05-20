.class public Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;
.super Ljava/lang/Object;
.source "DefaultMiApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Command"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

.field public worker:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;->this$0:Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;->worker:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/mi_connect_sdk/api/DefaultMiApp$Command;->worker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
