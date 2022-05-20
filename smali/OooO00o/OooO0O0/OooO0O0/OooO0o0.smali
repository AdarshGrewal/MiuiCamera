.class public final synthetic LOooO00o/OooO0O0/OooO0O0/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic OooO00o:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0;->OooO00o:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO0O0/OooO0o0;->OooO00o:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/android/camera2/MiCamera2;->OooO00o(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
