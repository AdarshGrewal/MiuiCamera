.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO0o0;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o0000Ooo/OooO0OO/OooO0o0;->OooO00o:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-static {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->OooO00o(Ljava/lang/String;Lcom/android/camera/module/loader/camera2/Camera2Result;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
