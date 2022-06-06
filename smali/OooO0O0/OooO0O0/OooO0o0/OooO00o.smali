.class public final synthetic LOooO0O0/OooO0O0/OooO0o0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/ref/WeakReference;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcom/android/zxing/DocumentDecoder;->OooO00o(Ljava/lang/ref/WeakReference;Landroid/util/Pair;)V

    return-void
.end method
