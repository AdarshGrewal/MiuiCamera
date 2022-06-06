.class public final enum LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;
.super Ljava/lang/Enum;
.source "ShapeTrimPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

.field public static final enum OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

.field public static final synthetic OooO0OO:[LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    const/4 v1, 0x0

    const-string v2, "SIMULTANEOUSLY"

    invoke-direct {v0, v2, v1}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    new-instance v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    const/4 v2, 0x1

    const-string v3, "INDIVIDUALLY"

    invoke-direct {v0, v3, v2}, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;-><init>(Ljava/lang/String;I)V

    sput-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    const/4 v3, 0x2

    new-array v3, v3, [LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    sget-object v4, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO0OO:[LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static OooO00o(I)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO0O0:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown trim path type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO00o:LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;
    .locals 1

    const-class v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    return-object p0
.end method

.method public static values()[LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;
    .locals 1

    sget-object v0, LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->OooO0OO:[LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    invoke-virtual {v0}, [LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO0O0/OooO00o/OooO00o/OooOo0o/OooOO0O/OooOOo0$OooO00o;

    return-object v0
.end method
