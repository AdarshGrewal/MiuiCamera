.class public abstract Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.super Ljava8/util/stream/StreamSpliterators$ArrayBuffer;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$ArrayBuffer;"
    }
.end annotation


# instance fields
.field public index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract forEach(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;J)V"
        }
    .end annotation
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    return-void
.end method
