.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;
.super Ljava/lang/Object;
.source "ColorParser.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Integer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->peek()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    move-result-object p2

    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO$OooO0O0;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO00o()V

    .line 4
    :cond_1
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v0

    .line 5
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v2

    .line 6
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0oo()D

    move-result-wide v6

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p1}, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;->OooO0OO()V

    :cond_2
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v0, p1

    if-gtz v8, :cond_3

    cmpg-double v8, v2, p1

    if-gtz v8, :cond_3

    cmpg-double v8, v4, p1

    if-gtz v8, :cond_3

    cmpg-double p1, v6, p1

    if-gtz p1, :cond_3

    const-wide p1, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p1

    mul-double/2addr v2, p1

    mul-double/2addr v4, p1

    mul-double/2addr v6, p1

    :cond_3
    double-to-int p1, v6

    double-to-int p2, v0

    double-to-int v0, v2

    double-to-int v1, v4

    .line 9
    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooO0o;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
