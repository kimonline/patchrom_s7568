.class Lcom/android/server/WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;,
        Lcom/android/server/WiredAccessoryObserver$UsbAudioData;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BIT_HDMI_AUDIO:I = 0x10

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_USB_HEADSET_ANLG:I = 0x4

.field private static final BIT_USB_HEADSET_DGTL:I = 0x8

.field private static final HEADSETS_WITH_MIC:I = 0x1

.field private static final LOG:Z = true

.field private static final MAX_AUDIO_PORTS:I = 0x3

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final SUPPORTED_HEADSETS:I = 0x1f

.field private static final TAG:Ljava/lang/String; = null

.field private static final USB_AUDIO_DEVICE_UEVENT:Ljava/lang/String; = "MAJOR=116"

.field private static final USB_AUDIO_DEVICE_UEVENT_NUM:Ljava/lang/String; = "116"

.field private static final uEventInfo:[[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandler_hdmi:Landroid/os/Handler;

.field private final mHandler_usbAudio:Landroid/os/Handler;

.field private final mHandler_usbInfo:Landroid/os/Handler;

.field private mHeadsetName:Ljava/lang/String;

.field private mHeadsetState:I

.field private mPrevHeadsetState:I

.field private mSmartDockConnected:Ljava/lang/String;

.field private final mUEventUsbAudioObserver:Landroid/os/UEventObserver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private switchState:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    const-class v0, Lcom/android/server/WiredAccessoryObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    .line 51
    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DEVPATH=/devices/virtual/switch/h2w"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/h2w/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/h2w/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DEVPATH=/devices/virtual/switch/usb_audio"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/usb_audio/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/usb_audio/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "DEVPATH=/devices/virtual/switch/ch_hdmi_audio"

    aput-object v2, v1, v3

    const-string v2, "/sys/class/switch/ch_hdmi_audio/state"

    aput-object v2, v1, v4

    const-string v2, "/sys/class/switch/ch_hdmi_audio/name"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 93
    iput-object v4, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    .line 148
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    .line 648
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$2;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    .line 655
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$3;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$3;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_hdmi:Landroid/os/Handler;

    .line 662
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$4;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$4;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    .line 670
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$5;

    invoke-direct {v1, p0}, Lcom/android/server/WiredAccessoryObserver$5;-><init>(Lcom/android/server/WiredAccessoryObserver;)V

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbInfo:Landroid/os/Handler;

    .line 121
    iput-object p1, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    .line 122
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 123
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "WiredAccessoryObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 124
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 125
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    new-instance v1, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/WiredAccessoryObserver$BootCompletedReceiver;-><init>(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    const-string v2, "MAJOR=116"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/WiredAccessoryObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryObserver;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryObserver;->sendUSBAudioIntent(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryObserver;->sendUSBInfoIntent(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method static synthetic access$200()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WiredAccessoryObserver;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryObserver;->getChannel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/WiredAccessoryObserver;Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WiredAccessoryObserver;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/WiredAccessoryObserver;->sendHDMIIntent(II)V

    return-void
.end method

.method private getChannel(Ljava/lang/String;)I
    .locals 20
    .parameter "cardNumber"

    .prologue
    .line 200
    const/4 v4, 0x0

    .line 201
    .local v4, f:Ljava/io/File;
    const/4 v8, 0x0

    .line 202
    .local v8, in:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 203
    .local v2, Channels:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/proc/asound/card"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/stream0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 207
    .local v15, streamPath:Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v4           #f:Ljava/io/File;
    .local v5, f:Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 210
    sget-object v17, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "the "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is not exist"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 211
    const/16 v17, 0x0

    .line 249
    if-eqz v5, :cond_c

    const/4 v4, 0x0

    .line 250
    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    :goto_0
    if-eqz v8, :cond_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 255
    :cond_0
    :goto_1
    return v17

    .line 213
    .end local v4           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    :cond_1
    :try_start_3
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 215
    .end local v8           #in:Ljava/io/BufferedReader;
    .local v9, in:Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, str:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 217
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-direct {v12, v14, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .local v12, st:Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 221
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, flag:Ljava/lang/String;
    const-string v17, "Format"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 224
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 225
    .local v11, pcmFormat:Ljava/lang/String;
    const-string v17, "S16_LE"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 226
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 227
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-direct {v13, v14, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .local v13, stChannel:Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, flagChannel:Ljava/lang/String;
    const-string v17, "Channels"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 230
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 231
    .local v16, supportingChannel:Ljava/lang/String;
    const-string v17, "2"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 232
    or-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 233
    :cond_3
    const-string v17, "6"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 234
    or-int/lit8 v2, v2, 0x20

    goto :goto_2

    .line 238
    .end local v7           #flagChannel:Ljava/lang/String;
    .end local v11           #pcmFormat:Ljava/lang/String;
    .end local v13           #stChannel:Ljava/util/StringTokenizer;
    .end local v16           #supportingChannel:Ljava/lang/String;
    :cond_4
    const-string v17, "Capture"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-result v17

    if-eqz v17, :cond_2

    .line 249
    .end local v6           #flag:Ljava/lang/String;
    .end local v12           #st:Ljava/util/StringTokenizer;
    :cond_5
    if-eqz v5, :cond_b

    const/4 v4, 0x0

    .line 250
    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    :goto_3
    if-eqz v9, :cond_6

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_6
    :goto_4
    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .end local v14           #str:Ljava/lang/String;
    .restart local v8       #in:Ljava/io/BufferedReader;
    :cond_7
    :goto_5
    move/from16 v17, v2

    .line 255
    goto/16 :goto_1

    .line 244
    :catch_0
    move-exception v10

    .line 246
    .local v10, io:Ljava/io/IOException;
    :goto_6
    :try_start_6
    sget-object v17, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot create file : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 249
    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 250
    :cond_8
    if-eqz v8, :cond_7

    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 251
    :catch_1
    move-exception v3

    .line 252
    .local v3, ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 248
    .end local v3           #ex:Ljava/io/IOException;
    .end local v10           #io:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 249
    :goto_7
    if-eqz v4, :cond_9

    const/4 v4, 0x0

    .line 250
    :cond_9
    if-eqz v8, :cond_a

    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 248
    :cond_a
    :goto_8
    throw v17

    .line 251
    :catch_2
    move-exception v3

    .line 252
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 251
    .end local v3           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 252
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 251
    .end local v3           #ex:Ljava/io/IOException;
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/BufferedReader;
    .restart local v14       #str:Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 252
    .restart local v3       #ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 248
    .end local v3           #ex:Ljava/io/IOException;
    .end local v4           #f:Ljava/io/File;
    .end local v9           #in:Ljava/io/BufferedReader;
    .end local v14           #str:Ljava/lang/String;
    .restart local v5       #f:Ljava/io/File;
    .restart local v8       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v17

    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_7

    .end local v4           #f:Ljava/io/File;
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v5       #f:Ljava/io/File;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_7

    .line 244
    .end local v4           #f:Ljava/io/File;
    .restart local v5       #f:Ljava/io/File;
    :catch_5
    move-exception v10

    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_6

    .end local v4           #f:Ljava/io/File;
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v5       #f:Ljava/io/File;
    .restart local v9       #in:Ljava/io/BufferedReader;
    :catch_6
    move-exception v10

    move-object v8, v9

    .end local v9           #in:Ljava/io/BufferedReader;
    .restart local v8       #in:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_6

    .end local v4           #f:Ljava/io/File;
    .end local v8           #in:Ljava/io/BufferedReader;
    .restart local v5       #f:Ljava/io/File;
    .restart local v9       #in:Ljava/io/BufferedReader;
    .restart local v14       #str:Ljava/lang/String;
    :cond_b
    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto :goto_3

    .end local v4           #f:Ljava/io/File;
    .end local v9           #in:Ljava/io/BufferedReader;
    .end local v14           #str:Ljava/lang/String;
    .restart local v5       #f:Ljava/io/File;
    .restart local v8       #in:Ljava/io/BufferedReader;
    :cond_c
    move-object v4, v5

    .end local v5           #f:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    goto/16 :goto_0
.end method

.method private static getFactoryMode()Z
    .locals 5

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 552
    .local v1, userMode:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    const/4 v2, 0x0

    .line 561
    :goto_1
    return v2

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, e1:Ljava/io/IOException;
    const-string v1, "OFF"

    .line 555
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    .end local v0           #e1:Ljava/io/IOException;
    :cond_0
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private final declared-synchronized init()V
    .locals 9

    .prologue
    .line 296
    monitor-enter p0

    const/16 v7, 0x400

    :try_start_0
    new-array v0, v7, [C

    .line 298
    .local v0, buffer:[C
    iget-object v5, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    .line 299
    .local v5, newName:Ljava/lang/String;
    iget v6, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    .line 300
    .local v6, newState:I
    iget v7, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    iput v7, p0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 302
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "WirdAccessoryObserver::init()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v7, 0x3

    if-ge v3, v7, :cond_1

    .line 306
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    aget-object v7, v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 307
    .local v2, file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 308
    .local v4, len:I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 309
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 311
    new-instance v2, Ljava/io/FileReader;

    .end local v2           #file:Ljava/io/FileReader;
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->uEventInfo:[[Ljava/lang/String;

    aget-object v7, v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 313
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 314
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 316
    if-lez v6, :cond_0

    .line 317
    invoke-direct {p0, v5, v6}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    .end local v2           #file:Ljava/io/FileReader;
    .end local v4           #len:I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, "This kernel does not have wired headset support"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 296
    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #i:I
    .end local v5           #newName:Ljava/lang/String;
    .end local v6           #newState:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 322
    .restart local v0       #buffer:[C
    .restart local v3       #i:I
    .restart local v5       #newName:Ljava/lang/String;
    .restart local v6       #newState:I
    :catch_1
    move-exception v1

    .line 323
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 326
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private isFactorySim()Z
    .locals 5

    .prologue
    .line 565
    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 566
    .local v2, tm:Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 567
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, imsi:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 569
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v3, 0x1

    .line 572
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private final sendHDMIIntent(II)V
    .locals 8
    .parameter "hdmiState"
    .parameter "ch_info"

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 581
    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hdmi_audio_output"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 583
    .local v1, hdmiSettingValue:I
    and-int/lit8 v3, p2, 0x20

    if-ne v3, v7, :cond_0

    if-ne v1, v5, :cond_0

    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->getFactoryMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryObserver;->isFactorySim()Z

    move-result v3

    if-nez v3, :cond_0

    .line 602
    :cond_0
    const/4 v0, 0x0

    .line 603
    .local v0, delay:I
    invoke-static {}, Lcom/android/server/WiredAccessoryObserver;->getFactoryMode()Z

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryObserver;->isFactorySim()Z

    move-result v3

    if-ne v3, v6, :cond_2

    .line 604
    :cond_1
    const/16 v0, 0xa

    .line 606
    :cond_2
    and-int/lit8 v3, p2, 0x20

    if-ne v3, v7, :cond_3

    if-eqz v1, :cond_3

    .line 607
    :cond_3
    const/4 p2, 0x2

    .line 610
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v2, intentToAudioSerivce2:Landroid/content/Intent;
    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 612
    const-string v3, "state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    const-string v3, "channels"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    const-string v3, "delay"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent BroadCasting : Intent.ACTION_HDMI_AUDIO_PLUG(state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", channels:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 10
    .parameter "headset"
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 420
    and-int v3, p2, p1

    and-int v4, p3, p1

    if-eq v3, v4, :cond_6

    .line 422
    const/4 v2, 0x0

    .line 423
    .local v2, state:I
    and-int v3, p2, p1

    if-eqz v3, :cond_0

    .line 424
    const/4 v2, 0x1

    .line 426
    :cond_0
    if-eq p1, v5, :cond_1

    if-eq p1, v8, :cond_1

    if-ne p1, v9, :cond_3

    .line 431
    :cond_1
    if-ne p1, v5, :cond_7

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 434
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 451
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_USB_HEADSET_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_3
    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 457
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    const/4 v1, 0x0

    .line 462
    .local v1, microphone:I
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_5

    .line 463
    const/4 v1, 0x1

    .line 466
    :cond_5
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v3, "microphone"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.ACTION_HEADSET_PLUG: state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 475
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #microphone:I
    .end local v2           #state:I
    :cond_6
    return-void

    .line 437
    .restart local v2       #state:I
    :cond_7
    if-ne p1, v8, :cond_8

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 440
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    if-ne p1, v9, :cond_2

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final declared-synchronized sendIntents(IILjava/lang/String;)V
    .locals 6
    .parameter "headsetState"
    .parameter "prevHeadsetState"
    .parameter "headsetName"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 400
    monitor-enter p0

    const/16 v0, 0x1f

    .line 401
    .local v0, allHeadsets:I
    const/4 v1, 0x1

    .local v1, curHeadset:I
    :goto_0
    if-eqz v0, :cond_3

    .line 402
    and-int v2, v1, v0

    if-eqz v2, :cond_0

    .line 403
    if-ne p2, v5, :cond_2

    if-ne p1, v4, :cond_2

    .line 405
    if-ne v1, v5, :cond_1

    .line 401
    :cond_0
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    :cond_1
    if-ne v1, v4, :cond_2

    .line 409
    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->sendIntent(IIILjava/lang/String;)V

    .line 410
    and-int/lit8 v0, v0, -0x3

    .line 413
    :cond_2
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/WiredAccessoryObserver;->sendIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    goto :goto_1

    .line 417
    :cond_3
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final sendUSBAudioIntent(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    .locals 3
    .parameter "usbAudioData"

    .prologue
    .line 622
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 624
    const-string v1, "state"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v1, "channels"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    const-string v1, "cardnumber"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v1, "devicenumber"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getDeviceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v1, "smartdock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method private final sendUSBInfoIntent(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    .locals 3
    .parameter "usbAudioData"

    .prologue
    .line 635
    sget-object v1, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "sendUSBInfoIntent ++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EXTERNAL_USB_HEADSET_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    const-string v1, "state"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    const-string v1, "channels"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    const-string v1, "cardnumber"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string v1, "devicenumber"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getDeviceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 644
    sget-object v1, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v2, "sendUSBInfoIntent --"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method private final declared-synchronized update(Ljava/lang/String;II)V
    .locals 17
    .parameter "newName"
    .parameter "newState"
    .parameter "originalState"

    .prologue
    .line 330
    monitor-enter p0

    and-int/lit8 v5, p2, 0x1f

    .line 331
    .local v5, headsetState:I
    :try_start_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    or-int v7, v5, v11

    .line 332
    .local v7, newOrOld:I
    const/4 v2, 0x0

    .line 333
    .local v2, delay:I
    and-int/lit8 v9, v5, 0x4

    .line 334
    .local v9, usb_headset_anlg:I
    and-int/lit8 v10, v5, 0x8

    .line 335
    .local v10, usb_headset_dgtl:I
    and-int/lit8 v4, v5, 0x3

    .line 336
    .local v4, h2w_headset:I
    const/4 v3, 0x1

    .line 337
    .local v3, h2wStateChange:Z
    const/4 v8, 0x1

    .line 341
    .local v8, usbStateChange:Z
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "newState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", headsetState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "mHeadsetState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    if-eq v11, v5, :cond_0

    add-int/lit8 v11, v4, -0x1

    and-int/2addr v11, v4

    if-eqz v11, :cond_1

    .line 344
    :cond_0
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "unsetting h2w flag"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v3, 0x0

    .line 349
    :cond_1
    shr-int/lit8 v11, v9, 0x2

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    shr-int/lit8 v11, v10, 0x3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 350
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "unsetting usb flag"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v8, 0x0

    .line 353
    :cond_2
    if-nez v3, :cond_3

    if-nez v8, :cond_3

    .line 354
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "invalid transition, returning ..."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :goto_0
    monitor-exit p0

    return-void

    .line 358
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    .line 359
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    .line 360
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    .line 362
    if-eqz v5, :cond_4

    if-nez p3, :cond_7

    .line 369
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    const-string v11, "CHINA"

    const-string v12, "KOR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v11

    if-nez v11, :cond_6

    .line 377
    const/16 v2, 0xc8

    .line 391
    .end local v6           #intent:Landroid/content/Intent;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    int-to-long v13, v2

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    .end local v2           #delay:I
    .end local v3           #h2wStateChange:Z
    .end local v4           #h2w_headset:I
    .end local v7           #newOrOld:I
    .end local v8           #usbStateChange:Z
    .end local v9           #usb_headset_anlg:I
    .end local v10           #usb_headset_dgtl:I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 379
    .restart local v2       #delay:I
    .restart local v3       #h2wStateChange:Z
    .restart local v4       #h2w_headset:I
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #newOrOld:I
    .restart local v8       #usbStateChange:Z
    .restart local v9       #usb_headset_anlg:I
    .restart local v10       #usb_headset_dgtl:I
    :cond_6
    const/16 v2, 0x1f4

    goto :goto_1

    .line 384
    .end local v6           #intent:Landroid/content/Intent;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/WiredAccessoryObserver;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 385
    const-string v11, "CHINA"

    const-string v12, "KOR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-eqz v11, :cond_8

    .line 386
    const/16 v2, 0x1f4

    goto :goto_1

    .line 388
    :cond_8
    const/16 v2, 0x1f4

    goto :goto_1
.end method

.method private final declared-synchronized updateState(Ljava/lang/String;I)V
    .locals 4
    .parameter "name"
    .parameter "state"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 273
    monitor-enter p0

    :try_start_0
    const-string v3, "usb_audio"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    iget v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v3, v3, 0x13

    if-ne p2, v0, :cond_1

    const/4 v2, 0x4

    :cond_0
    :goto_0
    or-int v0, v3, v2

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    .line 292
    :goto_1
    iget v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/WiredAccessoryObserver;->update(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :goto_2
    monitor-exit p0

    return-void

    .line 274
    :cond_1
    if-ne p2, v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    .line 277
    :cond_2
    :try_start_1
    const-string v3, "hdmi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    iget v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v1, v1, 0xf

    if-ne p2, v0, :cond_3

    const/16 v2, 0x10

    :cond_3
    or-int v0, v1, v2

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :cond_4
    :try_start_2
    const-string v3, "ch_hdmi_audio"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 283
    invoke-direct {p0, p2}, Lcom/android/server/WiredAccessoryObserver;->update_hdmi(I)V

    goto :goto_2

    .line 287
    :cond_5
    iget v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    and-int/lit8 v3, v3, 0x1c

    if-ne p2, v0, :cond_6

    :goto_3
    or-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    if-ne p2, v1, :cond_7

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method private final declared-synchronized update_hdmi(I)V
    .locals 11
    .parameter "state"

    .prologue
    .line 515
    monitor-enter p0

    and-int/lit16 v1, p1, 0xff

    .line 516
    .local v1, ch_info:I
    const v7, 0xff00

    and-int v6, p1, v7

    .line 517
    .local v6, spk_info:I
    const/4 v4, 0x0

    .line 518
    .local v4, hdmiState:I
    :try_start_0
    const-string v0, "1"

    .line 519
    .local v0, cardNumber:Ljava/lang/String;
    const-string v3, "0"

    .line 520
    .local v3, deviceNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 521
    .local v2, delay:I
    const/4 v7, -0x1

    if-ne p1, v7, :cond_1

    .line 522
    const/4 v4, 0x0

    .line 526
    :goto_0
    if-nez v4, :cond_2

    .line 527
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .local v5, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 534
    const/16 v2, 0x1f4

    .line 542
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 543
    iget-object v7, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_hdmi:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_hdmi:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    int-to-long v9, v2

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 524
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 538
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_hdmi:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 539
    const/16 v2, 0x1f4

    goto :goto_1

    .line 515
    .end local v0           #cardNumber:Ljava/lang/String;
    .end local v2           #delay:I
    .end local v3           #deviceNumber:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private final declared-synchronized update_usbaudio(Lcom/android/server/WiredAccessoryObserver$UsbAudioData;)V
    .locals 6
    .parameter "usbAudioData"

    .prologue
    .line 478
    monitor-enter p0

    const/4 v0, 0x0

    .line 479
    .local v0, delay:I
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 487
    const/16 v0, 0x1f4

    .line 495
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 497
    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryObserver;->readSmartDock()V

    .line 498
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update_usbaudio state : mSmartDockConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SMART_DOCK_CONNECTED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    const-string v3, "10"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "update_usbaudio smart dock is connected, send usb info"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbInfo:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbInfo:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :goto_1
    monitor-exit p0

    return-void

    .line 491
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    const/16 v0, 0x1f4

    goto :goto_0

    .line 505
    :cond_2
    sget-object v2, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v3, "update_usbaudio smart dock is not connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 478
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 744
    const-string v0, "  WiredAccessoryObserver State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHeadsetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mPrevHeadsetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WiredAccessoryObserver;->mPrevHeadsetState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHeadsetName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WiredAccessoryObserver;->mHeadsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    switchState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WiredAccessoryObserver;->switchState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public isRemoveSmartDock()V
    .locals 15

    .prologue
    const/16 v13, 0x8

    const/4 v14, 0x1

    .line 703
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock ++"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-array v3, v13, [C

    .line 705
    .local v3, buffer:[C
    const-string v2, "sys/class/sec/switch/adc"

    .line 706
    .local v2, SmartDName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 707
    .local v5, file:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 708
    .local v0, DeviceValue:Ljava/lang/String;
    const/4 v8, 0x1

    .line 709
    .local v8, loopGoing:I
    const/4 v9, 0x0

    .local v9, sleepCount:I
    move v10, v9

    .end local v9           #sleepCount:I
    .local v10, sleepCount:I
    move-object v1, v0

    .end local v0           #DeviceValue:Ljava/lang/String;
    .local v1, DeviceValue:Ljava/lang/String;
    move-object v6, v5

    .line 710
    .end local v5           #file:Ljava/io/FileReader;
    .local v6, file:Ljava/io/FileReader;
    :goto_0
    if-ne v8, v14, :cond_3

    .line 712
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 713
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    const/4 v11, 0x0

    const/16 v12, 0x8

    :try_start_1
    invoke-virtual {v5, v3, v11, v12}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 714
    .local v7, len:I
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 716
    if-le v7, v14, :cond_0

    .line 717
    new-instance v0, Ljava/lang/String;

    const/4 v11, 0x0

    add-int/lit8 v12, v7, -0x1

    invoke-direct {v0, v3, v11, v12}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 721
    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    :goto_1
    :try_start_2
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isRemoveSmartDock DeviceValue : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSmartDockConnected : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iput-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    .line 723
    iget-object v11, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    const-string v12, "10"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 724
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock : removed"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 725
    const/4 v8, 0x0

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    :goto_2
    move v10, v9

    .end local v9           #sleepCount:I
    .restart local v10       #sleepCount:I
    move-object v1, v0

    .end local v0           #DeviceValue:Ljava/lang/String;
    .restart local v1       #DeviceValue:Ljava/lang/String;
    move-object v6, v5

    .line 738
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    goto :goto_0

    .line 719
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v0, v3, v11, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    goto :goto_1

    .line 727
    :cond_1
    add-int/lit8 v9, v10, 0x1

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    const/16 v11, 0xc8

    if-gt v10, v11, :cond_2

    .line 728
    const-wide/16 v11, 0xa

    :try_start_4
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    .line 734
    :catch_0
    move-exception v4

    .line 735
    .end local v7           #len:I
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_3
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock This kernel does not have wired headset support "

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .end local v9           #sleepCount:I
    .restart local v10       #sleepCount:I
    move-object v1, v0

    .end local v0           #DeviceValue:Ljava/lang/String;
    .restart local v1       #DeviceValue:Ljava/lang/String;
    move-object v6, v5

    .line 738
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    goto :goto_0

    .line 730
    .end local v1           #DeviceValue:Ljava/lang/String;
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .end local v6           #file:Ljava/io/FileReader;
    .end local v10           #sleepCount:I
    .restart local v0       #DeviceValue:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/FileReader;
    .restart local v7       #len:I
    .restart local v9       #sleepCount:I
    :cond_2
    :try_start_5
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock : too much sleep"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 731
    const/4 v8, 0x0

    goto :goto_2

    .line 736
    .end local v0           #DeviceValue:Ljava/lang/String;
    .end local v5           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    .end local v9           #sleepCount:I
    .restart local v1       #DeviceValue:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/FileReader;
    .restart local v10       #sleepCount:I
    :catch_1
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    move-object v5, v6

    .line 737
    .end local v6           #file:Ljava/io/FileReader;
    .local v4, e:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/FileReader;
    :goto_4
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, ""

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v10, v9

    .end local v9           #sleepCount:I
    .restart local v10       #sleepCount:I
    move-object v1, v0

    .end local v0           #DeviceValue:Ljava/lang/String;
    .restart local v1       #DeviceValue:Ljava/lang/String;
    move-object v6, v5

    .line 738
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 740
    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    sget-object v11, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v12, "isRemoveSmartDock --"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 736
    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    :catch_2
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    goto :goto_4

    .end local v9           #sleepCount:I
    .restart local v7       #len:I
    .restart local v10       #sleepCount:I
    :catch_3
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    goto :goto_4

    :catch_4
    move-exception v4

    goto :goto_4

    .line 734
    .end local v0           #DeviceValue:Ljava/lang/String;
    .end local v5           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    .end local v9           #sleepCount:I
    .restart local v1       #DeviceValue:Ljava/lang/String;
    .restart local v6       #file:Ljava/io/FileReader;
    .restart local v10       #sleepCount:I
    :catch_5
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #DeviceValue:Ljava/lang/String;
    .end local v9           #sleepCount:I
    .restart local v1       #DeviceValue:Ljava/lang/String;
    .restart local v10       #sleepCount:I
    :catch_6
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    goto :goto_3

    .end local v9           #sleepCount:I
    .restart local v7       #len:I
    .restart local v10       #sleepCount:I
    :catch_7
    move-exception v4

    move v9, v10

    .end local v10           #sleepCount:I
    .restart local v9       #sleepCount:I
    goto :goto_3
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 260
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Headset UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :try_start_0
    const-string v3, "SWITCH_NAME"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, name:Ljava/lang/String;
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 265
    .local v2, state:I
    invoke-direct {p0, v1, v2}, Lcom/android/server/WiredAccessoryObserver;->updateState(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #state:I
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public readSmartDock()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 679
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v9, "readSmartDock ++"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-array v3, v10, [C

    .line 681
    .local v3, buffer:[C
    const-string v2, "sys/class/sec/switch/adc"

    .line 682
    .local v2, SmartDName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 683
    .local v5, file:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 685
    .local v0, DeviceValue:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 686
    .end local v5           #file:Ljava/io/FileReader;
    .local v6, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x8

    :try_start_1
    invoke-virtual {v6, v3, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 687
    .local v7, len:I
    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 688
    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x0

    add-int/lit8 v9, v7, -0x1

    invoke-direct {v1, v3, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .end local v0           #DeviceValue:Ljava/lang/String;
    .local v1, DeviceValue:Ljava/lang/String;
    move-object v0, v1

    .line 691
    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 692
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readSmartDock : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mSmartDockConnected : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iput-object v0, p0, Lcom/android/server/WiredAccessoryObserver;->mSmartDockConnected:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v6

    .line 699
    .end local v6           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    .restart local v5       #file:Ljava/io/FileReader;
    :goto_1
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v9, "readSmartDock --"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void

    .line 690
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    .restart local v7       #len:I
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v1, v3, v8, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v0           #DeviceValue:Ljava/lang/String;
    .restart local v1       #DeviceValue:Ljava/lang/String;
    move-object v0, v1

    .end local v1           #DeviceValue:Ljava/lang/String;
    .restart local v0       #DeviceValue:Ljava/lang/String;
    goto :goto_0

    .line 694
    .end local v6           #file:Ljava/io/FileReader;
    .end local v7           #len:I
    .restart local v5       #file:Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 695
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v9, "readSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 696
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 697
    .local v4, e:Ljava/lang/Exception;
    :goto_3
    sget-object v8, Lcom/android/server/WiredAccessoryObserver;->TAG:Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 696
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    :catch_2
    move-exception v4

    move-object v5, v6

    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    goto :goto_3

    .line 694
    .end local v5           #file:Ljava/io/FileReader;
    .restart local v6       #file:Ljava/io/FileReader;
    :catch_3
    move-exception v4

    move-object v5, v6

    .end local v6           #file:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/FileReader;
    goto :goto_2
.end method
