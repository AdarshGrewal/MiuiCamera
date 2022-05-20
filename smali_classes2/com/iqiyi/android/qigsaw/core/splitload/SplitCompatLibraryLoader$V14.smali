.class public final Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V14;
.super Ljava/lang/Object;
.source "SplitCompatLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader;
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

.method public static synthetic access$200(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatLibraryLoader$V14;->load(Ljava/lang/ClassLoader;Ljava/io/File;)V

    return-void
.end method

.method public static load(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "pathList"

    .line 1
    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "nativeLibraryDirectories"

    .line 3
    invoke-static {p0, v0}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 8
    invoke-virtual {p1, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 9
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/io/File;

    .line 10
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
