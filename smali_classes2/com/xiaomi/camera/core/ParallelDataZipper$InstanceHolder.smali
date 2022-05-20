.class public Lcom/xiaomi/camera/core/ParallelDataZipper$InstanceHolder;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceHolder"
.end annotation


# static fields
.field public static INSTANCE:Lcom/xiaomi/camera/core/ParallelDataZipper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/camera/core/ParallelDataZipper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/core/ParallelDataZipper;-><init>(Lcom/xiaomi/camera/core/ParallelDataZipper$1;)V

    sput-object v0, Lcom/xiaomi/camera/core/ParallelDataZipper$InstanceHolder;->INSTANCE:Lcom/xiaomi/camera/core/ParallelDataZipper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
