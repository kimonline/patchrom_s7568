.class Landroid/telephony/PhoneStateListener$1;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 5
    .parameter "cfi"

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v2, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 311
    return-void

    :cond_0
    move v0, v1

    .line 309
    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 320
    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, 0x0

    .line 314
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 315
    .local v0, location:Landroid/telephony/CellLocation;
    iget-object v1, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v1, v1, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 316
    return-void
.end method

.method public onDataActivity(I)V
    .locals 4
    .parameter "direction"

    .prologue
    .line 328
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 323
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40

    invoke-static {v0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    return-void
.end method

.method public onDualSimSlotActivationState(Z)V
    .locals 5
    .parameter "resultInfo"

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v2, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x300

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 342
    return-void

    :cond_0
    move v0, v1

    .line 340
    goto :goto_0
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 5
    .parameter "mwi"

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v2, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    return-void

    :cond_0
    move v0, v1

    .line 304
    goto :goto_0
.end method

.method public onOtaspChanged(I)V
    .locals 3
    .parameter "otaspMode"

    .prologue
    .line 336
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 337
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 4
    .parameter "asu"

    .prologue
    .line 300
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 301
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    const/4 v2, 0x0

    .line 332
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$1;->this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, v0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    return-void
.end method
