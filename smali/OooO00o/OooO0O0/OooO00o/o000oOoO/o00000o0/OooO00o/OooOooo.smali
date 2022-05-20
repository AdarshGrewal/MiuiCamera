.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOooo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOooo;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOooo;->OooO00o:I

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-static {v0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooO00o(ILcom/android/camera/module/Module;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
