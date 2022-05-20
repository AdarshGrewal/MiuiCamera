.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0o;->OooO00o:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO0OO/OooOO0o;->OooO00o:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {v0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->OooO00o(Ljava/util/ArrayList;Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method
