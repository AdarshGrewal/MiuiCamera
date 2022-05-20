.class public Lmiuix/internal/log/format/SimpleFormatter$1;
.super Ljava/lang/ThreadLocal;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/log/format/SimpleFormatter;


# direct methods
.method public constructor <init>(Lmiuix/internal/log/format/SimpleFormatter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/log/format/SimpleFormatter$1;->this$0:Lmiuix/internal/log/format/SimpleFormatter;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/log/format/SimpleFormatter$1;->initialValue()Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;
    .locals 1

    .line 2
    new-instance v0, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;

    invoke-direct {v0}, Lmiuix/internal/log/format/SimpleFormatter$ThreadCache;-><init>()V

    return-object v0
.end method
