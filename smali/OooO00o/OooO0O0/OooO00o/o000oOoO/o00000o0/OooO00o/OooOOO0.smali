.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

.field private final synthetic OooO0O0:Ljava/lang/String;

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;->OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;->OooO0O0:Ljava/lang/String;

    iput p3, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;->OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;->OooO0O0:Ljava/lang/String;

    iget v2, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OooOOO0;->OooO0OO:I

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooO00o(Ljava/lang/String;ILcom/android/camera/module/Module;)V

    return-void
.end method
