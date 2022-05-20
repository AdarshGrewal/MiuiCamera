.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/BaseModule;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I

.field private final synthetic OooO0Oo:[B

.field private final synthetic OooO0o0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/BaseModule;II[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO00o:Lcom/android/camera/module/BaseModule;

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO0O0:I

    iput p3, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO0OO:I

    iput-object p4, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO0Oo:[B

    iput p5, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO00o:Lcom/android/camera/module/BaseModule;

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO0O0:I

    iget v2, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO0OO:I

    iget-object v3, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO0Oo:[B

    iget v4, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OooO0Oo;->OooO0o0:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/module/BaseModule;->OooO00o(II[BI)V

    return-void
.end method
