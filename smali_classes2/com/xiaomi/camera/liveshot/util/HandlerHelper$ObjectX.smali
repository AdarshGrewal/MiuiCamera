.class public final Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ObjectX;
.super Ljava/lang/Object;
.source "HandlerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/liveshot/util/HandlerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectX"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ObjectX;->object:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/camera/liveshot/util/HandlerHelper$ObjectX;->handler:Landroid/os/Handler;

    return-void
.end method
