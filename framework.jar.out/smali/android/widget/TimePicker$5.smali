.class Landroid/widget/TimePicker$5;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Landroid/widget/TimePicker$5;->this$0:Landroid/widget/TimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 260
    iget-object v1, p0, Landroid/widget/TimePicker$5;->this$0:Landroid/widget/TimePicker;

    iget-object v0, p0, Landroid/widget/TimePicker$5;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Landroid/widget/TimePicker;->access$302(Landroid/widget/TimePicker;Z)Z

    .line 261
    iget-object v0, p0, Landroid/widget/TimePicker$5;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)V

    .line 262
    iget-object v0, p0, Landroid/widget/TimePicker$5;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->onTimeChanged()V

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)V

    .line 263
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
