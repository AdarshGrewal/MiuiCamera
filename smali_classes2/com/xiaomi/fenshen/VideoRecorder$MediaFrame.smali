.class public Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;
.super Ljava/lang/Object;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/fenshen/VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaFrame"
.end annotation


# instance fields
.field public buffer:Ljava/nio/ByteBuffer;

.field public info:Landroid/media/MediaCodec$BufferInfo;

.field public final synthetic this$0:Lcom/xiaomi/fenshen/VideoRecorder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/fenshen/VideoRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$MediaFrame;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
