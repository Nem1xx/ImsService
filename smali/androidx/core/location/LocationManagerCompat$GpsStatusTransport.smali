.class Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;
.super Ljava/lang/Object;
.source "LocationManagerCompat.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsStatusTransport"
.end annotation


# instance fields
.field final mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

.field volatile mExecutor:Ljava/util/concurrent/Executor;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .locals 2
    .param p1, "locationManager"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroidx/core/location/GnssStatusCompat$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "locationManager",
            "callback"
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 547
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    .line 548
    iput-object p2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mCallback:Landroidx/core/location/GnssStatusCompat$Callback;

    .line 549
    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 564
    .local v0, "executor":Ljava/util/concurrent/Executor;
    if-nez v0, :cond_0

    .line 565
    return-void

    .line 570
    :cond_0
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 609
    :pswitch_0
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    .line 610
    .local v1, "gpsStatus":Landroid/location/GpsStatus;
    if-eqz v1, :cond_1

    .line 611
    invoke-static {v1}, Landroidx/core/location/GnssStatusCompat;->wrap(Landroid/location/GpsStatus;)Landroidx/core/location/GnssStatusCompat;

    move-result-object v2

    .line 612
    .local v2, "gnssStatus":Landroidx/core/location/GnssStatusCompat;
    new-instance v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;

    invoke-direct {v3, p0, v0, v2}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$4;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 594
    .end local v1    # "gpsStatus":Landroid/location/GpsStatus;
    .end local v2    # "gnssStatus":Landroidx/core/location/GnssStatusCompat;
    :pswitch_1
    iget-object v2, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v1

    .line 595
    .restart local v1    # "gpsStatus":Landroid/location/GpsStatus;
    if-eqz v1, :cond_1

    .line 596
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v2

    .line 597
    .local v2, "ttff":I
    new-instance v3, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$3;

    invoke-direct {v3, p0, v0, v2}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$3;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 606
    .end local v2    # "ttff":I
    goto :goto_0

    .line 583
    .end local v1    # "gpsStatus":Landroid/location/GpsStatus;
    :pswitch_2
    new-instance v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$2;

    invoke-direct {v1, p0, v0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$2;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 592
    goto :goto_0

    .line 572
    :pswitch_3
    new-instance v1, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;

    invoke-direct {v1, p0, v0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport$1;-><init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 581
    nop

    .line 624
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public register(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 553
    iput-object p1, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 554
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 557
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 558
    return-void
.end method
