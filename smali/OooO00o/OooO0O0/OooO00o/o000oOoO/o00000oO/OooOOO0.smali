.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOO0;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000oO/OooOOO0;->OooO00o:I

    check-cast p1, Landroid/util/Range;

    invoke-static {v0, p1}, Lcom/android/camera/module/video/FilmSlowShutterModule;->OooO00o(ILandroid/util/Range;)Z

    move-result p1

    return p1
.end method
