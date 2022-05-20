.class public final Lmiuix/animation/internal/AnimRunner$1;
.super Landroid/os/Handler;
.source "AnimRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/AnimRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$200()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->access$100()V

    :goto_0
    return-void
.end method
