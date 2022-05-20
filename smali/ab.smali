.class public final Lab;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcq;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lo;->c:Lo;

    .line 2
    sget-object v2, Lad;->a:Lad;

    .line 3
    sget-object v4, Lfy;->k:Lfy;

    const-class v5, Lad;

    const v3, 0xb706546

    move-object v1, v2

    .line 4
    invoke-static/range {v0 .. v5}, Lde;->OooO00o(Leh;Ljava/lang/Object;Leh;ILfy;Ljava/lang/Class;)Lcq;

    move-result-object v0

    sput-object v0, Lab;->a:Lcq;

    return-void
.end method
