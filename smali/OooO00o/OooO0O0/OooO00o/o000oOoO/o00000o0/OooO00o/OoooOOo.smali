.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field private final synthetic OooO00o:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOOo;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/o00000o0/OooO00o/OoooOOo;->OooO00o:Ljava/util/List;

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {v0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->OooO00o(Ljava/util/List;Lcom/android/camera/data/data/ComponentDataItem;)Z

    move-result p1

    return p1
.end method
