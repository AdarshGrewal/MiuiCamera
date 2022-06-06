.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/data/observeable/VMResource;

.field private final synthetic OooO0O0:Lio/reactivex/ObservableEmitter;

.field private final synthetic OooO0OO:Z

.field private final synthetic OooO0Oo:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/observeable/VMResource;Lio/reactivex/ObservableEmitter;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;->OooO00o:Lcom/android/camera/data/observeable/VMResource;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;->OooO0O0:Lio/reactivex/ObservableEmitter;

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;->OooO0OO:Z

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;->OooO0Oo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;->OooO00o:Lcom/android/camera/data/observeable/VMResource;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;->OooO0O0:Lio/reactivex/ObservableEmitter;

    iget-boolean v2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;->OooO0OO:Z

    iget-object v3, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO0O0/OooO0Oo;->OooO0Oo:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/resource/BaseResourceItem;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/camera/data/observeable/VMResource;->OooO00o(Lio/reactivex/ObservableEmitter;ZLjava/lang/String;Lcom/android/camera/resource/BaseResourceItem;)V

    return-void
.end method
