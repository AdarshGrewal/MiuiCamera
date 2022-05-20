.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO;->OooO00o:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO;->OooO00o:Z

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-static {v0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooO0Oo(ZLcom/android/camera/module/Module;)V

    return-void
.end method
