.class public final synthetic Lay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lay;->a:Lba;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lay;->a:Lba;

    invoke-virtual {v0}, Lba;->OooO0O0()V

    return-void
.end method
