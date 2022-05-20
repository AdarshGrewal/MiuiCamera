.class public final enum LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;
.super Ljava/lang/Enum;
.source "GradientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

.field public static final enum OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

.field public static final synthetic OooO0OO:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    const/4 v1, 0x0

    const-string v2, "LINEAR"

    invoke-direct {v0, v2, v1}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    .line 2
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    const/4 v2, 0x1

    const-string v3, "RADIAL"

    invoke-direct {v0, v3, v2}, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    const/4 v3, 0x2

    new-array v3, v3, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    .line 3
    sget-object v4, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;->OooO0OO:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

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

.method public static valueOf(Ljava/lang/String;)LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;
    .locals 1

    .line 1
    const-class v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    return-object p0
.end method

.method public static values()[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;->OooO0OO:[LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    invoke-virtual {v0}, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0o;

    return-object v0
.end method
