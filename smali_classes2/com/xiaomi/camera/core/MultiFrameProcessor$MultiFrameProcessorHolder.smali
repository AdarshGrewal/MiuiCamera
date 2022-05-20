.class public Lcom/xiaomi/camera/core/MultiFrameProcessor$MultiFrameProcessorHolder;
.super Ljava/lang/Object;
.source "MultiFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/MultiFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiFrameProcessorHolder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/xiaomi/camera/core/MultiFrameProcessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/MultiFrameProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/core/MultiFrameProcessor;-><init>(Lcom/xiaomi/camera/core/MultiFrameProcessor$1;)V

    sput-object v0, Lcom/xiaomi/camera/core/MultiFrameProcessor$MultiFrameProcessorHolder;->INSTANCE:Lcom/xiaomi/camera/core/MultiFrameProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
