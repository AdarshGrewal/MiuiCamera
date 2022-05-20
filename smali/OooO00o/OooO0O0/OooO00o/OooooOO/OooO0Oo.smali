.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOO/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic OooO00o:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOO/OooO0Oo;->OooO00o:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOO/OooO0Oo;->OooO00o:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/camera/statistic/SettingRecord;->OooO0Oo(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
