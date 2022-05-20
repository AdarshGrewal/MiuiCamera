.class public LOooO00o/OooO00o/OooO00o/OooOOOO$OooO00o;
.super Ljava/lang/Object;
.source "LottieTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO00o/OooO00o/OooOOOO;->OooO00o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOO;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooOOOO;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOOOO$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOOOO$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOO;

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOOOO;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOOOO$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOO;

    invoke-static {v0}, LOooO00o/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOOOO;)LOooO00o/OooO00o/OooO00o/OooOOO;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOOOO$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOOO;->OooO0O0()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, LOooO00o/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOOOO;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOOOO$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOOOO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooOOO;->OooO00o()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, LOooO00o/OooO00o/OooO00o/OooOOOO;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOOOO;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
