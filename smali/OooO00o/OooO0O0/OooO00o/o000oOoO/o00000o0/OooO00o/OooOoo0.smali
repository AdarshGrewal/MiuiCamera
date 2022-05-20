.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoo0;->OooO00o:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOoo0;->OooO00o:[I

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-static {v0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooO0O0([ILcom/android/camera/module/Module;)V

    return-void
.end method
