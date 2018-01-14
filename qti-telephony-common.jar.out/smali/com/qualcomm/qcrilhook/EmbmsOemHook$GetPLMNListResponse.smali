.class public Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;
.super Ljava/lang/Object;
.source "EmbmsOemHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qcrilhook/EmbmsOemHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetPLMNListResponse"
.end annotation


# instance fields
.field public plmnList:[B

.field public status:I

.field final synthetic this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

.field public traceId:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/qcrilhook/EmbmsOemHook;ILjava/nio/ByteBuffer;)V
    .locals 12
    .param p1, "this$0"    # Lcom/qualcomm/qcrilhook/EmbmsOemHook;
    .param p2, "status"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2314
    iput-object p1, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->this$0:Lcom/qualcomm/qcrilhook/EmbmsOemHook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v9, 0x0

    iput v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    .line 2312
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    .line 2315
    iput p2, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->status:I

    .line 2317
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2319
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(B)S

    move-result v8

    .line 2320
    .local v8, "type":I
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    invoke-static {v9}, Lcom/qualcomm/qcrilhook/PrimitiveParser;->toUnsigned(S)I

    move-result v4

    .line 2322
    .local v4, "length":I
    packed-switch v8, :pswitch_data_0

    .line 2350
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "GetPLMNListResponse: Unexpected Type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2353
    .end local v4    # "length":I
    .end local v8    # "type":I
    :catch_0
    move-exception v0

    .line 2354
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Invalid format of byte buffer received in GetPLMNListResponse"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2324
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v4    # "length":I
    .restart local v8    # "type":I
    :pswitch_0
    :try_start_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 2330
    .local v7, "numOfPlmn":B
    mul-int/lit8 v9, v7, 0x6

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    .line 2331
    const/4 v2, 0x0

    .line 2332
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_1

    .line 2333
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 2334
    .local v5, "mccLen":B
    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-virtual {p3, v9, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2335
    add-int/2addr v2, v5

    .line 2336
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 2337
    .local v6, "mncLen":B
    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-virtual {p3, v9, v2, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2338
    add-int/2addr v2, v6

    .line 2339
    const/4 v9, 0x2

    if-ne v6, v9, :cond_0

    .line 2340
    iget-object v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    add-int/lit8 v3, v2, 0x1

    .line 2329
    .end local v2    # "index":I
    .local v3, "index":I
    const/16 v10, 0x20

    .line 2340
    aput-byte v10, v9, v2

    move v2, v3

    .line 2332
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2343
    .end local v5    # "mccLen":B
    .end local v6    # "mncLen":B
    :cond_1
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "plmnList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->plmnList:[B

    invoke-static {v11}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2346
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v7    # "numOfPlmn":B
    :pswitch_1
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    .line 2347
    invoke-static {}, Lcom/qualcomm/qcrilhook/EmbmsOemHook;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "traceId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/qualcomm/qcrilhook/EmbmsOemHook$GetPLMNListResponse;->traceId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2314
    .end local v4    # "length":I
    .end local v8    # "type":I
    :cond_2
    return-void

    .line 2322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
