.class public Lcom/android/camera/data/data/ComponentDataItem;
.super Ljava/lang/Object;
.source "ComponentDataItem.java"


# static fields
.field public static final RES_NULL:I = -0x1

.field public static final STRING_NULL:I = -0x1

.field public static final VALUE_NULL:Ljava/lang/String; = "null"


# instance fields
.field public mContentDescriptionRes:I

.field public mDisplayNameRes:I

.field public mDisplayNameStr:Ljava/lang/String;

.field public mIconDisabledRes:I

.field public mIconLabelRes:I

.field public mIconRes:I

.field public mIconSelectedRes:I

.field public mIconShadowLabelRes:I

.field public mIconShadowRes:I

.field public mIsDisabled:Z

.field public mIsShowText:Z

.field public mNewIconRes:I

.field public mSelectColor:I

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIIILjava/lang/String;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 64
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 65
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 66
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 67
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 68
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 69
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconDisabledRes:I

    .line 70
    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 71
    iput p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 72
    iput p6, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 73
    iput p7, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 74
    iput-object p8, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 77
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 78
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 79
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 80
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 81
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 82
    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 83
    iput p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mContentDescriptionRes:I

    .line 84
    iput-object p6, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 3
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 4
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 5
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 6
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 7
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 8
    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 9
    iput-object p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;ZI)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 36
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 37
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 38
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 39
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 40
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 41
    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mContentDescriptionRes:I

    .line 42
    iput-object p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 43
    iput-boolean p6, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIsShowText:Z

    .line 44
    iput p7, p0, Lcom/android/camera/data/data/ComponentDataItem;->mSelectColor:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 12
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 13
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 14
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 15
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 16
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 17
    iput-object p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 56
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 57
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 58
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 59
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 60
    iput-object p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIZILjava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 47
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 48
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 49
    iput p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 50
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconSelectedRes:I

    .line 51
    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    .line 52
    iput-boolean p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    .line 53
    iput-object p5, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 20
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 21
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 22
    iput-object p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 24
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mNewIconRes:I

    .line 25
    iput p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 27
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowRes:I

    .line 28
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconLabelRes:I

    .line 29
    iput v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconShadowLabelRes:I

    .line 30
    iput-object p1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    .line 32
    iput p3, p0, Lcom/android/camera/data/data/ComponentDataItem;->mNewIconRes:I

    .line 33
    iput-object p4, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    .line 3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComponentDataItem{mDisplayName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "mValue=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
