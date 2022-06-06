.class public LOooO0O0/OooO00o/OooO00o/OooOo00;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field public final OooO00o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

.field public final OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

.field public OooO0Oo:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0Oo:Z

    const/4 v0, 0x0

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    return-void
.end method

.method public constructor <init>(LOooO0O0/OooO00o/OooO00o/OooO0oo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0Oo:Z

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    const/4 p1, 0x0

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0Oo:Z

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    return-void
.end method

.method private OooO0O0()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0O0:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0OO:LOooO0O0/OooO00o/OooO00o/OooO0oo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LOooO0O0/OooO00o/OooO00o/OooO0oo;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method private OooO0OO(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0Oo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0OO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0Oo:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public OooO00o()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0O0()V

    return-void
.end method

.method public OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0O0()V

    return-void
.end method

.method public OooO00o(Z)V
    .locals 0

    iput-boolean p1, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0Oo:Z

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, LOooO0O0/OooO00o/OooO00o/OooOo00;->OooO0O0()V

    return-void
.end method
