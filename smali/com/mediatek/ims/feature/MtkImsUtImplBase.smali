.class public Lcom/mediatek/ims/feature/MtkImsUtImplBase;
.super Ljava/lang/Object;
.source "MtkImsUtImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsUt$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/feature/MtkImsUtImplBase$1;-><init>(Lcom/mediatek/ims/feature/MtkImsUtImplBase;)V

    iput-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsUt$Stub;

    return-void
.end method


# virtual methods
.method public explicitCallTransfer(Landroid/os/Message;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "target"    # Landroid/os/Messenger;

    .line 164
    return-void
.end method

.method public getInterface()Lcom/mediatek/ims/internal/IMtkImsUt;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/mediatek/ims/feature/MtkImsUtImplBase;->mServiceImpl:Lcom/mediatek/ims/internal/IMtkImsUt$Stub;

    return-object v0
.end method

.method public getUtIMPUFromNetwork()Ljava/lang/String;
    .locals 1

    .line 185
    const-string v0, ""

    return-object v0
.end method

.method public getUtInterface(I)Lcom/android/ims/internal/IImsUt;
    .locals 1
    .param p1, "PhoneId"    # I

    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXcapConflictErrorMessage()Ljava/lang/String;
    .locals 1

    .line 172
    const-string v0, ""

    return-object v0
.end method

.method public isSupportCFT()Z
    .locals 1

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I

    .line 196
    const/4 v0, -0x1

    return v0
.end method

.method public queryCallForwardInTimeSlot(I)I
    .locals 1
    .param p1, "condition"    # I

    .line 142
    const/4 v0, -0x1

    return v0
.end method

.method public setListener(Lcom/mediatek/ims/feature/MtkImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/ims/feature/MtkImsUtListener;

    .line 179
    return-void
.end method

.method public setupXcapUserAgentString(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 189
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 134
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallBarringForServiceClass(Ljava/lang/String;II[Ljava/lang/String;I)I
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cbType"    # I
    .param p3, "enable"    # I
    .param p4, "barrList"    # [Ljava/lang/String;
    .param p5, "serviceClass"    # I

    .line 156
    const/4 v0, -0x1

    return v0
.end method

.method public updateCallForwardInTimeSlot(IILjava/lang/String;I[J)I
    .locals 1
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I
    .param p5, "timeSlot"    # [J

    .line 150
    const/4 v0, -0x1

    return v0
.end method
