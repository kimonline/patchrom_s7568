.class Lcom/android/internal/policy/impl/GlobalActions$16;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->isSimReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "unused"

    .prologue
    .line 1096
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1097
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1402(Z)Z

    .line 1098
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$16;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1502(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1099
    monitor-exit v1

    .line 1100
    return-void

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
