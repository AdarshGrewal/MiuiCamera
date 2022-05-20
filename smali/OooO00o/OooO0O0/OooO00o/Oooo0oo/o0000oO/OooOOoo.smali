.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOoo;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOoo;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->OooO00o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Integer;)V

    return-void
.end method
