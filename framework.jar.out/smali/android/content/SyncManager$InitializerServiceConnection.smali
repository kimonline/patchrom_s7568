.class Landroid/content/SyncManager$InitializerServiceConnection;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializerServiceConnection"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private volatile mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "account"
    .parameter "authority"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 439
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAccount:Landroid/accounts/Account;

    .line 441
    iput-object p2, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAuthority:Ljava/lang/String;

    .line 442
    iput-object p3, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    .line 443
    iput-object p4, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mHandler:Landroid/os/Handler;

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mInitialized:Z

    .line 445
    return-void
.end method

.method static synthetic access$700(Landroid/content/SyncManager$InitializerServiceConnection;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 431
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Landroid/content/SyncManager$InitializerServiceConnection;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-object p1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    const-wide/16 v3, 0x1388

    .line 449
    :try_start_0
    iget-boolean v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mInitialized:Z

    if-nez v0, :cond_1

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mInitialized:Z

    .line 451
    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    :cond_0
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mAuthority:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/ISyncAdapter;->initialize(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_1
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/content/SyncManager$InitializerServiceConnection$1;

    invoke-direct {v1, p0}, Landroid/content/SyncManager$InitializerServiceConnection$1;-><init>(Landroid/content/SyncManager$InitializerServiceConnection;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 462
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/content/SyncManager$InitializerServiceConnection$1;

    invoke-direct {v1, p0}, Landroid/content/SyncManager$InitializerServiceConnection$1;-><init>(Landroid/content/SyncManager$InitializerServiceConnection;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/content/SyncManager$InitializerServiceConnection$1;

    invoke-direct {v2, p0}, Landroid/content/SyncManager$InitializerServiceConnection$1;-><init>(Landroid/content/SyncManager$InitializerServiceConnection;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 474
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/SyncManager$InitializerServiceConnection;->mContext:Landroid/content/Context;

    .line 478
    :cond_0
    return-void
.end method
