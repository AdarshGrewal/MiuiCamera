.class public LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0OO<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;

    invoke-direct {v0}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;-><init>()V

    sput-object v0, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOOOo;->OooO0Oo(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Landroid/graphics/PointF;

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
    invoke-virtual {p0, p1, p2}, LOooO00o/OooO00o/OooO00o/OooOoO0/OooOoO0;->OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0OO;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
