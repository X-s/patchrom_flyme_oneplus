.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetTimeRequest"
.end annotation


# instance fields
.field public sntpSuccess:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public timeMseconds:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

.field public timeStamp:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;BJJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "sntpSuccess"    # B
    .param p3, "timeMseconds"    # J
    .param p5, "timeStamp"    # J

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1828
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p2}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->sntpSuccess:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1829
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    invoke-direct {v0, p3, p4}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->timeMseconds:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    .line 1830
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    invoke-direct {v0, p5, p6}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->timeStamp:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    .line 1827
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .prologue
    .line 1835
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    .line 1836
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->sntpSuccess:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->timeMseconds:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$SetTimeRequest;->timeStamp:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiLong;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1835
    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .prologue
    .line 1842
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x1s
        0x10s
        0x11s
    .end array-data
.end method
