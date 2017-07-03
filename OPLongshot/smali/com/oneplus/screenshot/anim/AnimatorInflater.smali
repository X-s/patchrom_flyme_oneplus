.class public Lcom/oneplus/screenshot/anim/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TARGET_ANIM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "alpha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Lcom/oneplus/screenshot/anim/TargetAnimator;

    .prologue
    .line 348
    sget-object v15, Lcom/oneplus/screenshot/R$styleable;->Target:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 351
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    .line 353
    .local v12, "target":Landroid/view/View;
    const/4 v15, 0x0

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 354
    .local v13, "viewID":I
    if-lez v13, :cond_0

    .line 355
    invoke-virtual/range {p2 .. p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    move-result-object v15

    invoke-interface {v15, v13}, Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 359
    :cond_0
    if-eqz v12, :cond_2

    .line 360
    new-instance v8, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v8}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 361
    .local v8, "propAnimators":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v10, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v10}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 362
    .local v10, "propStarts":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    new-instance v9, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v9}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    .line 363
    .local v9, "propEnds":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 364
    .local v2, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 365
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 366
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    .line 364
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 368
    :pswitch_0
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 370
    .local v14, "visibility":I
    const-string v15, "visibility"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 374
    .end local v14    # "visibility":I
    :pswitch_1
    const/16 v15, 0x8

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 376
    .restart local v14    # "visibility":I
    const-string v15, "visibility"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 382
    .end local v14    # "visibility":I
    :pswitch_2
    const/4 v15, 0x0

    invoke-virtual {v3, v4, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 383
    .local v11, "resID":I
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 384
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    sget-object v15, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 386
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v8, v7, v6}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 391
    .end local v4    # "attr":I
    .end local v6    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v7    # "name":Ljava/lang/String;
    .end local v11    # "resID":I
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v8}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 392
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v10}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 393
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v9}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    .line 396
    .end local v2    # "N":I
    .end local v5    # "i":I
    .end local v8    # "propAnimators":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v9    # "propEnds":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    .end local v10    # "propStarts":Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    return-void

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 19
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "parent"    # Landroid/animation/AnimatorSet;
    .param p5, "sequenceOrdering"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v10, 0x0

    .line 113
    .local v10, "anim":Landroid/animation/Animator;
    const/4 v12, 0x0

    .line 117
    .local v12, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 120
    .local v13, "depth":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/4 v3, 0x3

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v13, :cond_8

    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_8

    .line 122
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_0

    .line 126
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, "name":Ljava/lang/String;
    const-string v3, "objectAnimator"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 150
    :goto_1
    if-eqz p4, :cond_0

    .line 151
    if-nez v12, :cond_2

    .line 152
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .restart local v12    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_2
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_3
    const-string v3, "animator"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v10

    goto :goto_1

    .line 132
    :cond_4
    const-string v3, "set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 134
    new-instance v10, Landroid/animation/AnimatorSet;

    .end local v10    # "anim":Landroid/animation/Animator;
    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 135
    .restart local v10    # "anim":Landroid/animation/Animator;
    sget-object v3, Landroid/R$styleable;->AnimatorSet:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 137
    .local v9, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .local v8, "ordering":I
    move-object v7, v10

    .line 139
    check-cast v7, Landroid/animation/AnimatorSet;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-static/range {v3 .. v8}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 140
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 141
    .end local v8    # "ordering":I
    .end local v9    # "a":Landroid/content/res/TypedArray;
    :cond_5
    const-string v3, "targetAnimator"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v10

    goto :goto_1

    .line 143
    :cond_6
    const-string v3, "target"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v10

    .line 144
    check-cast v3, Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v3}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V

    goto/16 :goto_0

    .line 147
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown animator name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    .end local v17    # "name":Ljava/lang/String;
    :cond_8
    if-eqz p4, :cond_a

    if-eqz v12, :cond_a

    .line 158
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v11, v3, [Landroid/animation/Animator;

    .line 159
    .local v11, "animsArray":[Landroid/animation/Animator;
    const/4 v15, 0x0

    .line 160
    .local v15, "index":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Animator;

    .line 161
    .local v9, "a":Landroid/animation/Animator;
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "index":I
    .local v16, "index":I
    aput-object v9, v11, v15

    move/from16 v15, v16

    .line 162
    .end local v16    # "index":I
    .restart local v15    # "index":I
    goto :goto_2

    .line 163
    .end local v9    # "a":Landroid/animation/Animator;
    :cond_9
    if-nez p5, :cond_b

    .line 164
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 170
    .end local v11    # "animsArray":[Landroid/animation/Animator;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "index":I
    :cond_a
    :goto_3
    return-object v10

    .line 166
    .restart local v11    # "animsArray":[Landroid/animation/Animator;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v15    # "index":I
    :cond_b
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_3
.end method

.method private static createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 401
    .local v1, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    if-eqz p1, :cond_0

    .line 403
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 405
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 407
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5

    .line 425
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/oneplus/screenshot/anim/TargetAnimator;>;"
    :goto_0
    invoke-virtual {v1, p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V

    .line 426
    return-object v1

    .line 408
    :catch_0
    move-exception v4

    .line 409
    .local v4, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v4}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 410
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v4

    .line 411
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v4

    .line 413
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 415
    .local v4, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 416
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v4

    .line 417
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v4

    .line 419
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator;

    .end local v1    # "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    invoke-direct {v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;-><init>()V

    .restart local v1    # "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    goto :goto_0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 84
    invoke-static {p0, v1, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 98
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 89
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 90
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 96
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "anim"    # Landroid/animation/ValueAnimator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v23, Landroid/R$styleable;->Animator:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 206
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v23, 0x1

    const/16 v24, 0x12c

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    move/from16 v0, v23

    int-to-long v6, v0

    .line 208
    .local v6, "duration":J
    const/16 v23, 0x2

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    move/from16 v0, v23

    int-to-long v14, v0

    .line 210
    .local v14, "startDelay":J
    const/16 v23, 0x7

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    .line 213
    .local v22, "valueType":I
    if-nez p2, :cond_0

    .line 214
    new-instance p2, Landroid/animation/ValueAnimator;

    .end local p2    # "anim":Landroid/animation/ValueAnimator;
    invoke-direct/range {p2 .. p2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 218
    .restart local p2    # "anim":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v5, 0x0

    .line 220
    .local v5, "evaluator":Landroid/animation/TypeEvaluator;
    const/16 v19, 0x5

    .line 221
    .local v19, "valueFromIndex":I
    const/16 v21, 0x6

    .line 223
    .local v21, "valueToIndex":I
    if-nez v22, :cond_9

    const/4 v9, 0x1

    .line 225
    .local v9, "getFloats":Z
    :goto_0
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v16

    .line 226
    .local v16, "tvFrom":Landroid/util/TypedValue;
    if-eqz v16, :cond_a

    const/4 v10, 0x1

    .line 227
    .local v10, "hasFrom":Z
    :goto_1
    if-eqz v10, :cond_b

    move-object/from16 v0, v16

    iget v8, v0, Landroid/util/TypedValue;->type:I

    .line 228
    .local v8, "fromType":I
    :goto_2
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v17

    .line 229
    .local v17, "tvTo":Landroid/util/TypedValue;
    if-eqz v17, :cond_c

    const/4 v11, 0x1

    .line 230
    .local v11, "hasTo":Z
    :goto_3
    if-eqz v11, :cond_d

    move-object/from16 v0, v17

    iget v13, v0, Landroid/util/TypedValue;->type:I

    .line 232
    .local v13, "toType":I
    :goto_4
    if-eqz v10, :cond_1

    const/16 v23, 0x1c

    move/from16 v0, v23

    if-lt v8, v0, :cond_1

    const/16 v23, 0x1f

    move/from16 v0, v23

    if-le v8, v0, :cond_2

    :cond_1
    if-eqz v11, :cond_3

    const/16 v23, 0x1c

    move/from16 v0, v23

    if-lt v13, v0, :cond_3

    const/16 v23, 0x1f

    move/from16 v0, v23

    if-gt v13, v0, :cond_3

    .line 237
    :cond_2
    const/4 v9, 0x0

    .line 238
    new-instance v23, Landroid/animation/ArgbEvaluator;

    invoke-direct/range {v23 .. v23}, Landroid/animation/ArgbEvaluator;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 241
    :cond_3
    if-eqz v9, :cond_13

    .line 244
    if-eqz v10, :cond_11

    .line 245
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v8, v0, :cond_e

    .line 246
    const/16 v23, 0x0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 250
    .local v18, "valueFrom":F
    :goto_5
    if-eqz v11, :cond_10

    .line 251
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v13, v0, :cond_f

    .line 252
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    .line 256
    .local v20, "valueTo":F
    :goto_6
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v18, v23, v24

    const/16 v24, 0x1

    aput v20, v23, v24

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 308
    .end local v18    # "valueFrom":F
    .end local v20    # "valueTo":F
    :cond_4
    :goto_7
    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 311
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 312
    const/16 v23, 0x3

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 315
    :cond_5
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 316
    const/16 v23, 0x4

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 320
    :cond_6
    if-eqz v5, :cond_7

    .line 321
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 324
    :cond_7
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 326
    .local v12, "resID":I
    if-lez v12, :cond_8

    .line 327
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    :cond_8
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    return-object p2

    .line 223
    .end local v8    # "fromType":I
    .end local v9    # "getFloats":Z
    .end local v10    # "hasFrom":Z
    .end local v11    # "hasTo":Z
    .end local v12    # "resID":I
    .end local v13    # "toType":I
    .end local v16    # "tvFrom":Landroid/util/TypedValue;
    .end local v17    # "tvTo":Landroid/util/TypedValue;
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 226
    .restart local v9    # "getFloats":Z
    .restart local v16    # "tvFrom":Landroid/util/TypedValue;
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 227
    .restart local v10    # "hasFrom":Z
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 229
    .restart local v8    # "fromType":I
    .restart local v17    # "tvTo":Landroid/util/TypedValue;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 230
    .restart local v11    # "hasTo":Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 248
    .restart local v13    # "toType":I
    :cond_e
    const/16 v23, 0x0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v18

    .restart local v18    # "valueFrom":F
    goto/16 :goto_5

    .line 254
    :cond_f
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .restart local v20    # "valueTo":F
    goto/16 :goto_6

    .line 258
    .end local v20    # "valueTo":F
    :cond_10
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v18, v23, v24

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_7

    .line 261
    .end local v18    # "valueFrom":F
    :cond_11
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v13, v0, :cond_12

    .line 262
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v20

    .line 266
    .restart local v20    # "valueTo":F
    :goto_8
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v20, v23, v24

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_7

    .line 264
    .end local v20    # "valueTo":F
    :cond_12
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .restart local v20    # "valueTo":F
    goto :goto_8

    .line 271
    .end local v20    # "valueTo":F
    :cond_13
    if-eqz v10, :cond_19

    .line 272
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v8, v0, :cond_14

    .line 273
    const/16 v23, 0x0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v18, v0

    .line 280
    .local v18, "valueFrom":I
    :goto_9
    if-eqz v11, :cond_18

    .line 281
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v13, v0, :cond_16

    .line 282
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v20, v0

    .line 289
    .local v20, "valueTo":I
    :goto_a
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v18, v23, v24

    const/16 v24, 0x1

    aput v20, v23, v24

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 274
    .end local v18    # "valueFrom":I
    .end local v20    # "valueTo":I
    :cond_14
    const/16 v23, 0x1c

    move/from16 v0, v23

    if-lt v8, v0, :cond_15

    const/16 v23, 0x1f

    move/from16 v0, v23

    if-gt v8, v0, :cond_15

    .line 276
    const/16 v23, 0x0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    .restart local v18    # "valueFrom":I
    goto :goto_9

    .line 278
    .end local v18    # "valueFrom":I
    :cond_15
    const/16 v23, 0x0

    move/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .restart local v18    # "valueFrom":I
    goto :goto_9

    .line 283
    :cond_16
    const/16 v23, 0x1c

    move/from16 v0, v23

    if-lt v13, v0, :cond_17

    const/16 v23, 0x1f

    move/from16 v0, v23

    if-gt v13, v0, :cond_17

    .line 285
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    .restart local v20    # "valueTo":I
    goto :goto_a

    .line 287
    .end local v20    # "valueTo":I
    :cond_17
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .restart local v20    # "valueTo":I
    goto :goto_a

    .line 291
    .end local v20    # "valueTo":I
    :cond_18
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v18, v23, v24

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 294
    .end local v18    # "valueFrom":I
    :cond_19
    if-eqz v11, :cond_4

    .line 295
    const/16 v23, 0x5

    move/from16 v0, v23

    if-ne v13, v0, :cond_1a

    .line 296
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v20, v0

    .line 303
    .restart local v20    # "valueTo":I
    :goto_b
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput v20, v23, v24

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7

    .line 297
    .end local v20    # "valueTo":I
    :cond_1a
    const/16 v23, 0x1c

    move/from16 v0, v23

    if-lt v13, v0, :cond_1b

    const/16 v23, 0x1f

    move/from16 v0, v23

    if-gt v13, v0, :cond_1b

    .line 299
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v20

    .restart local v20    # "valueTo":I
    goto :goto_b

    .line 301
    .end local v20    # "valueTo":I
    :cond_1b
    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v20

    .restart local v20    # "valueTo":I
    goto :goto_b
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 179
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 181
    sget-object v3, Landroid/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    return-object v1
.end method

.method private static loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "loader"    # Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v2, 0x0

    const-string v3, "class"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v0

    .line 341
    .local v0, "anim":Lcom/oneplus/screenshot/anim/TargetAnimator;
    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 343
    return-object v0
.end method
