.class Landroid/hardware/ssp/DaemonRunnerContextMotion;
.super Landroid/hardware/ssp/ADaemonRunnerContext;
.source "DaemonRunnerContextMotion.java"


# static fields
.field private static final FIRST_TYPE_MOTION:I = 0x0

.field private static final RUNNER_NAME:Ljava/lang/String; = null

.field private static final SECOND_TYPE_ADD_MOTION:I = 0x4

.field private static final SECOND_TYPE_REMOVE_MOTION:I = 0xe


# instance fields
.field private mMotionContext:Landroid/hardware/ssp/DaemonContexts$SSPMotion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->CONTEXT_MOTION:Landroid/hardware/ssp/DaemonConstants$SSPRunners;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonConstants$SSPRunners;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/ssp/DaemonRunnerContextMotion;->RUNNER_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVar()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/hardware/ssp/DaemonContexts$SSPMotion;

    invoke-direct {v0}, Landroid/hardware/ssp/DaemonContexts$SSPMotion;-><init>()V

    iput-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextMotion;->mMotionContext:Landroid/hardware/ssp/DaemonContexts$SSPMotion;

    .line 77
    iget-object v0, p0, Landroid/hardware/ssp/DaemonRunnerContextMotion;->mMotionContext:Landroid/hardware/ssp/DaemonContexts$SSPMotion;

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonContexts$SSPMotion;->clear()V

    .line 80
    return-void
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Landroid/hardware/ssp/DaemonRunnerContextMotion;->RUNNER_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public notifyContext()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Landroid/hardware/ssp/DaemonAggregatorContext;->getInstance()Landroid/hardware/ssp/DaemonAggregatorContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/ssp/DaemonAggregatorContext;->getMotionAggregator()Landroid/hardware/ssp/DaemonAggregatorMotion;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/ssp/DaemonRunnerContextMotion;->mMotionContext:Landroid/hardware/ssp/DaemonContexts$SSPMotion;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonAggregatorMotion;->notifyMotionContext(Landroid/hardware/ssp/DaemonContexts$SSPMotion;)V

    .line 143
    return-void
.end method

.method public setServiceName()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/hardware/ssp/ADaemonRunnerContext;->getRunner()Landroid/hardware/ssp/DaemonRunner;

    move-result-object v0

    sget-object v1, Landroid/hardware/ssp/DaemonRunnerContextMotion;->RUNNER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/ssp/DaemonRunner;->setRunnerName(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public updateContext(Landroid/hardware/ssp/DaemonParserContext;)V
    .locals 6
    .parameter "parser"

    .prologue
    .line 113
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/hardware/ssp/DaemonParserContext;->getParser(B)Landroid/hardware/ssp/ADaemonParserData;

    move-result-object v2

    .line 115
    .local v2, motionParser:Landroid/hardware/ssp/ADaemonParserData;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/ssp/ADaemonParserData;->display()V

    .line 123
    invoke-virtual {v2}, Landroid/hardware/ssp/ADaemonParserData;->getResult()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/ssp/IDaemonParserMsgType;

    .local v3, next:Landroid/hardware/ssp/IDaemonParserMsgType;
    move-object v1, v3

    .line 124
    check-cast v1, Landroid/hardware/ssp/DaemonContextMotion;

    .line 126
    .local v1, motionMsg:Landroid/hardware/ssp/DaemonContextMotion;
    iget-object v4, p0, Landroid/hardware/ssp/DaemonRunnerContextMotion;->mMotionContext:Landroid/hardware/ssp/DaemonContexts$SSPMotion;

    invoke-virtual {v1}, Landroid/hardware/ssp/DaemonContextMotion;->getType()I

    move-result v5

    iput v5, v4, Landroid/hardware/ssp/DaemonContexts$SSPMotion;->type:I

    .line 128
    invoke-virtual {p0}, Landroid/hardware/ssp/DaemonRunnerContextMotion;->notifyContext()V

    goto :goto_1

    .line 131
    .end local v1           #motionMsg:Landroid/hardware/ssp/DaemonContextMotion;
    .end local v3           #next:Landroid/hardware/ssp/IDaemonParserMsgType;
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/ssp/ADaemonParserData;->clear()V

    goto :goto_0
.end method
