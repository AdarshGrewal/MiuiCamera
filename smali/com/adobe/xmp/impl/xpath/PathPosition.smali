.class public Lcom/adobe/xmp/impl/xpath/PathPosition;
.super Ljava/lang/Object;
.source "XMPPathParser.java"


# instance fields
.field public nameEnd:I

.field public nameStart:I

.field public path:Ljava/lang/String;

.field public stepBegin:I

.field public stepEnd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    .line 4
    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    .line 5
    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    .line 6
    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    return-void
.end method
