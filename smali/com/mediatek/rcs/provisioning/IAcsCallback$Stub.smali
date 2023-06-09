.class public abstract Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub;
.super Landroid/os/Binder;
.source "IAcsCallback.java"

# interfaces
.implements Lcom/mediatek/rcs/provisioning/IAcsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rcs/provisioning/IAcsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAcsConfigChange:I = 0x1

.field static final TRANSACTION_onAcsConnectionStatusChange:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "com.mediatek.rcs.provisioning.IAcsCallback"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/rcs/provisioning/IAcsCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_0
    const-string v0, "com.mediatek.rcs.provisioning.IAcsCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/rcs/provisioning/IAcsCallback;

    if-eqz v1, :cond_1

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/mediatek/rcs/provisioning/IAcsCallback;

    return-object v1

    .line 53
    :cond_1
    new-instance v1, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/rcs/provisioning/IAcsCallback;
    .locals 1

    .line 185
    sget-object v0, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/rcs/provisioning/IAcsCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/rcs/provisioning/IAcsCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mediatek/rcs/provisioning/IAcsCallback;

    .line 175
    sget-object v0, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/rcs/provisioning/IAcsCallback;

    if-nez v0, :cond_1

    .line 178
    if-eqz p0, :cond_0

    .line 179
    sput-object p0, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/rcs/provisioning/IAcsCallback;

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 57
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-string v0, "com.mediatek.rcs.provisioning.IAcsCallback"

    .line 62
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 70
    packed-switch p1, :pswitch_data_1

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 66
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return v1

    .line 85
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub;->onAcsConnectionStatusChange(I)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v1

    .line 74
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/mediatek/rcs/provisioning/IAcsCallback$Stub;->onAcsConfigChange(II)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
