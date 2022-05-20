.class public Lcom/miui/bugreport/logprovider/DumpLogProvider;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field public static final a:Ljava/io/File;

.field public static volatile b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/bugreport/logprovider/DumpLogProvider;->a:Ljava/io/File;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/bugreport/logprovider/DumpLogProvider;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "name"

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "path"

    :try_start_2
    invoke-interface {p1, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "root-path"

    :try_start_3
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    sget-object v4, Lcom/miui/bugreport/logprovider/DumpLogProvider;->a:Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_1
    const-string v6, "files-path"

    :try_start_4
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_2
    const-string v6, "cache-path"

    :try_start_5
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_3
    const-string v6, "external-path"

    :try_start_6
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :cond_4
    const-string v6, "external-files-path"

    :try_start_7
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_7

    aget-object v4, v1, v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :cond_5
    const-string v6, "external-cache-path"

    :try_start_8
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_7

    aget-object v4, v1, v7

    goto :goto_1

    :cond_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/16 v8, 0x15

    if-lt v6, v8, :cond_7

    const-string v6, "external-media-path"

    :try_start_9
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getExternalMediaDirs()[Ljava/io/File;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_7

    aget-object v4, v1, v7

    :cond_7
    :goto_1
    if-eqz v4, :cond_0

    new-array v1, v2, [Ljava/lang/String;

    aput-object v5, v1, v7

    invoke-static {v4, v1}, Lcom/miui/bugreport/logprovider/DumpLogProvider;->a(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/bugreport/logprovider/DumpLogProvider;->a(Ljava/lang/String;Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    sget-object v0, Lcom/miui/bugreport/logprovider/DumpLogProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.miui.bugreport"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    move v1, v0

    :catch_0
    :cond_0
    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/bugreport/logprovider/DumpLogProvider;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/bugreport/logprovider/DumpLogProvider;->c:Z

    sget-object v0, Lcom/miui/bugreport/logprovider/DumpLogProvider;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.bugreport.DEFAULT_LOG_DIR"

    invoke-static {v1, v2}, Lcom/miui/bugreport/logprovider/DumpLogProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    sget-object v0, Lcom/miui/bugreport/logprovider/DumpLogProvider;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miui.bugreport.LOG_DIR"

    invoke-static {v1, v2}, Lcom/miui/bugreport/logprovider/DumpLogProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3

    sget-boolean p2, Lcom/miui/bugreport/logprovider/DumpLogProvider;->c:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/miui/bugreport/logprovider/DumpLogProvider;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 p1, 0x10000000

    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-object v0

    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    sget-boolean p1, Lcom/miui/bugreport/logprovider/DumpLogProvider;->c:Z

    if-eqz p1, :cond_8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sget-object p3, Lcom/miui/bugreport/logprovider/DumpLogProvider;->b:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p4

    if-nez p4, :cond_4

    goto :goto_0

    :cond_4
    array-length v0, p4

    move v1, p5

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p4, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    new-instance p1, Landroid/database/MatrixCursor;

    new-array p3, p5, [Ljava/lang/String;

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "logDir"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p3}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    return-object p1

    :cond_8
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
