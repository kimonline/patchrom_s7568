.class Landroid/hardware/ssp/DaemonParserLibMotion;
.super Landroid/hardware/ssp/ADaemonParserData;
.source "DaemonParserLibMotion.java"


# static fields
.field private static final PACKET_DATA_LENGTH:I = 0x1


# instance fields
.field private final mMotionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/ssp/IDaemonParserMsgType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonParserData;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonParserLibMotion;->mMotionList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected checkPacket([BI)Z
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 101
    add-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, p1, v0}, Landroid/hardware/ssp/ADaemonParserData;->checkPacket([BI)Z

    move-result v0

    return v0
.end method

.method protected clear()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLibMotion;->mMotionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    return-void
.end method

.method protected display()V
    .locals 5

    .prologue
    .line 65
    const-string v3, "================= Motion ================="

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->debug(Ljava/lang/String;)V

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[List Size] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/ssp/DaemonParserLibMotion;->mMotionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    .line 67
    iget-object v3, p0, Landroid/hardware/ssp/DaemonParserLibMotion;->mMotionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ssp/IDaemonParserMsgType;

    .local v1, next:Landroid/hardware/ssp/IDaemonParserMsgType;
    move-object v2, v1

    .line 68
    check-cast v2, Landroid/hardware/ssp/DaemonContextMotion;

    .line 70
    .local v2, zoneMsg:Landroid/hardware/ssp/DaemonContextMotion;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/ssp/DaemonContextMotion;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v1           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    .end local v2           #zoneMsg:Landroid/hardware/ssp/DaemonContextMotion;
    :cond_0
    return-void
.end method

.method protected getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/ssp/IDaemonParserMsgType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/ssp/DaemonParserLibMotion;->mMotionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse([BI)I
    .locals 4
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 37
    new-instance v1, Landroid/hardware/ssp/DaemonContextMotion;

    invoke-direct {v1}, Landroid/hardware/ssp/DaemonContextMotion;-><init>()V

    .line 38
    .local v1, msg:Landroid/hardware/ssp/DaemonContextMotion;
    const/4 v0, 0x0

    .line 40
    .local v0, data:I
    invoke-virtual {p0, p1, p2}, Landroid/hardware/ssp/DaemonParserLibMotion;->checkPacket([BI)Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    const-string v3, "Packet data error"

    invoke-static {v3}, Landroid/hardware/ssp/SSPLogger;->error(Ljava/lang/String;)V

    .line 42
    const/4 v2, -0x1

    .line 53
    :goto_0
    return v2

    .line 45
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/ssp/DaemonContextMotion;->setInst(I)V

    .line 46
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/hardware/ssp/DaemonContextMotion;->setName(I)V

    .line 48
    add-int/lit8 v2, p2, 0x1

    .end local p2
    .local v2, next:I
    aget-byte v0, p1, p2

    .line 49
    invoke-virtual {v1, v0}, Landroid/hardware/ssp/DaemonContextMotion;->setType(I)V

    .line 51
    iget-object v3, p0, Landroid/hardware/ssp/DaemonParserLibMotion;->mMotionList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v2

    .line 53
    .end local v2           #next:I
    .restart local p2
    goto :goto_0
.end method
