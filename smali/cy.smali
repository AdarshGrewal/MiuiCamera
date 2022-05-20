.class public abstract Lcy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcy;->a:Ljava/util/logging/Logger;

    const-string v0, "bz"

    sput-object v0, Lcy;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o(Ljava/lang/Class;)Lcs;
    .locals 11

    const-class v0, Lcy;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcs;

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "%s.BlazeGenerated%sLoader"

    .line 7
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    sget-object v2, Lcy;->b:Ljava/lang/String;

    .line 11
    :goto_0
    :try_start_0
    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    .line 12
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcy;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 13
    :try_start_2
    invoke-virtual {v2}, Lcy;->OooO00o()Lcs;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcs;

    return-object v2

    :catch_0
    move-exception v2

    .line 14
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 15
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v2

    .line 16
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 17
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_2
    move-exception v2

    .line 18
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 19
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v2

    .line 20
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 21
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 22
    :catch_4
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcy;

    invoke-virtual {v2}, Lcy;->OooO00o()Lcs;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/ServiceConfigurationError; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    :catch_5
    move-exception v2

    move-object v10, v2

    .line 27
    sget-object v5, Lcy;->a:Ljava/util/logging/Logger;

    .line 28
    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Unable to load "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v9, v2

    const-string v7, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    const-string v8, "load"

    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 30
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcs;

    return-object p0

    .line 31
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    :try_start_4
    new-array v0, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Collection;

    aput-object v5, v0, v4

    const-string v5, "combine"

    .line 32
    invoke-virtual {p0, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v4

    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcs;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_7
    move-exception p0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_8
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    return-object v2
.end method


# virtual methods
.method public abstract OooO00o()Lcs;
.end method
