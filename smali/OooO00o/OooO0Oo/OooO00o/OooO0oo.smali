.class public LOooO00o/OooO0Oo/OooO00o/OooO0oo;
.super Ljava/lang/Object;
.source "MiDeviceCompat.java"

# interfaces
.implements LOooO00o/OooO0Oo/OooO00o/OooO0o0;


# static fields
.field public static final OooO0O0:LOooO00o/OooO0Oo/OooO00o/OooO0oo;


# instance fields
.field public OooO00o:LOooO00o/OooO0Oo/OooO00o/OooO0o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;

    invoke-direct {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0oo;-><init>()V

    sput-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO0Oo/OooO00o/OooO0oo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.mi.device.Device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO00o:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO00o(Ljava/lang/String;)LOooO00o/OooO0Oo/OooO00o/OooO0o0;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO00o:LOooO00o/OooO0Oo/OooO00o/OooO0o0;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, LOooO00o/OooO0Oo/OooO00o/OooO0Oo;

    invoke-direct {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0Oo;-><init>()V

    iput-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO00o:LOooO00o/OooO0Oo/OooO00o/OooO0o0;

    :cond_0
    return-void
.end method

.method public static OooO00o(Ljava/lang/String;)LOooO00o/OooO0Oo/OooO00o/OooO0o0;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO00o/OooO0Oo/OooO00o/OooO0o0;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static OooO00o(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :try_start_0
    new-instance v1, Ldalvik/system/DexFile;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private OooO0O0(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-char v2, v0, v1

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    aget-char v2, v0, v1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_0

    .line 3
    aget-char p1, v0, v1

    add-int/lit8 p1, p1, -0x20

    int-to-char p1, p1

    aput-char p1, v0, v1

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static OooO0o0()LOooO00o/OooO0Oo/OooO00o/OooO0oo;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO0O0:LOooO00o/OooO0Oo/OooO00o/OooO0oo;

    return-object v0
.end method


# virtual methods
.method public OooO00o()Z
    .locals 1

    .line 14
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO00o:LOooO00o/OooO0Oo/OooO00o/OooO0o0;

    invoke-interface {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0o0;->OooO00o()Z

    move-result v0

    return v0
.end method

.method public OooO0O0()Z
    .locals 1

    .line 5
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO00o:LOooO00o/OooO0Oo/OooO00o/OooO0o0;

    invoke-interface {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0o0;->OooO0O0()Z

    move-result v0

    return v0
.end method

.method public OooO0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO00o:LOooO00o/OooO0Oo/OooO00o/OooO0o0;

    invoke-interface {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0o0;->OooO0OO()Z

    move-result v0

    return v0
.end method

.method public OooO0Oo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO0oo;->OooO00o:LOooO00o/OooO0Oo/OooO00o/OooO0o0;

    invoke-interface {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0o0;->OooO0Oo()I

    move-result v0

    return v0
.end method
