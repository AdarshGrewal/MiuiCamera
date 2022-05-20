.class public final Ley;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Iterator;

.field public static final b:Ljava/lang/Iterable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lew;

    .line 1
    invoke-direct {v0}, Lew;-><init>()V

    sput-object v0, Ley;->a:Ljava/util/Iterator;

    new-instance v0, Lex;

    .line 2
    invoke-direct {v0}, Lex;-><init>()V

    sput-object v0, Ley;->b:Ljava/lang/Iterable;

    return-void
.end method
