.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActDeactRequest"
.end annotation


# instance fields
.field public actTmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation
.end field

.field public callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field public deActTmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation
.end field

.field public earfcnList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation
.end field

.field public priority:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

.field public saiList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B[BI[I[I)V
    .locals 4
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "trace"    # I
    .param p3, "callId"    # B
    .param p4, "actTmgi"    # [B
    .param p5, "deActTmgi"    # [B
    .param p6, "priority"    # I
    .param p7, "saiList"    # [I
    .param p8, "earfcnList"    # [I

    .prologue
    const/4 v1, 0x1

    .line 1762
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1764
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v2, p2

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 1765
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v0, p3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1766
    new-instance v0, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v2, p6

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->priority:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 1767
    invoke-static {p1, v1, p4}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap2(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->actTmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1768
    invoke-static {p1, v1, p5}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap2(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->deActTmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1769
    invoke-static {p1, v1, p7}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap3(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->saiList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1770
    invoke-static {p1, v1, p8}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap3(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[I)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->earfcnList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1763
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .prologue
    .line 1775
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->actTmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->deActTmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->priority:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1776
    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->saiList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ActDeactRequest;->earfcnList:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1775
    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .prologue
    .line 1781
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x10s
        0x6s
    .end array-data
.end method
