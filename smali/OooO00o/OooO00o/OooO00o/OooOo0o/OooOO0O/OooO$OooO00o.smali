.class public final enum LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;
.super Ljava/lang/Enum;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

.field public static final enum OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

.field public static final synthetic OooO0Oo:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;


# instance fields
.field public final OooO00o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "STAR"

    invoke-direct {v0, v3, v1, v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    const/4 v3, 0x2

    const-string v4, "POLYGON"

    invoke-direct {v0, v4, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    new-array v3, v3, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    .line 3
    sget-object v4, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO0Oo:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO00o:I

    return-void
.end method

.method public static OooO00o(I)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->values()[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO00o:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;
    .locals 1

    .line 1
    const-class v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    return-object p0
.end method

.method public static values()[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->OooO0Oo:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    invoke-virtual {v0}, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO$OooO00o;

    return-object v0
.end method
