.class Lcom/android/server/TvoutService$2;
.super Landroid/view/OrientationEventListener;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/TvoutService;->setOrientationListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const-wide/16 v6, 0x2

    const-wide/16 v4, 0x0

    const/16 v2, 0x10e

    const/16 v1, 0x5a

    const/4 v3, 0x1

    .line 208
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    .line 220
    :goto_1
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v0, p1}, Lcom/android/server/TvoutService;->TvoutSetOrientation(I)Z

    .line 221
    rem-int/lit16 p1, p1, 0x168

    .line 222
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_6

    .line 225
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    .line 226
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v4, v5}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 271
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->HDMI_CONNECT:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$600(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_ON:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$500(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$700(Lcom/android/server/TvoutService;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 272
    :cond_4
    const-string v0, "persist.sys.camera.transform"

    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$400(Lcom/android/server/TvoutService;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "persist.sys.camera.position"

    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_f

    .line 275
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutSetRearCameraRotation(I)Z

    goto :goto_0

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v2}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto :goto_1

    .line 229
    :cond_6
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v2}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    .line 230
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto :goto_2

    .line 233
    :cond_7
    const/16 v0, 0x87

    if-ge p1, v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v1, 0x1

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v1, v2}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 236
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_8

    .line 237
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const/16 v1, 0xb4

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto :goto_2

    .line 239
    :cond_8
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const/16 v1, 0xb4

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto/16 :goto_2

    .line 241
    :cond_9
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_a

    .line 244
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 245
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v2}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto/16 :goto_2

    .line 248
    :cond_a
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    .line 249
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v4, v5}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_2

    .line 252
    :cond_b
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_d

    .line 254
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const-wide/16 v1, 0x3

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v1, v2}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    .line 255
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_c

    .line 256
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto/16 :goto_2

    .line 258
    :cond_c
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$302(Lcom/android/server/TvoutService;I)I

    goto/16 :goto_2

    .line 260
    :cond_d
    const/16 v0, 0x168

    if-ge p1, v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->CAMERA_POSITION:I
    invoke-static {v0}, Lcom/android/server/TvoutService;->access$200(Lcom/android/server/TvoutService;)I

    move-result v0

    if-nez v0, :cond_e

    .line 263
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v4, v5}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_2

    .line 266
    :cond_e
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #setter for: Lcom/android/server/TvoutService;->sTransform:J
    invoke-static {v0, v6, v7}, Lcom/android/server/TvoutService;->access$402(Lcom/android/server/TvoutService;J)J

    goto/16 :goto_2

    .line 277
    :cond_f
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    iget-object v1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->newOrientation:I
    invoke-static {v1}, Lcom/android/server/TvoutService;->access$300(Lcom/android/server/TvoutService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutSetFrontCameraRotation(I)Z

    goto/16 :goto_0
.end method
