.class public final enum LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

.field public static final enum OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

.field public static final enum OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

.field public static final enum OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

.field public static final synthetic OooO0o0:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    const/4 v1, 0x0

    const-string v2, "MASK_MODE_ADD"

    invoke-direct {v0, v2, v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    const/4 v2, 0x1

    const-string v3, "MASK_MODE_SUBTRACT"

    invoke-direct {v0, v3, v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    .line 3
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    const/4 v3, 0x2

    const-string v4, "MASK_MODE_INTERSECT"

    invoke-direct {v0, v4, v3}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    .line 4
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    const/4 v4, 0x3

    const-string v5, "MASK_MODE_NONE"

    invoke-direct {v0, v5, v4}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO0Oo:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    const/4 v5, 0x4

    new-array v5, v5, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    .line 5
    sget-object v6, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    aput-object v6, v5, v1

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    aput-object v1, v5, v2

    sget-object v1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO0o0:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;
    .locals 1

    .line 1
    const-class v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    return-object p0
.end method

.method public static values()[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->OooO0o0:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    invoke-virtual {v0}, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0oO$OooO00o;

    return-object v0
.end method
