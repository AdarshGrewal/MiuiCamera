.class public abstract Lcom/google/android/play/core/splitinstall/protocol/SplitInstallServiceCallback;
.super Lcom/google/android/binder/BinderWrapper;
.source "SplitInstallServiceCallback.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.iqiyi.android.qigsaw.core.splitinstall.protocol.ISplitInstallServiceCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/binder/BinderWrapper;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dispatchTransact(ILandroid/os/Parcel;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onGetSessionStates(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 6
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onDeferredInstall(Landroid/os/Bundle;)V

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 8
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onDeferredUninstall(Landroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 10
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 11
    invoke-interface {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onGetSession(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 12
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 14
    invoke-interface {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onCancelInstall(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 15
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 16
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 17
    invoke-interface {p0, p1}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onCompleteInstall(I)V

    goto :goto_0

    .line 18
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 19
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/binder/ParcelHelper;->createFromParcel(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 20
    invoke-interface {p0, p1, p2}, Lcom/google/android/play/core/splitinstall/protocol/ISplitInstallServiceCallbackProxy;->onStartInstall(ILandroid/os/Bundle;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
