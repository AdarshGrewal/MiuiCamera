.class public Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;
.super Ljava/lang/Object;
.source "IspInterfaceReprocessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Raw2YuvStatus"
.end annotation


# instance fields
.field public isTuningBufferReady:Z

.field public isYuvBufferReady:Z

.field public final synthetic this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;->this$0:Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;-><init>(Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor;)V

    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;->isYuvBufferReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/camera/imagecodec/impl/IspInterfaceReprocessor$Raw2YuvStatus;->isTuningBufferReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
