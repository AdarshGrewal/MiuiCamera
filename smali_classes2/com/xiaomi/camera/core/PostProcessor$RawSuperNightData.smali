.class public Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawSuperNightData"
.end annotation


# instance fields
.field public mainImageReceived:Z

.field public reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field public tuningImageReceived:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/PostProcessor$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;-><init>()V

    return-void
.end method
