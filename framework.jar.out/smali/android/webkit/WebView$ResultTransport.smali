.class Landroid/webkit/WebView$ResultTransport;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mParam:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;TE;)V"
        }
    .end annotation

    .prologue
    .line 9213
    .local p0, this:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<TT;TE;>;"
    .local p2, param:[Ljava/lang/Object;,"[TT;"
    .local p3, defaultResult:Ljava/lang/Object;,"TE;"
    iput-object p1, p0, Landroid/webkit/WebView$ResultTransport;->this$0:Landroid/webkit/WebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9214
    iput-object p3, p0, Landroid/webkit/WebView$ResultTransport;->mResult:Ljava/lang/Object;

    .line 9215
    iput-object p2, p0, Landroid/webkit/WebView$ResultTransport;->mParam:[Ljava/lang/Object;

    .line 9216
    return-void
.end method


# virtual methods
.method public declared-synchronized getParams()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 9219
    .local p0, this:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView$ResultTransport;->mParam:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 9227
    .local p0, this:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 9223
    .local p0, this:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<TT;TE;>;"
    .local p1, result:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebView$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9224
    monitor-exit p0

    return-void

    .line 9223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
