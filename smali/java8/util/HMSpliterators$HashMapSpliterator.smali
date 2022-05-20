.class public abstract Ljava8/util/HMSpliterators$HashMapSpliterator;
.super Ljava/lang/Object;
.source "HMSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/HMSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HashMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MODCOUNT_OFF:J

.field public static final NODE_KEY_OFF:J

.field public static final NODE_NXT_OFF:J

.field public static final NODE_VAL_OFF:J

.field public static final TABLE_OFF:J

.field public static final U:Lsun/misc/Unsafe;


# instance fields
.field public current:Ljava/lang/Object;

.field public est:I

.field public expectedModCount:I

.field public fence:I

.field public index:I

.field public final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    .line 2
    :try_start_0
    const-class v1, Ljava/util/HashMap;

    const-string/jumbo v2, "table"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->TABLE_OFF:J

    .line 5
    sget-object v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/HashMap;

    const-string v2, "modCount"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->MODCOUNT_OFF:J

    .line 8
    invoke-static {}, Ljava8/util/HMSpliterators$HashMapSpliterator;->nodeClass()Ljava/lang/Class;

    move-result-object v0

    .line 9
    sget-object v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    const-string v2, "key"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->NODE_KEY_OFF:J

    .line 12
    sget-object v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    const-string/jumbo v2, "value"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->NODE_VAL_OFF:J

    .line 15
    sget-object v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    const-string v2, "next"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->NODE_NXT_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/util/HashMap;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->map:Ljava/util/HashMap;

    .line 3
    iput p2, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->index:I

    .line 4
    iput p3, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->fence:I

    .line 5
    iput p4, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->est:I

    .line 6
    iput p5, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->expectedModCount:I

    return-void
.end method

.method public static getModCount(Ljava/util/HashMap;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "**>;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static getNextNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->NODE_NXT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getNodeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->NODE_KEY_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getNodeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->NODE_VAL_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTable(Ljava/util/HashMap;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "**>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava8/util/HMSpliterators$HashMapSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators$HashMapSpliterator;->TABLE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public static nodeClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "java.util.HashMap$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Ljava8/util/Spliterators;->IS_ANDROID:Z

    if-nez v1, :cond_1

    sget-boolean v1, Ljava8/util/Spliterators;->HAS_STREAMS:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Entry"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "Node"

    .line 2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    sget-boolean v1, Ljava8/util/Spliterators;->IS_ANDROID:Z

    if-eqz v1, :cond_2

    const-string v0, "java.util.HashMap$HashMapEntry"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 7
    :cond_2
    throw v0
.end method


# virtual methods
.method public abstract characteristics()I
.end method

.method public final estimateSize()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava8/util/HMSpliterators$HashMapSpliterator;->getFence()I

    .line 2
    iget v0, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->est:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getExactSizeIfKnown()J
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Ljava8/util/Spliterator;

    invoke-static {v0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFence()I
    .locals 2

    .line 1
    iget v0, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->fence:I

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->map:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    iput v1, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->est:I

    .line 4
    invoke-static {v0}, Ljava8/util/HMSpliterators$HashMapSpliterator;->getModCount(Ljava/util/HashMap;)I

    move-result v1

    iput v1, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->expectedModCount:I

    .line 5
    invoke-static {v0}, Ljava8/util/HMSpliterators$HashMapSpliterator;->getTable(Ljava/util/HashMap;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    array-length v0, v0

    :goto_0
    iput v0, p0, Ljava8/util/HMSpliterators$HashMapSpliterator;->fence:I

    :cond_1
    return v0
.end method

.method public final hasCharacteristics(I)Z
    .locals 1

    .line 1
    move-object v0, p0

    check-cast v0, Ljava8/util/Spliterator;

    invoke-static {v0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method
