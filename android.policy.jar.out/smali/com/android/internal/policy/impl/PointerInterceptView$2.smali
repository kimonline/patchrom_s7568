.class Lcom/android/internal/policy/impl/PointerInterceptView$2;
.super Landroid/content/BroadcastReceiver;
.source "PointerInterceptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PointerInterceptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PointerInterceptView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.systemui.statusbar.phone.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "PointerInterceptView"

    const-string v2, "Receive COLLAPSED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    .line 159
    :cond_0
    return-void
.end method
