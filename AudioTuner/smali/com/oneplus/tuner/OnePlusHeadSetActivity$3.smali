.class Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;
.super Ljava/lang/Object;
.source "OnePlusHeadSetActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/OnePlusHeadSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 195
    .local v6, "t1":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # invokes: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->readBrandAndModelFromXML()V
    invoke-static {v14}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$300(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 197
    .local v8, "t2":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mConfigArray:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$400(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/ArrayList;

    move-result-object v15

    # invokes: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->transformatData(Ljava/util/ArrayList;)V
    invoke-static {v14, v15}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$500(Lcom/oneplus/tuner/OnePlusHeadSetActivity;Ljava/util/ArrayList;)V

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 199
    .local v10, "t3":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$600(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$700(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/HashMap;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->mBrands:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$600(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 224
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/tuner/providers/OfficialEarphone;

    .line 225
    .local v2, "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    const-string v14, "shuqi0703"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bean = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->modeAndId:Ljava/util/HashMap;
    invoke-static {v14}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$800(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Ljava/util/HashMap;

    move-result-object v14

    invoke-virtual {v2}, Lcom/oneplus/tuner/providers/OfficialEarphone;->getModel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/oneplus/tuner/providers/OfficialEarphone;->setTypeId(J)V

    .line 227
    const-string v14, "shuqi0703"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "after bean = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    .end local v2    # "bean":Lcom/oneplus/tuner/providers/OfficialEarphone;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 230
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/tuner/providers/OfficialEarphone;>;"
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 231
    .local v12, "t4":J
    const-string v14, "shuqi"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "read xml = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v8, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", transform = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v10, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", net query = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v12, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", total = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v12, v6

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->handler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$900(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/tuner/OnePlusHeadSetActivity$3;->this$0:Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    # getter for: Lcom/oneplus/tuner/OnePlusHeadSetActivity;->handler:Landroid/os/Handler;
    invoke-static {v14}, Lcom/oneplus/tuner/OnePlusHeadSetActivity;->access$900(Lcom/oneplus/tuner/OnePlusHeadSetActivity;)Landroid/os/Handler;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    return-void
.end method
