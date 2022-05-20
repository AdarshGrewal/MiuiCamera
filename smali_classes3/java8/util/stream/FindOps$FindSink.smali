.class public abstract Ljava8/util/stream/FindOps$FindSink;
.super Ljava/lang/Object;
.source "FindOps.java"

# interfaces
.implements Ljava8/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/FindOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FindSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/FindOps$FindSink$OfDouble;,
        Ljava8/util/stream/FindOps$FindSink$OfLong;,
        Ljava8/util/stream/FindOps$FindSink$OfInt;,
        Ljava8/util/stream/FindOps$FindSink$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/TerminalSink<",
        "TT;TO;>;"
    }
.end annotation


# instance fields
.field public hasValue:Z

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 6
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 4
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 5
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/FindOps$FindSink;->hasValue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljava8/util/stream/FindOps$FindSink;->hasValue:Z

    .line 3
    iput-object p1, p0, Ljava8/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 0

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ljava8/util/stream/FindOps$FindSink;->hasValue:Z

    return v0
.end method

.method public end()V
    .locals 0

    return-void
.end method
