.class Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;
.super Lcom/android/internal/util/State;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InactiveState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v1, "Enter InactiveState"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1506
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter "message"

    .prologue
    const/4 v10, 0x2

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1510
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1512
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1513
    .local v1, intent:Landroid/content/Intent;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 1645
    :goto_0
    return v2

    .line 1524
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v4, "Enable Wi-Fi Display dialog"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1525
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWifiP2pEnabled:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$100(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1526
    #calls: Lcom/samsung/wfd/WfdService;->startWfdRoutine()V
    invoke-static {}, Lcom/samsung/wfd/WfdService;->access$300()V

    .line 1527
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string/jumbo v4, "p2p already enable! so setWfdParam..."

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1534
    :goto_1
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiP2pTrigger:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WfdService;->access$3302(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1536
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WfdService;->access$202(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1538
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v2, v10}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 1540
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartTrigger:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$400(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdRestartOngoing:Z
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$4000(Lcom/samsung/wfd/WfdService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1541
    :cond_0
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->sendWfdPickerStartBroadCast()V

    :cond_1
    :goto_2
    move v2, v3

    .line 1645
    goto :goto_0

    .line 1529
    :cond_2
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string/jumbo v4, "now p2p enable!"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1531
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->enableWiFiP2P()V
    invoke-static {v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto :goto_1

    .line 1547
    :sswitch_1
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string/jumbo v4, "recv wfd start msg...START_RTSP"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1549
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showNotification()V
    invoke-static {v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4100(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    .line 1555
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1556
    const-string v2, "freq"

    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1557
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putExtra frequency:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mFrequencyWfd:I
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$2000(Lcom/samsung/wfd/WfdService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1559
    :cond_3
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$4200(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1560
    const-string/jumbo v2, "wlan.wfd.status"

    const-string v4, "connected"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v2, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v2, v3}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    goto :goto_2

    .line 1565
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string/jumbo v4, "recv weak network notification"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1566
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showWeakNetworkNotification()V
    invoke-static {v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4300(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto/16 :goto_2

    .line 1570
    :sswitch_3
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string/jumbo v4, "recv bluetooth or earphone on notification"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1571
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->showTerminatedByAudioNotification()V
    invoke-static {v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4400(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V

    goto/16 :goto_2

    .line 1575
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v5, "Disble Wi-Fi Display"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1577
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->WfdStopHDCPSuspend()V
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$4500(Lcom/samsung/wfd/WfdService;)V

    .line 1579
    const-string/jumbo v4, "wlan.wfd.status"

    const-string v5, "disconnected"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWfdEnabledFromPicker:Z
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$202(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1582
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1586
    :try_start_0
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string/jumbo v5, "try to stopService..."

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1587
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mContext:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1589
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$4200(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1597
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1598
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 1599
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;I)V

    .line 1600
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v4, v7}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4600(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    .line 1601
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    :goto_3
    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    goto/16 :goto_2

    .line 1591
    :catch_0
    move-exception v0

    .line 1592
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v5, "catch Exception @ stopService"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1597
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1598
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 1599
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;I)V

    .line 1600
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v4, v7}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4600(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    .line 1601
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    goto :goto_3

    .line 1595
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 1597
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1598
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->setWfdState(I)V
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1100(Lcom/samsung/wfd/WfdService;I)V

    .line 1599
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #calls: Lcom/samsung/wfd/WfdService;->broadcastWfdSessionState(I)V
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1200(Lcom/samsung/wfd/WfdService;I)V

    .line 1600
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v4, v7}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4600(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    .line 1601
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1595
    :cond_4
    throw v3

    .line 1606
    :cond_5
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v2, v10}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4600(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    goto/16 :goto_2

    .line 1612
    :sswitch_5
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string/jumbo v5, "recv wfd stop msg...STOP_RTSP"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1614
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$1400(Lcom/samsung/wfd/WfdService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1616
    :try_start_2
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string/jumbo v5, "try to stopService..!"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1617
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mContext:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v6, v6, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1619
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/wfd/WfdService;->access$3700(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v5, v5, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mWfdSourceConnection:Landroid/content/ServiceConnection;
    invoke-static {v5}, Lcom/samsung/wfd/WfdService;->access$4200(Lcom/samsung/wfd/WfdService;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1624
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    :goto_4
    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    .line 1629
    :cond_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->terminateWfdRoutine(I)V
    invoke-static {v2, v3}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$4600(Lcom/samsung/wfd/WfdService$WfdStateMachine;I)V

    goto/16 :goto_2

    .line 1620
    :catch_1
    move-exception v0

    .line 1621
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v5, "catch Exception @ stopService"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3600(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1624
    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    goto :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v4, v4, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mUseRTSPService:Z
    invoke-static {v4, v2}, Lcom/samsung/wfd/WfdService;->access$1402(Lcom/samsung/wfd/WfdService;Z)Z

    throw v3

    .line 1633
    :sswitch_6
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v4, "Resume RTSP session"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1638
    :sswitch_7
    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$InactiveState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    const-string v4, "Pause RTSP session"

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3400(Lcom/samsung/wfd/WfdService$WfdStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1513
    :sswitch_data_0
    .sparse-switch
        0x22068 -> :sswitch_4
        0x2206b -> :sswitch_1
        0x2206c -> :sswitch_5
        0x2206d -> :sswitch_6
        0x2206e -> :sswitch_7
        0x2206f -> :sswitch_0
        0x2207a -> :sswitch_2
        0x2207c -> :sswitch_3
    .end sparse-switch
.end method
