.class Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;
.super Lcom/android/internal/util/State;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
    .param p2, "x1"    # Lcom/mediatek/ims/internal/DataDispatcher$1;

    .line 404
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;-><init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "DefaultState: enter"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public exit()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const-string v1, "DefaultState: exit"

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 417
    const/4 v0, 0x1

    .line 418
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultState msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 419
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, ""

    sparse-switch v1, :sswitch_data_0

    .line 427
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultState not handled request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1000(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v3, v1, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1300(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V

    .line 425
    goto :goto_0

    .line 421
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$DefaultState;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v3, v1, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/DataDispatcher;->access$1100(Lcom/mediatek/ims/internal/DataDispatcher;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$1200(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;I)V

    .line 422
    nop

    .line 431
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0xdbba8 -> :sswitch_1
        0xdbbab -> :sswitch_0
    .end sparse-switch
.end method
