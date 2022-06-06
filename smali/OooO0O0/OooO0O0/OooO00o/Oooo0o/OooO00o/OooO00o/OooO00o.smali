.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO00o/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;

.field private final synthetic OooO0O0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO00o/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO00o/OooO00o/OooO00o;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO00o/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0o/OooO00o/OooO00o/OooO00o;->OooO0O0:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->OooO00o(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
