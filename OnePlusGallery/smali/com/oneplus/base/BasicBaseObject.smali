.class public abstract Lcom/oneplus/base/BasicBaseObject;
.super Lcom/oneplus/base/BasicThreadDependentObject;
.source "BasicBaseObject.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/base/BasicBaseObject$Event;,
        Lcom/oneplus/base/BasicBaseObject$Property;
    }
.end annotation


# static fields
.field public static final LOG_EVENT_HANDLER:I = 0x400

.field public static final LOG_EVENT_HANDLER_CHANGE:I = 0x200

.field public static final LOG_EVENT_RAISE:I = 0x100

.field public static final LOG_PROPERTY_CALLBACK:I = 0x4

.field public static final LOG_PROPERTY_CALLBACK_CHANGE:I = 0x2

.field public static final LOG_PROPERTY_CHANGE:I = 0x1


# instance fields
.field private final m_Events:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oneplus/base/BasicBaseObject$Event;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_IsReleased:Z

.field private final m_Properties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oneplus/base/BasicBaseObject$Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/oneplus/base/BasicThreadDependentObject;-><init>()V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    .line 87
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oneplus/base/BasicThreadDependentObject;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    .line 97
    return-void
.end method

.method private checkValueChanges(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 219
    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 220
    goto :goto_0

    .line 221
    :cond_2
    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private notifyPropertyChanged(Lcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 20
    .param p1, "property"    # Lcom/oneplus/base/BasicBaseObject$Property;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->checkValueChanges(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 377
    const/4 v14, 0x0

    .line 422
    :cond_0
    :goto_0
    return v14

    .line 380
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->version:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->version:I

    .line 383
    const/4 v14, 0x1

    .line 384
    .local v14, "result":Z
    move-object/from16 v0, p1

    iget v11, v0, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    .line 385
    .local v11, "logFlags":I
    and-int/lit8 v16, v11, 0x2

    if-eqz v16, :cond_8

    const/4 v12, 0x1

    .line 386
    .local v12, "printCallbackChangeLog":Z
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    .line 390
    and-int/lit8 v16, v11, 0x1

    if-eqz v16, :cond_2

    .line 391
    const/16 v16, 0x3

    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " -> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 394
    :cond_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    .line 395
    .local v5, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyChangedCallback<*>;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_3

    .line 397
    move-object/from16 v0, p1

    iget v15, v0, Lcom/oneplus/base/BasicBaseObject$Property;->version:I

    .line 398
    .local v15, "version":I
    invoke-static/range {p2 .. p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/base/PropertyChangeEventArgs;

    move-result-object v7

    .line 399
    .local v7, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/oneplus/base/BasicBaseObject$Property;->key:Lcom/oneplus/base/PropertyKey;

    .line 400
    .local v10, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    and-int/lit8 v16, v11, 0x4

    if-eqz v16, :cond_9

    const/4 v13, 0x1

    .line 401
    .local v13, "printCallbackLog":Z
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "count":I
    :goto_3
    if-lt v8, v6, :cond_a

    .line 418
    :goto_4
    invoke-virtual {v7}, Lcom/oneplus/base/PropertyChangeEventArgs;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v6    # "count":I
    .end local v7    # "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    .end local v8    # "i":I
    .end local v10    # "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .end local v13    # "printCallbackLog":Z
    .end local v15    # "version":I
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    .line 430
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    move/from16 v16, v0

    if-gtz v16, :cond_0

    .line 433
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 435
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 437
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v8, v16, -0x1

    .restart local v8    # "i":I
    :goto_5
    if-gez v8, :cond_e

    .line 449
    .end local v8    # "i":I
    :cond_4
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    .line 453
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    .line 457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 458
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    .line 459
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "i":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "count":I
    :goto_6
    if-lt v8, v6, :cond_11

    .line 467
    .end local v6    # "count":I
    .end local v8    # "i":I
    :cond_7
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    goto/16 :goto_0

    .line 385
    .end local v5    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyChangedCallback<*>;>;"
    .end local v12    # "printCallbackChangeLog":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 400
    .restart local v5    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyChangedCallback<*>;>;"
    .restart local v7    # "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    .restart local v10    # "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .restart local v12    # "printCallbackChangeLog":Z
    .restart local v15    # "version":I
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 404
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    .restart local v13    # "printCallbackLog":Z
    :cond_a
    :try_start_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/PropertyChangedCallback;

    .line 405
    .local v4, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    if-eqz v13, :cond_b

    .line 406
    const/16 v16, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Call ["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/PropertyKey;Ljava/lang/String;)V

    .line 407
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4, v10, v7}, Lcom/oneplus/base/BasicBaseObject;->callPropertyChangedCallback(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyChangedCallback;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 410
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->version:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_d

    .line 412
    and-int/lit8 v16, v11, 0x1

    if-eqz v16, :cond_c

    .line 413
    const/16 v16, 0x5

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Value changed after calling call-back ["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v10, v2}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/PropertyKey;Ljava/lang/String;)V

    .line 414
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/oneplus/base/BasicBaseObject;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->checkValueChanges(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v14

    .line 415
    goto/16 :goto_4

    .line 401
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 439
    .end local v4    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    .end local v6    # "count":I
    .end local v7    # "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<*>;"
    .end local v10    # "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    .end local v13    # "printCallbackLog":Z
    .end local v15    # "version":I
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/PropertyChangedCallback;

    .line 440
    .restart local v4    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 441
    .local v9, "index":I
    if-ltz v9, :cond_10

    .line 443
    if-eqz v12, :cond_f

    .line 444
    const/16 v16, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Remove deferred removing call-back ["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 445
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 437
    :cond_10
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_5

    .line 461
    .end local v4    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    .end local v9    # "index":I
    .restart local v6    # "count":I
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/PropertyChangedCallback;

    .line 462
    .restart local v4    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    if-eqz v12, :cond_12

    .line 463
    const/16 v16, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Add deferred adding call-back ["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 464
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 425
    .end local v4    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    .end local v5    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyChangedCallback<*>;>;"
    .end local v6    # "count":I
    .end local v8    # "i":I
    :catchall_0
    move-exception v16

    .line 427
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    .line 430
    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    move/from16 v17, v0

    if-gtz v17, :cond_17

    .line 433
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    .line 435
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 437
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .restart local v8    # "i":I
    :goto_7
    if-gez v8, :cond_18

    .line 449
    .end local v8    # "i":I
    :cond_13
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    .line 453
    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 455
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_16

    .line 457
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 458
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    .line 459
    :cond_15
    const/4 v8, 0x0

    .restart local v8    # "i":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    .restart local v6    # "count":I
    :goto_8
    if-lt v8, v6, :cond_1b

    .line 467
    .end local v6    # "count":I
    .end local v8    # "i":I
    :cond_16
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    .line 470
    :cond_17
    throw v16

    .line 439
    .restart local v8    # "i":I
    :cond_18
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/PropertyChangedCallback;

    .line 440
    .restart local v4    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 441
    .restart local v9    # "index":I
    if-ltz v9, :cond_1a

    .line 443
    if-eqz v12, :cond_19

    .line 444
    const/16 v17, 0x3

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Remove deferred removing call-back ["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 445
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 437
    :cond_1a
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_7

    .line 461
    .end local v4    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    .end local v9    # "index":I
    .restart local v6    # "count":I
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/base/PropertyChangedCallback;

    .line 462
    .restart local v4    # "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<*>;"
    if-eqz v12, :cond_1c

    .line 463
    const/16 v17, 0x3

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Add deferred adding call-back ["

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 464
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8
.end method

.method private printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V
    .locals 3
    .param p1, "priority"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oneplus/base/EventKey",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 484
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BasicBaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Event] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method private printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "property"    # Lcom/oneplus/base/BasicBaseObject$Property;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v0, p2, Lcom/oneplus/base/BasicBaseObject$Property;->key:Lcom/oneplus/base/PropertyKey;

    invoke-direct {p0, p1, v0, p3}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/PropertyKey;Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method private printPropertyLog(ILcom/oneplus/base/PropertyKey;Ljava/lang/String;)V
    .locals 3
    .param p1, "priority"    # I
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 495
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p0, Lcom/oneplus/base/BasicBaseObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Property] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method private setInternal(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 735
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p0, p1}, Lcom/oneplus/base/BasicBaseObject;->verifyProperty(Lcom/oneplus/base/PropertyKey;)V

    .line 738
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 740
    iget-object v2, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v3, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 741
    .local v1, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    if-eqz v1, :cond_1

    .line 742
    iget-boolean v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->hasValue:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->value:Ljava/lang/Object;

    .line 751
    .local v0, "oldValue":Ljava/lang/Object;, "TTValue;"
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->hasValue:Z

    .line 752
    iput-object p2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->value:Ljava/lang/Object;

    .line 755
    invoke-direct {p0, v1, v0, p2}, Lcom/oneplus/base/BasicBaseObject;->notifyPropertyChanged(Lcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 742
    .end local v0    # "oldValue":Ljava/lang/Object;, "TTValue;"
    :cond_0
    iget-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->key:Lcom/oneplus/base/PropertyKey;

    iget-object v0, v2, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 745
    :cond_1
    new-instance v1, Lcom/oneplus/base/BasicBaseObject$Property;

    .end local v1    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    invoke-direct {v1, p1}, Lcom/oneplus/base/BasicBaseObject$Property;-><init>(Lcom/oneplus/base/PropertyKey;)V

    .line 746
    .restart local v1    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    iget-object v2, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v3, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 747
    iget-object v0, p1, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    .restart local v0    # "oldValue":Ljava/lang/Object;, "TTValue;"
    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    const/4 v3, 0x3

    .line 105
    if-nez p2, :cond_0

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No call-back."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 108
    iget-boolean v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    if-eqz v1, :cond_2

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 113
    .local v0, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    if-nez v0, :cond_3

    .line 115
    new-instance v0, Lcom/oneplus/base/BasicBaseObject$Property;

    .end local v0    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    invoke-direct {v0, p1}, Lcom/oneplus/base/BasicBaseObject$Property;-><init>(Lcom/oneplus/base/PropertyKey;)V

    .line 116
    .restart local v0    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    :cond_3
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    if-gtz v1, :cond_6

    .line 122
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    if-nez v1, :cond_4

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    .line 124
    :cond_4
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add call-back ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 126
    :cond_5
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_6
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 132
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel deferred removing call-back "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_7
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    if-nez v1, :cond_8

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    .line 138
    :cond_8
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create deferred adding call-back "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 140
    :cond_9
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    const/4 v3, 0x3

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 151
    if-nez p2, :cond_0

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No handler."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    if-eqz v1, :cond_2

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/EventKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .line 158
    .local v0, "event":Lcom/oneplus/base/BasicBaseObject$Event;
    if-nez v0, :cond_3

    .line 160
    new-instance v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .end local v0    # "event":Lcom/oneplus/base/BasicBaseObject$Event;
    invoke-direct {v0, p1}, Lcom/oneplus/base/BasicBaseObject$Event;-><init>(Lcom/oneplus/base/EventKey;)V

    .line 161
    .restart local v0    # "event":Lcom/oneplus/base/BasicBaseObject$Event;
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/EventKey;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    :cond_3
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    if-gtz v1, :cond_6

    .line 167
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    if-nez v1, :cond_4

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    .line 169
    :cond_4
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_5

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add handler ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, p1, v1}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 171
    :cond_5
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_6
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 177
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel deferred removing handler "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, p1, v1}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_7
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    if-nez v1, :cond_8

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    .line 183
    :cond_8
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create deferred adding handler "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, p1, v1}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 185
    :cond_9
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected callEventHandler(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventHandler;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;TTArgs;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    .local p3, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p4, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    invoke-interface {p2, p1, p3, p4}, Lcom/oneplus/base/EventHandler;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 200
    return-void
.end method

.method protected callPropertyChangedCallback(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyChangedCallback;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    .local p3, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p4, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<TTValue;>;"
    invoke-interface {p2, p1, p3, p4}, Lcom/oneplus/base/PropertyChangedCallback;->onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 213
    return-void
.end method

.method public final disableEventLogs(Lcom/oneplus/base/EventKey;I)V
    .locals 3
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 236
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/EventKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .line 237
    .local v0, "event":Lcom/oneplus/base/BasicBaseObject$Event;
    if-eqz v0, :cond_0

    .line 238
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    .line 239
    :cond_0
    return-void
.end method

.method public final disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V
    .locals 3
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 253
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 254
    .local v0, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    if-eqz v0, :cond_0

    .line 255
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    .line 256
    :cond_0
    return-void
.end method

.method public final enableEventLogs(Lcom/oneplus/base/EventKey;I)V
    .locals 3
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 270
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/EventKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .line 271
    .local v0, "event":Lcom/oneplus/base/BasicBaseObject$Event;
    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .end local v0    # "event":Lcom/oneplus/base/BasicBaseObject$Event;
    invoke-direct {v0, p1}, Lcom/oneplus/base/BasicBaseObject$Event;-><init>(Lcom/oneplus/base/EventKey;)V

    .line 274
    .restart local v0    # "event":Lcom/oneplus/base/BasicBaseObject$Event;
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/EventKey;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    :cond_0
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    .line 277
    return-void
.end method

.method public final enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V
    .locals 3
    .param p2, "logs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 291
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 292
    .local v0, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/oneplus/base/BasicBaseObject$Property;

    .end local v0    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    invoke-direct {v0, p1}, Lcom/oneplus/base/BasicBaseObject$Property;-><init>(Lcom/oneplus/base/PropertyKey;)V

    .line 295
    .restart local v0    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    :cond_0
    iget v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    .line 298
    return-void
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v1, Lcom/oneplus/base/BasicBaseObject;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v1, :cond_0

    .line 307
    iget-boolean v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 315
    :goto_0
    return-object v1

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 311
    .local v0, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    :goto_1
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->key:Lcom/oneplus/base/PropertyKey;

    if-ne v1, p1, :cond_2

    .line 313
    :cond_1
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->hasValue:Z

    if-eqz v1, :cond_3

    .line 314
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Property;->value:Ljava/lang/Object;

    goto :goto_0

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Property;

    .restart local v0    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    goto :goto_1

    .line 315
    :cond_3
    iget-object v1, p1, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected hasCallbacks(Lcom/oneplus/base/PropertyKey;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v4, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 345
    .local v1, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/oneplus/base/BasicBaseObject$Property;->key:Lcom/oneplus/base/PropertyKey;

    if-ne v3, p1, :cond_2

    .line 347
    :cond_0
    if-nez v1, :cond_3

    .line 350
    :cond_1
    :goto_1
    return v2

    .line 346
    :cond_2
    iget-object v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v4, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    check-cast v1, Lcom/oneplus/base/BasicBaseObject$Property;

    .restart local v1    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    goto :goto_0

    .line 349
    :cond_3
    iget-object v0, v1, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    .line 350
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/PropertyChangedCallback<*>;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected hasHandlers(Lcom/oneplus/base/EventKey;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    const/4 v2, 0x0

    .line 361
    iget-object v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    iget v4, p1, Lcom/oneplus/base/EventKey;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .line 362
    .local v0, "event":Lcom/oneplus/base/BasicBaseObject$Event;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/oneplus/base/BasicBaseObject$Event;->key:Lcom/oneplus/base/EventKey;

    if-ne v3, p1, :cond_2

    .line 364
    :cond_0
    if-nez v0, :cond_3

    .line 367
    :cond_1
    :goto_1
    return v2

    .line 363
    :cond_2
    iget-object v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    iget v4, p1, Lcom/oneplus/base/EventKey;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "event":Lcom/oneplus/base/BasicBaseObject$Event;
    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .restart local v0    # "event":Lcom/oneplus/base/BasicBaseObject$Event;
    goto :goto_0

    .line 366
    :cond_3
    iget-object v1, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    .line 367
    .local v1, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventHandler<*>;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "oldValue":Ljava/lang/Object;, "TTValue;"
    .local p3, "newValue":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 330
    iget-object v1, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v2, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 331
    .local v0, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, v0, p2, p3}, Lcom/oneplus/base/BasicBaseObject;->notifyPropertyChanged(Lcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 333
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/base/BasicBaseObject;->checkValueChanges(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method protected raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;TTArgs;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "e":Lcom/oneplus/base/EventArgs;, "TTArgs;"
    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/base/BasicBaseObject;->verifyEvent(Lcom/oneplus/base/EventKey;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 512
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    if-eqz v15, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oneplus/base/EventKey;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/BasicBaseObject$Event;

    .line 517
    .local v5, "event":Lcom/oneplus/base/BasicBaseObject$Event;
    if-eqz v5, :cond_0

    .line 519
    iget v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    .line 520
    iget v11, v5, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    .line 523
    .local v11, "logFlags":I
    and-int/lit16 v15, v11, 0x100

    if-eqz v15, :cond_9

    const/4 v14, 0x1

    .line 524
    .local v14, "printRaiseLog":Z
    :goto_1
    :try_start_0
    iget-object v8, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    .line 525
    .local v8, "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventHandler<*>;>;"
    if-eqz v14, :cond_2

    .line 526
    const/4 v15, 0x3

    const-string v16, "Raise [start]"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 527
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    .line 529
    and-int/lit16 v15, v11, 0x400

    if-eqz v15, :cond_a

    const/4 v13, 0x1

    .line 530
    .local v13, "printHandlerLog":Z
    :goto_2
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_3
    if-lt v9, v4, :cond_b

    .line 538
    .end local v4    # "count":I
    .end local v9    # "i":I
    .end local v13    # "printHandlerLog":Z
    :cond_3
    if-eqz v14, :cond_4

    .line 539
    const/4 v15, 0x3

    const-string v16, "Raise [end]"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_4
    iget v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    add-int/lit8 v15, v15, -0x1

    iput v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    .line 547
    iget v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    if-gtz v15, :cond_0

    .line 550
    and-int/lit16 v15, v11, 0x200

    if-eqz v15, :cond_18

    const/4 v12, 0x1

    .line 551
    .local v12, "printHandlerChangeLog":Z
    :goto_4
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    if-eqz v15, :cond_6

    .line 553
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    if-eqz v15, :cond_5

    .line 555
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    .restart local v9    # "i":I
    :goto_5
    if-gez v9, :cond_19

    .line 567
    .end local v9    # "i":I
    :cond_5
    const/4 v15, 0x0

    iput-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    .line 571
    :cond_6
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    if-eqz v15, :cond_0

    .line 573
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    .line 575
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    if-nez v15, :cond_7

    .line 576
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    .line 577
    :cond_7
    const/4 v9, 0x0

    .restart local v9    # "i":I
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "count":I
    :goto_6
    if-lt v9, v4, :cond_1c

    .line 585
    .end local v4    # "count":I
    .end local v9    # "i":I
    :cond_8
    const/4 v15, 0x0

    iput-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    goto/16 :goto_0

    .line 523
    .end local v8    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventHandler<*>;>;"
    .end local v12    # "printHandlerChangeLog":Z
    .end local v14    # "printRaiseLog":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 529
    .restart local v8    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventHandler<*>;>;"
    .restart local v14    # "printRaiseLog":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_2

    .line 532
    .restart local v4    # "count":I
    .restart local v9    # "i":I
    .restart local v13    # "printHandlerLog":Z
    :cond_b
    :try_start_1
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/EventHandler;

    .line 533
    .local v6, "handler":Lcom/oneplus/base/EventHandler;
    if-eqz v13, :cond_c

    .line 534
    const/4 v15, 0x3

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Call ["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 535
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/oneplus/base/BasicBaseObject;->callEventHandler(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventHandler;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 542
    .end local v4    # "count":I
    .end local v6    # "handler":Lcom/oneplus/base/EventHandler;
    .end local v8    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventHandler<*>;>;"
    .end local v9    # "i":I
    .end local v13    # "printHandlerLog":Z
    :catchall_0
    move-exception v15

    .line 544
    iget v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    iput v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    .line 547
    iget v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    move/from16 v16, v0

    if-gtz v16, :cond_11

    .line 550
    and-int/lit16 v0, v11, 0x200

    move/from16 v16, v0

    if-eqz v16, :cond_12

    const/4 v12, 0x1

    .line 551
    .restart local v12    # "printHandlerChangeLog":Z
    :goto_7
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    .line 553
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 555
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v9, v16, -0x1

    .restart local v9    # "i":I
    :goto_8
    if-gez v9, :cond_13

    .line 567
    .end local v9    # "i":I
    :cond_d
    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    .line 571
    :cond_e
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    .line 573
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_10

    .line 575
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    .line 576
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    .line 577
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "i":I
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    .restart local v4    # "count":I
    :goto_9
    if-lt v9, v4, :cond_16

    .line 585
    .end local v4    # "count":I
    .end local v9    # "i":I
    :cond_10
    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    .line 588
    .end local v12    # "printHandlerChangeLog":Z
    :cond_11
    throw v15

    .line 550
    :cond_12
    const/4 v12, 0x0

    goto :goto_7

    .line 557
    .restart local v9    # "i":I
    .restart local v12    # "printHandlerChangeLog":Z
    :cond_13
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/EventHandler;

    .line 558
    .local v7, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<*>;"
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 559
    .local v10, "index":I
    if-ltz v10, :cond_15

    .line 561
    if-eqz v12, :cond_14

    .line 562
    const/16 v16, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Remove deferred removing handler ["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 563
    :cond_14
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    :cond_15
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_8

    .line 579
    .end local v7    # "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<*>;"
    .end local v10    # "index":I
    .restart local v4    # "count":I
    :cond_16
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/EventHandler;

    .line 580
    .restart local v7    # "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<*>;"
    if-eqz v12, :cond_17

    .line 581
    const/16 v16, 0x3

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Add deferred adding handler ["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "] "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 582
    :cond_17
    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_9

    .line 550
    .end local v4    # "count":I
    .end local v7    # "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<*>;"
    .end local v9    # "i":I
    .end local v12    # "printHandlerChangeLog":Z
    .restart local v8    # "handlers":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/base/EventHandler<*>;>;"
    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 557
    .restart local v9    # "i":I
    .restart local v12    # "printHandlerChangeLog":Z
    :cond_19
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/EventHandler;

    .line 558
    .restart local v7    # "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<*>;"
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 559
    .restart local v10    # "index":I
    if-ltz v10, :cond_1b

    .line 561
    if-eqz v12, :cond_1a

    .line 562
    const/4 v15, 0x3

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Remove deferred removing handler ["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 563
    :cond_1a
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 555
    :cond_1b
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_5

    .line 579
    .end local v7    # "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<*>;"
    .end local v10    # "index":I
    .restart local v4    # "count":I
    :cond_1c
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/EventHandler;

    .line 580
    .restart local v7    # "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<*>;"
    if-eqz v12, :cond_1d

    .line 581
    const/4 v15, 0x3

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Add deferred adding handler ["

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "] "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 582
    :cond_1d
    iget-object v15, v5, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6
.end method

.method public final release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 598
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 599
    iget-boolean v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    if-eqz v3, :cond_0

    .line 625
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->onRelease()V

    .line 606
    iget-object v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-gez v1, :cond_1

    .line 615
    iget-object v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_2
    if-gez v1, :cond_2

    .line 624
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    goto :goto_0

    .line 608
    :cond_1
    iget-object v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 609
    .local v2, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    iput-object v4, v2, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    .line 610
    iput-object v4, v2, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    .line 611
    iput-object v4, v2, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    .line 606
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 617
    .end local v2    # "property":Lcom/oneplus/base/BasicBaseObject$Property;
    :cond_2
    iget-object v3, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .line 618
    .local v0, "event":Lcom/oneplus/base/BasicBaseObject$Event;
    iput-object v4, v0, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    .line 619
    iput-object v4, v0, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    .line 620
    iput-object v4, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    .line 615
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "callback":Lcom/oneplus/base/PropertyChangedCallback;, "Lcom/oneplus/base/PropertyChangedCallback<TTValue;>;"
    const/4 v4, 0x3

    .line 633
    if-nez p2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 636
    iget-boolean v2, p0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    if-nez v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/oneplus/base/BasicBaseObject;->m_Properties:Landroid/util/SparseArray;

    iget v3, p1, Lcom/oneplus/base/PropertyKey;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/base/BasicBaseObject$Property;

    .line 641
    .local v1, "property":Lcom/oneplus/base/BasicBaseObject$Property;
    if-eqz v1, :cond_0

    .line 645
    iget v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->updatingCounter:I

    if-gtz v2, :cond_3

    .line 647
    iget-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 649
    iget-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 650
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 652
    iget v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remove call-back ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 654
    :cond_2
    iget-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->callbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 660
    .end local v0    # "index":I
    :cond_3
    iget-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->addingCallbacks:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 662
    iget v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancel deferred adding call-back "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_4
    iget-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    if-nez v2, :cond_5

    .line 667
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    .line 668
    :cond_5
    iget v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->logFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create deferred removing call-back "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lcom/oneplus/base/BasicBaseObject;->printPropertyLog(ILcom/oneplus/base/BasicBaseObject$Property;Ljava/lang/String;)V

    .line 670
    :cond_6
    iget-object v2, v1, Lcom/oneplus/base/BasicBaseObject$Property;->removingCallbacks:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<TTArgs;>;"
    .local p2, "handler":Lcom/oneplus/base/EventHandler;, "Lcom/oneplus/base/EventHandler<TTArgs;>;"
    const/4 v4, 0x3

    .line 680
    invoke-virtual {p0}, Lcom/oneplus/base/BasicBaseObject;->verifyAccess()V

    .line 681
    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    if-eqz v2, :cond_1

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-object v2, p0, Lcom/oneplus/base/BasicBaseObject;->m_Events:Landroid/util/SparseArray;

    iget v3, p1, Lcom/oneplus/base/EventKey;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BasicBaseObject$Event;

    .line 686
    .local v0, "event":Lcom/oneplus/base/BasicBaseObject$Event;
    if-eqz v0, :cond_0

    .line 690
    iget v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->raisingCounter:I

    if-gtz v2, :cond_3

    .line 692
    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 694
    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 695
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 697
    iget v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remove handler ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, p1, v2}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 699
    :cond_2
    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->handlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 705
    .end local v1    # "index":I
    :cond_3
    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->addingHandlers:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 707
    iget v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_0

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancel deferred adding handler "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, p1, v2}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_4
    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    if-nez v2, :cond_5

    .line 712
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    .line 713
    :cond_5
    iget v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->logFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_6

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Create deferred removing handler "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, p1, v2}, Lcom/oneplus/base/BasicBaseObject;->printEventLog(ILcom/oneplus/base/EventKey;Ljava/lang/String;)V

    .line 715
    :cond_6
    iget-object v2, v0, Lcom/oneplus/base/BasicBaseObject$Event;->removingHandlers:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 724
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    invoke-virtual {p1}, Lcom/oneplus/base/PropertyKey;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->setInternal(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/base/BasicBaseObject;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot set property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/base/PropertyKey;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    .line 771
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oneplus/base/BasicBaseObject;->setInternal(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected verifyEvent(Lcom/oneplus/base/EventKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<*>;"
    iget-object v0, p1, Lcom/oneplus/base/EventKey;->ownerType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not owned by type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_0
    return-void
.end method

.method protected verifyProperty(Lcom/oneplus/base/PropertyKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<*>;"
    iget-object v0, p1, Lcom/oneplus/base/PropertyKey;->ownerType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/base/PropertyKey;->isAttachable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not owned by type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    return-void
.end method

.method protected final verifyReleaseState()V
    .locals 2

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/oneplus/base/BasicBaseObject;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 803
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Object has been released."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_0
    return-void
.end method
