.class public final Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V14;
.super Ljava/lang/Object;
.source "SplitCompatDexLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "V14"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V14;->load(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "pathList"

    .line 1
    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0, p2}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatDexLoader$V14;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "dexElements"

    invoke-static {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/io/File;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "makeDexElements"

    .line 2
    invoke-static {p0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    .line 3
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method
