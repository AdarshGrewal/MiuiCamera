.class public Lcom/xiaomi/abtest/c/c;
.super Lcom/xiaomi/abtest/c/e;


# static fields
.field public static final n:Ljava/lang/String; = "ExpContainer"


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;ILcom/xiaomi/abtest/EnumType$DiversionType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/xiaomi/abtest/c/e;-><init>(ILjava/lang/String;Lcom/xiaomi/abtest/EnumType$FlowUnitType;ILcom/xiaomi/abtest/EnumType$FlowUnitStatus;ILcom/xiaomi/abtest/EnumType$DiversionType;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/abtest/b/b;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/abtest/b/b;",
            "Ljava/util/List<",
            "Lcom/xiaomi/abtest/c/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/abtest/c/e;->b(Lcom/xiaomi/abtest/b/b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/abtest/c/e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/abtest/c/e;

    invoke-virtual {v2, v0}, Lcom/xiaomi/abtest/c/e;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/xiaomi/abtest/c/e;->a(Lcom/xiaomi/abtest/b/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/abtest/c/e;->a(Lcom/xiaomi/abtest/b/b;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public a(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/xiaomi/abtest/b/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
