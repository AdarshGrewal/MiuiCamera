.class public final Lcom/xiaomi/compat/common/MemoryFileCompat;
.super Ljava/lang/Object;
.source "MemoryFileCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileDescritor(Landroid/os/MemoryFile;)Ljava/io/FileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0
.end method
