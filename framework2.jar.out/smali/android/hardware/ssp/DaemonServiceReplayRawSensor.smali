.class Landroid/hardware/ssp/DaemonServiceReplayRawSensor;
.super Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;
.source "DaemonServiceReplayRawSensor.java"

# interfaces
.implements Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;-><init>()V

    return-void
.end method


# virtual methods
.method public startService()Z
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;->startService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    .line 34
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/ssp/DaemonObserverProvider;->addRawSensorContextObserverForReplay(Landroid/hardware/ssp/IDaemonListenerReplayRawSensor;)V

    .line 37
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerReplay;->getInstance()Landroid/hardware/ssp/DaemonManagerReplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerReplay;->startReplay()V

    .line 39
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stopService()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;->stopService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerReplay;->getInstance()Landroid/hardware/ssp/DaemonManagerReplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerReplay;->stopReplay()V

    .line 55
    invoke-static {}, Landroid/hardware/ssp/DaemonManagerObserver;->getInstance()Landroid/hardware/ssp/DaemonManagerObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonManagerObserver;->getProviderObserver()Landroid/hardware/ssp/DaemonObserverProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonObserverProvider;->removeRawSensorContextObserverForReplay()V

    .line 58
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/hardware/ssp/DaemonServiceHandlerRawSensor;->updateRawSensorContext(Landroid/hardware/ssp/DaemonContexts$SSPRawSensor;)V

    .line 71
    return-void
.end method
