.class public Landroid/net/http/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/RequestQueue$ConnectionManager;,
        Landroid/net/http/RequestQueue$SyncFeeder;,
        Landroid/net/http/RequestQueue$ActivePool;
    }
.end annotation


# static fields
.field private static final CONNECTION_COUNT:I = 0x4


# instance fields
.field private final mActivePool:Landroid/net/http/RequestQueue$ActivePool;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mPackageManger:Landroid/content/pm/PackageManager;

.field private final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private sAppInfoPackageName:Ljava/lang/String;

.field private sBrowserApn:Ljava/lang/String;

.field private sBrowserApnSetting:Ljava/lang/String;

.field private sOriginalApnSetting:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 222
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;I)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "connectionCount"

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 82
    iput-object v0, p0, Landroid/net/http/RequestQueue;->sBrowserApnSetting:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Landroid/net/http/RequestQueue;->sOriginalApnSetting:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 85
    iput-object v0, p0, Landroid/net/http/RequestQueue;->sAppInfoPackageName:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mPackageManger:Landroid/content/pm/PackageManager;

    .line 87
    iput-object v0, p0, Landroid/net/http/RequestQueue;->sBrowserApn:Ljava/lang/String;

    .line 236
    iput-object p1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    .line 238
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    .line 240
    new-instance v0, Landroid/net/http/RequestQueue$ActivePool;

    invoke-direct {v0, p0, p2}, Landroid/net/http/RequestQueue$ActivePool;-><init>(Landroid/net/http/RequestQueue;I)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    .line 241
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startup()V

    .line 243
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 245
    return-void
.end method

.method static synthetic access$000(Landroid/net/http/RequestQueue;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/http/RequestQueue;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V

    return-void
.end method

.method private determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 2
    .parameter "host"

    .prologue
    .line 525
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    iget-object p1, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method private removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;)",
            "Landroid/net/http/Request;"
        }
    .end annotation

    .prologue
    .line 646
    .local p1, requestQueue:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    const/4 v3, 0x0

    .line 647
    .local v3, ret:Landroid/net/http/Request;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 648
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 650
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 651
    .local v2, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ret:Landroid/net/http/Request;
    check-cast v3, Landroid/net/http/Request;

    .line 652
    .restart local v3       #ret:Landroid/net/http/Request;
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v2           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    return-object v3
.end method

.method private declared-synchronized setProxyConfig()V
    .locals 10

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 289
    .local v2, info:Landroid/net/NetworkInfo;
    const-string v7, "gsm.sim.operator.numeric"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, simNum:Ljava/lang/String;
    const/4 v4, 0x0

    .line 291
    .local v4, isCMCC:Z
    const/4 v3, 0x0

    .line 292
    .local v3, isBrowser:Z
    const/4 v5, 0x0

    .line 293
    .local v5, isCMRI:Z
    const-string v7, "46000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "46002"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "46007"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "460078"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 294
    :cond_0
    const/4 v4, 0x1

    .line 296
    :cond_1
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, cmriProxy:Ljava/lang/String;
    const-string v7, "CHINA_GSM_DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Default Proxy : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v0, :cond_2

    const-string v7, "192.168.230.8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 299
    const-string v7, "CHINA_GSM_DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " CMRI Default Proxy : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v5, 0x1

    .line 302
    :cond_2
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    .line 303
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, p0, Landroid/net/http/RequestQueue;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 304
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Landroid/net/http/RequestQueue;->sAppInfoPackageName:Ljava/lang/String;

    .line 305
    const-string v7, "CHINA_GSM_DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sAppInfoPackageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/http/RequestQueue;->sAppInfoPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v7, p0, Landroid/net/http/RequestQueue;->sAppInfoPackageName:Ljava/lang/String;

    const-string v8, "com.android.browser"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 307
    const/4 v3, 0x1

    .line 311
    :cond_3
    :goto_0
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    const-string v7, "android.com.browser.apn"

    const-string v8, "cmwap"

    invoke-static {v7, v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cmwap"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 312
    if-eqz v5, :cond_6

    .line 313
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, host:Ljava/lang/String;
    const-string v7, "CHINA_GSM_DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " this is cmri. so Default proxy will be set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    if-nez v1, :cond_5

    .line 316
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :goto_1
    monitor-exit p0

    return-void

    .line 309
    .end local v1           #host:Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v7, "CHINA_GSM_DATA"

    const-string/jumbo v8, "mContext == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    .end local v0           #cmriProxy:Ljava/lang/String;
    .end local v2           #info:Landroid/net/NetworkInfo;
    .end local v3           #isBrowser:Z
    .end local v4           #isCMCC:Z
    .end local v5           #isCMRI:Z
    .end local v6           #simNum:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 318
    .restart local v0       #cmriProxy:Ljava/lang/String;
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #info:Landroid/net/NetworkInfo;
    .restart local v3       #isBrowser:Z
    .restart local v4       #isCMCC:Z
    .restart local v5       #isCMRI:Z
    .restart local v6       #simNum:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v7}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    .line 319
    new-instance v7, Lorg/apache/http/HttpHost;

    iget-object v8, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v8

    const-string v9, "http"

    invoke-direct {v7, v1, v8, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v7, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_1

    .line 322
    .end local v1           #host:Ljava/lang/String;
    :cond_6
    const-string v1, "10.0.0.172"

    .line 323
    .restart local v1       #host:Ljava/lang/String;
    const-string v7, "CHINA_GSM_DATA"

    const-string/jumbo v8, "sBrowserApn is cmwap. So, set proxy 10.0.0.172"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-nez v1, :cond_7

    .line 325
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_1

    .line 327
    :cond_7
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v7}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    .line 328
    new-instance v7, Lorg/apache/http/HttpHost;

    const/16 v8, 0x50

    const-string v9, "http"

    invoke-direct {v7, v1, v8, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v7, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_1

    .line 332
    .end local v1           #host:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .restart local v1       #host:Ljava/lang/String;
    const-string v7, "CHINA_GSM_DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sBrowserApn is internet. So, set proxy not set or set default proxy"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-nez v1, :cond_9

    .line 335
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_1

    .line 337
    :cond_9
    iget-object v7, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v7}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    .line 338
    new-instance v7, Lorg/apache/http/HttpHost;

    iget-object v8, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v8

    const-string v9, "http"

    invoke-direct {v7, v1, v8, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v7, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized disablePlatformNotifications()V
    .locals 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_0
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dump()V
    .locals 12

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    const-string v10, "dump()"

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v2, dump:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 548
    .local v0, count:I
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 549
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    move v1, v0

    .line 550
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 551
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 552
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/HttpHost;

    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, hostName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    .local v6, line:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedList;

    .line 556
    .local v8, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 557
    .local v7, reqIter:Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 558
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/http/Request;

    .line 559
    .local v9, request:Landroid/net/http/Request;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 541
    .end local v0           #count:I
    .end local v2           #dump:Ljava/lang/StringBuilder;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4           #hostName:Ljava/lang/String;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .end local v6           #line:Ljava/lang/StringBuilder;
    .end local v7           #reqIter:Ljava/util/ListIterator;
    .end local v8           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v9           #request:Landroid/net/http/Request;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 561
    .restart local v0       #count:I
    .restart local v2       #dump:Ljava/lang/StringBuilder;
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .restart local v4       #hostName:Ljava/lang/String;
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v6       #line:Ljava/lang/StringBuilder;
    .restart local v7       #reqIter:Ljava/util/ListIterator;
    .restart local v8       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 562
    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 563
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4           #hostName:Ljava/lang/String;
    .end local v6           #line:Ljava/lang/StringBuilder;
    .end local v7           #reqIter:Ljava/util/ListIterator;
    .end local v8           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1
    move v0, v1

    .line 565
    .end local v1           #count:I
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v0       #count:I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized enablePlatformNotifications()V
    .locals 4

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Landroid/net/http/RequestQueue$1;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$1;-><init>(Landroid/net/http/RequestQueue;)V

    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    :cond_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public declared-synchronized getRequest()Landroid/net/http/Request;
    .locals 2

    .prologue
    .line 572
    monitor-enter p0

    const/4 v0, 0x0

    .line 574
    .local v0, ret:Landroid/net/http/Request;
    :try_start_0
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Landroid/net/http/RequestQueue;->removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 578
    :cond_0
    monitor-exit p0

    return-object v0

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .locals 4
    .parameter "host"

    .prologue
    .line 585
    monitor-enter p0

    const/4 v2, 0x0

    .line 587
    .local v2, ret:Landroid/net/http/Request;
    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 589
    .local v1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/net/http/Request;

    move-object v2, v0

    .line 590
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    .line 585
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized haveRequest(Lorg/apache/http/HttpHost;)Z
    .locals 1
    .parameter "host"

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 20
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 404
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_0

    .line 405
    new-instance p5, Landroid/net/http/LoggingEventHandler;

    .end local p5
    invoke-direct/range {p5 .. p5}, Landroid/net/http/LoggingEventHandler;-><init>()V

    .line 410
    .restart local p5
    :cond_0
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-virtual/range {p2 .. p2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/net/WebAddress;->getPort()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    .local v3, httpHost:Lorg/apache/http/HttpHost;
    const-string v2, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 415
    .local v18, simNum:Ljava/lang/String;
    const-string v2, "46000"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46002"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46007"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 416
    :cond_1
    const/16 v16, 0x0

    .line 417
    .local v16, isCMRI:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 418
    .local v14, cmriProxy:Ljava/lang/String;
    const-string v2, "CHINA_GSM_DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Default Proxy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-eqz v14, :cond_2

    const-string v2, "192.168.230.8"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    const-string v2, "CHINA_GSM_DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Default cmri Proxy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/16 v16, 0x1

    .line 423
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/http/RequestQueue;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/http/RequestQueue;->sAppInfoPackageName:Ljava/lang/String;

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/http/RequestQueue;->mPackageManger:Landroid/content/pm/PackageManager;

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->sAppInfoPackageName:Ljava/lang/String;

    const-string v4, "com.android.browser"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 429
    .local v13, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    .line 430
    .local v15, info:Landroid/net/NetworkInfo;
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v19

    .line 431
    .local v19, typeName:Ljava/lang/String;
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v17

    .line 432
    .local v17, sExtraInfo:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 433
    const-string v2, "CHINA_GSM_DATA"

    const-string v4, "This is CMRI test. Not handle Proxy value."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v14           #cmriProxy:Ljava/lang/String;
    .end local v15           #info:Landroid/net/NetworkInfo;
    .end local v16           #isCMRI:Z
    .end local v17           #sExtraInfo:Ljava/lang/String;
    .end local v19           #typeName:Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v1, Landroid/net/http/Request;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    invoke-virtual/range {p2 .. p2}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    .line 457
    .local v1, req:Landroid/net/http/Request;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-static {v2}, Landroid/net/http/RequestQueue$ActivePool;->access$408(Landroid/net/http/RequestQueue$ActivePool;)I

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v2}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    .line 464
    new-instance v4, Landroid/net/http/RequestHandle;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object v12, v1

    invoke-direct/range {v4 .. v12}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    return-object v4

    .line 435
    .end local v1           #req:Landroid/net/http/Request;
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    .restart local v14       #cmriProxy:Ljava/lang/String;
    .restart local v15       #info:Landroid/net/NetworkInfo;
    .restart local v16       #isCMRI:Z
    .restart local v17       #sExtraInfo:Ljava/lang/String;
    .restart local v19       #typeName:Ljava/lang/String;
    :cond_4
    const-string v2, "android.com.browser.apn"

    const-string v4, "cmwap"

    invoke-static {v2, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/http/RequestQueue;->sBrowserApn:Ljava/lang/String;

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->sBrowserApn:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 437
    const-string v2, "cmwap"

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/http/RequestQueue;->sBrowserApn:Ljava/lang/String;

    .line 439
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->sBrowserApn:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->sBrowserApn:Ljava/lang/String;

    const-string v4, "cmwap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 440
    new-instance v2, Lorg/apache/http/HttpHost;

    const-string v4, "10.0.0.172"

    const/16 v5, 0x50

    const-string v6, "http"

    invoke-direct {v2, v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 441
    const-string v2, "CHINA_GSM_DATA"

    const-string v4, "BrowserApn is cmwap. Set CMCC proxy."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    goto/16 :goto_0

    .line 449
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v14           #cmriProxy:Ljava/lang/String;
    .end local v15           #info:Landroid/net/NetworkInfo;
    .end local v16           #isCMRI:Z
    .end local v17           #sExtraInfo:Ljava/lang/String;
    .end local v19           #typeName:Ljava/lang/String;
    :cond_7
    const-string v2, "CHINA_GSM_DATA"

    const-string/jumbo v4, "non CMCC network"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    goto/16 :goto_0
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 8
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 380
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v2, uri:Landroid/net/WebAddress;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 381
    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized queueRequest(Landroid/net/http/Request;Z)V
    .locals 3
    .parameter "request"
    .parameter "head"

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-nez v2, :cond_0

    iget-object v0, p1, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 622
    .local v0, host:Lorg/apache/http/HttpHost;
    :goto_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 628
    .local v1, reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :goto_1
    if-eqz p2, :cond_2

    .line 629
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    :goto_2
    monitor-exit p0

    return-void

    .line 620
    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    goto :goto_0

    .line 625
    .restart local v0       #host:Lorg/apache/http/HttpHost;
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 626
    .restart local v1       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 620
    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 631
    .restart local v0       #host:Lorg/apache/http/HttpHost;
    .restart local v1       #reqList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 13
    .parameter "url"
    .parameter "uri"
    .parameter "method"
    .parameter
    .parameter "eventHandler"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    .prologue
    .line 499
    .local p4, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/WebAddress;->getPort()I

    move-result v3

    invoke-virtual {p2}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 501
    .local v2, host:Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    .line 506
    .local v0, req:Landroid/net/http/Request;
    invoke-direct {p0, v2}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 507
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    new-instance v4, Landroid/net/http/RequestQueue$SyncFeeder;

    invoke-direct {v4}, Landroid/net/http/RequestQueue$SyncFeeder;-><init>()V

    invoke-static {v1, v2, v3, v4}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    move-result-object v12

    .line 512
    .local v12, conn:Landroid/net/http/Connection;
    new-instance v3, Landroid/net/http/RequestHandle;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v0

    invoke-direct/range {v3 .. v12}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V

    return-object v3
.end method

.method declared-synchronized requestsPending()Z
    .locals 1

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    .line 610
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->shutdown()V

    .line 617
    return-void
.end method

.method public startTiming()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startTiming()V

    .line 638
    return-void
.end method

.method public stopTiming()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->stopTiming()V

    .line 642
    return-void
.end method
