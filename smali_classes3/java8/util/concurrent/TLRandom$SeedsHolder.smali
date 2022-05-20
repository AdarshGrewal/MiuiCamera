.class public final Ljava8/util/concurrent/TLRandom$SeedsHolder;
.super Ljava/lang/Object;
.source "TLRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/TLRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeedsHolder"
.end annotation


# instance fields
.field public threadProbe:I

.field public threadSecondarySeed:I

.field public threadSeed:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava8/util/concurrent/TLRandom$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava8/util/concurrent/TLRandom$SeedsHolder;-><init>()V

    return-void
.end method
