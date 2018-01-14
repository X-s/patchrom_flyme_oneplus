.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;
.super Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentDescriptionReq"
.end annotation


# instance fields
.field public callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

.field public parameterArray:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
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

.field public tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray",
            "<",
            "Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;",
            ">;"
        }
    .end annotation
.end field

.field public traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;IB[B[I)V
    .locals 5
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "trace"    # I
    .param p3, "callId"    # B
    .param p4, "tmgi"    # [B
    .param p5, "parameterArray"    # [I

    .prologue
    const/4 v4, 0x1

    .line 1912
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiStructType;-><init>()V

    .line 1913
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;-><init>(J)V

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    .line 1914
    new-instance v1, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    invoke-direct {v1, p3}, Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;-><init>(B)V

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    .line 1915
    invoke-static {p1, v4, p4}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap2(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[B)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1919
    const/4 v0, 0x2

    .line 1920
    .local v0, "numberOfElements":S
    invoke-static {p1, v4, p5, v0}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-wrap4(Lcom/qualcomm/qcrilhook/EmbmsOemHook;S[IS)Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->parameterArray:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    .line 1912
    return-void
.end method


# virtual methods
.method public getItems()[Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;
    .locals 3

    .prologue
    .line 1925
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qualcomm/qcrilhook/BaseQmiTypes$BaseQmiItemType;

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->traceId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->callId:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiByte;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->tmgi:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$ContentDescriptionReq;->parameterArray:Lcom/qualcomm/qcrilhook/QmiPrimitiveTypes$QmiArray;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTypes()[S
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
        0x10s
    .end array-data
.end method
