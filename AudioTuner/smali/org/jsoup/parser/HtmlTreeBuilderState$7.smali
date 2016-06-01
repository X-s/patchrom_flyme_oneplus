.class enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$jsoup$parser$Token$TokenType:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$jsoup$parser$Token$TokenType()[I
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->$SWITCH_TABLE$org$jsoup$parser$Token$TokenType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/jsoup/parser/Token$TokenType;->values()[Lorg/jsoup/parser/Token$TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->$SWITCH_TABLE$org$jsoup$parser$Token$TokenType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 1
    return-void
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 5
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    .line 764
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v3

    .line 766
    .local v3, "stack":Lorg/jsoup/helper/DescendableLinkedList;, "Lorg/jsoup/helper/DescendableLinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual {v3}, Lorg/jsoup/helper/DescendableLinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 767
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jsoup/nodes/Element;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 782
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 768
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 769
    .local v2, "node":Lorg/jsoup/nodes/Element;
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 770
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 772
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 773
    :cond_2
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_3
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 777
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 778
    const/4 v4, 0x0

    goto :goto_1
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 40
    .param p1, "t"    # Lorg/jsoup/parser/Token;
    .param p2, "tb"    # Lorg/jsoup/parser/HtmlTreeBuilder;

    .prologue
    .line 247
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->$SWITCH_TABLE$org$jsoup$parser$Token$TokenType()[I

    move-result-object v35

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/jsoup/parser/Token;->type:Lorg/jsoup/parser/Token$TokenType;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lorg/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v36

    aget v35, v35, v36

    packed-switch v35, :pswitch_data_0

    .line 760
    :cond_0
    :goto_0
    const/16 v35, 0x1

    :goto_1
    return v35

    .line 249
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asCharacter()Lorg/jsoup/parser/Token$Character;

    move-result-object v8

    .line 250
    .local v8, "c":Lorg/jsoup/parser/Token$Character;
    invoke-virtual {v8}, Lorg/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v35

    # getter for: Lorg/jsoup/parser/HtmlTreeBuilderState;->nullString:Ljava/lang/String;
    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$6()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1

    .line 252
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 253
    const/16 v35, 0x0

    goto :goto_1

    .line 254
    :cond_1
    # invokes: Lorg/jsoup/parser/HtmlTreeBuilderState;->isWhitespace(Lorg/jsoup/parser/Token;)Z
    invoke-static {v8}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$3(Lorg/jsoup/parser/Token;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 255
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 256
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 259
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Character;)V

    .line 260
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_0

    .line 265
    .end local v8    # "c":Lorg/jsoup/parser/Token$Character;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_0

    .line 269
    :pswitch_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 270
    const/16 v35, 0x0

    goto :goto_1

    .line 273
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v33

    .line 274
    .local v33, "startTag":Lorg/jsoup/parser/Token$StartTag;
    invoke-virtual/range {v33 .. v33}, Lorg/jsoup/parser/Token$StartTag;->name()Ljava/lang/String;

    move-result-object v23

    .line 275
    .local v23, "name":Ljava/lang/String;
    const-string v35, "html"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 276
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/helper/DescendableLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/jsoup/nodes/Element;

    .line 279
    .local v18, "html":Lorg/jsoup/nodes/Element;
    invoke-virtual/range {v33 .. v33}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_3
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Attribute;

    .line 280
    .local v6, "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_3

    .line 281
    invoke-virtual/range {v18 .. v18}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_2

    .line 283
    .end local v6    # "attribute":Lorg/jsoup/nodes/Attribute;
    .end local v18    # "html":Lorg/jsoup/nodes/Element;
    :cond_4
    const/16 v35, 0xa

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "base"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "basefont"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "bgsound"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "command"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "link"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "meta"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string v37, "noframes"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string v37, "script"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string v37, "style"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    const-string v37, "title"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 284
    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v35

    goto/16 :goto_1

    .line 285
    :cond_5
    const-string v35, "body"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 286
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v32

    .line 288
    .local v32, "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_6

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_7

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "body"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_7

    .line 290
    :cond_6
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 292
    :cond_7
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 293
    const/16 v35, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 294
    .local v7, "body":Lorg/jsoup/nodes/Element;
    invoke-virtual/range {v33 .. v33}, Lorg/jsoup/parser/Token$StartTag;->getAttributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_8
    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Attribute;

    .line 295
    .restart local v6    # "attribute":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v6}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Lorg/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_8

    .line 296
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto :goto_3

    .line 299
    .end local v6    # "attribute":Lorg/jsoup/nodes/Attribute;
    .end local v7    # "body":Lorg/jsoup/nodes/Element;
    .end local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_9
    const-string v35, "frameset"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 300
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v32

    .line 302
    .restart local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_a

    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v35

    const/16 v36, 0x2

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_b

    const/16 v35, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "body"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_b

    .line 304
    :cond_a
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 305
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v35

    if-nez v35, :cond_c

    .line 306
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 308
    :cond_c
    const/16 v35, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/jsoup/nodes/Element;

    .line 309
    .local v29, "second":Lorg/jsoup/nodes/Element;
    invoke-virtual/range {v29 .. v29}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v35

    if-eqz v35, :cond_d

    .line 310
    invoke-virtual/range {v29 .. v29}, Lorg/jsoup/nodes/Element;->remove()V

    .line 312
    :cond_d
    :goto_4
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_e

    .line 314
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 315
    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 313
    :cond_e
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_4

    .line 317
    .end local v29    # "second":Lorg/jsoup/nodes/Element;
    .end local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_f
    const/16 v35, 0x16

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    .line 318
    const-string v37, "address"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "article"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "aside"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "blockquote"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "center"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "details"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string v37, "dir"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string v37, "div"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string v37, "dl"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    .line 319
    const-string v37, "fieldset"

    aput-object v37, v35, v36

    const/16 v36, 0xa

    const-string v37, "figcaption"

    aput-object v37, v35, v36

    const/16 v36, 0xb

    const-string v37, "figure"

    aput-object v37, v35, v36

    const/16 v36, 0xc

    const-string v37, "footer"

    aput-object v37, v35, v36

    const/16 v36, 0xd

    const-string v37, "header"

    aput-object v37, v35, v36

    const/16 v36, 0xe

    const-string v37, "hgroup"

    aput-object v37, v35, v36

    const/16 v36, 0xf

    const-string v37, "menu"

    aput-object v37, v35, v36

    const/16 v36, 0x10

    const-string v37, "nav"

    aput-object v37, v35, v36

    const/16 v36, 0x11

    const-string v37, "ol"

    aput-object v37, v35, v36

    const/16 v36, 0x12

    .line 320
    const-string v37, "p"

    aput-object v37, v35, v36

    const/16 v36, 0x13

    const-string v37, "section"

    aput-object v37, v35, v36

    const/16 v36, 0x14

    const-string v37, "summary"

    aput-object v37, v35, v36

    const/16 v36, 0x15

    const-string v37, "ul"

    aput-object v37, v35, v36

    .line 317
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    .line 320
    if-eqz v35, :cond_11

    .line 321
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_10

    .line 322
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 324
    :cond_10
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 325
    :cond_11
    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "h1"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "h2"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "h3"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "h4"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "h5"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "h6"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 326
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 327
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 329
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x6

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "h1"

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const-string v38, "h2"

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const-string v38, "h3"

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const-string v38, "h4"

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const-string v38, "h5"

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const-string v38, "h6"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 330
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->pop()Lorg/jsoup/nodes/Element;

    .line 333
    :cond_13
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 334
    :cond_14
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "pre"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "listing"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_16

    .line 335
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 336
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 338
    :cond_15
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 340
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 341
    :cond_16
    const-string v35, "form"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    .line 342
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    if-eqz v35, :cond_17

    .line 343
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 344
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 346
    :cond_17
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_18

    .line 347
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 349
    :cond_18
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v15

    .line 350
    .local v15, "form":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    .line 351
    .end local v15    # "form":Lorg/jsoup/nodes/Element;
    :cond_19
    const-string v35, "li"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1f

    .line 352
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v32

    .line 354
    .restart local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v35

    add-int/lit8 v19, v35, -0x1

    .local v19, "i":I
    :goto_5
    if-gtz v19, :cond_1c

    .line 363
    :cond_1a
    :goto_6
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 364
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 366
    :cond_1b
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 355
    :cond_1c
    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 356
    .local v13, "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "li"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 357
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "li"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto :goto_6

    .line 360
    :cond_1d
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v35

    if-eqz v35, :cond_1e

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "address"

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const-string v38, "div"

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const-string v38, "p"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1a

    .line 354
    :cond_1e
    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    .line 367
    .end local v13    # "el":Lorg/jsoup/nodes/Element;
    .end local v19    # "i":I
    .end local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_1f
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "dd"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "dt"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_25

    .line 368
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v32

    .line 370
    .restart local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v35

    add-int/lit8 v19, v35, -0x1

    .restart local v19    # "i":I
    :goto_7
    if-gtz v19, :cond_22

    .line 379
    :cond_20
    :goto_8
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_21

    .line 380
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 382
    :cond_21
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 371
    :cond_22
    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 372
    .restart local v13    # "el":Lorg/jsoup/nodes/Element;
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x2

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "dd"

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const-string v38, "dt"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_23

    .line 373
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto :goto_8

    .line 376
    :cond_23
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v35

    if-eqz v35, :cond_24

    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x3

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "address"

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const-string v38, "div"

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const-string v38, "p"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_20

    .line 370
    :cond_24
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_7

    .line 383
    .end local v13    # "el":Lorg/jsoup/nodes/Element;
    .end local v19    # "i":I
    .end local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_25
    const-string v35, "plaintext"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_27

    .line 384
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_26

    .line 385
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 387
    :cond_26
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 388
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v35, v0

    sget-object v36, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_0

    .line 389
    :cond_27
    const-string v35, "button"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 390
    const-string v35, "button"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_28

    .line 392
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 393
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "button"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 394
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_0

    .line 396
    :cond_28
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 397
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 398
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 400
    :cond_29
    const-string v35, "a"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2b

    .line 401
    const-string v35, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v35

    if-eqz v35, :cond_2a

    .line 402
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 403
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "a"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 406
    const-string v35, "a"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v27

    .line 407
    .local v27, "remainingA":Lorg/jsoup/nodes/Element;
    if-eqz v27, :cond_2a

    .line 408
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 409
    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 412
    .end local v27    # "remainingA":Lorg/jsoup/nodes/Element;
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 413
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v3

    .line 414
    .local v3, "a":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    .line 415
    .end local v3    # "a":Lorg/jsoup/nodes/Element;
    :cond_2b
    const/16 v35, 0xc

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    .line 416
    const-string v37, "b"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "big"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "code"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "em"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "font"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "i"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string v37, "s"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string v37, "small"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string v37, "strike"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    const-string v37, "strong"

    aput-object v37, v35, v36

    const/16 v36, 0xa

    const-string v37, "tt"

    aput-object v37, v35, v36

    const/16 v36, 0xb

    const-string v37, "u"

    aput-object v37, v35, v36

    .line 415
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    .line 416
    if-eqz v35, :cond_2c

    .line 417
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 418
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v13

    .line 419
    .restart local v13    # "el":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    .line 420
    .end local v13    # "el":Lorg/jsoup/nodes/Element;
    :cond_2c
    const-string v35, "nobr"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2e

    .line 421
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 422
    const-string v35, "nobr"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2d

    .line 423
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 424
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "nobr"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 425
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 427
    :cond_2d
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v13

    .line 428
    .restart local v13    # "el":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_0

    .line 429
    .end local v13    # "el":Lorg/jsoup/nodes/Element;
    :cond_2e
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "applet"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "marquee"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "object"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2f

    .line 430
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 431
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 432
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 433
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 434
    :cond_2f
    const-string v35, "table"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_31

    .line 435
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Document;->quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v35

    sget-object v36, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_30

    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_30

    .line 436
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 438
    :cond_30
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 439
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 440
    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 441
    :cond_31
    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "area"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "br"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "embed"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "img"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "keygen"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "wbr"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_32

    .line 442
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 443
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 444
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 445
    :cond_32
    const-string v35, "input"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_33

    .line 446
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 447
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    move-result-object v13

    .line 448
    .restart local v13    # "el":Lorg/jsoup/nodes/Element;
    const-string v35, "type"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "hidden"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_0

    .line 449
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 450
    .end local v13    # "el":Lorg/jsoup/nodes/Element;
    :cond_33
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "param"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "source"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "track"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_34

    .line 451
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 452
    :cond_34
    const-string v35, "hr"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_36

    .line 453
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_35

    .line 454
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 456
    :cond_35
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 457
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_0

    .line 458
    :cond_36
    const-string v35, "image"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_37

    .line 460
    const-string v35, "img"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;

    .line 461
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v35

    goto/16 :goto_1

    .line 462
    :cond_37
    const-string v35, "isindex"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3d

    .line 464
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    if-eqz v35, :cond_38

    .line 466
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 468
    :cond_38
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    .line 469
    new-instance v35, Lorg/jsoup/parser/Token$StartTag;

    const-string v36, "form"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 470
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v35, v0

    const-string v36, "action"

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_39

    .line 471
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v15

    .line 472
    .restart local v15    # "form":Lorg/jsoup/nodes/Element;
    const-string v35, "action"

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v36, v0

    const-string v37, "action"

    invoke-virtual/range {v36 .. v37}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v15, v0, v1}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 474
    .end local v15    # "form":Lorg/jsoup/nodes/Element;
    :cond_39
    new-instance v35, Lorg/jsoup/parser/Token$StartTag;

    const-string v36, "hr"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 475
    new-instance v35, Lorg/jsoup/parser/Token$StartTag;

    const-string v36, "label"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 477
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v35, v0

    const-string v36, "prompt"

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_3b

    .line 478
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v35, v0

    const-string v36, "prompt"

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 481
    .local v26, "prompt":Ljava/lang/String;
    :goto_9
    new-instance v35, Lorg/jsoup/parser/Token$Character;

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$Character;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 484
    new-instance v20, Lorg/jsoup/nodes/Attributes;

    invoke-direct/range {v20 .. v20}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 485
    .local v20, "inputAttribs":Lorg/jsoup/nodes/Attributes;
    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/jsoup/parser/Token$StartTag;->attributes:Lorg/jsoup/nodes/Attributes;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_3a
    :goto_a
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-nez v36, :cond_3c

    .line 489
    const-string v35, "name"

    const-string v36, "isindex"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v35, Lorg/jsoup/parser/Token$StartTag;

    const-string v36, "input"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 491
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "label"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 492
    new-instance v35, Lorg/jsoup/parser/Token$StartTag;

    const-string v36, "hr"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 493
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "form"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_0

    .line 479
    .end local v20    # "inputAttribs":Lorg/jsoup/nodes/Attributes;
    .end local v26    # "prompt":Ljava/lang/String;
    :cond_3b
    const-string v26, "This is a searchable index. Enter search keywords: "

    goto :goto_9

    .line 485
    .restart local v20    # "inputAttribs":Lorg/jsoup/nodes/Attributes;
    .restart local v26    # "prompt":Ljava/lang/String;
    :cond_3c
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Attribute;

    .line 486
    .local v5, "attr":Lorg/jsoup/nodes/Attribute;
    invoke-virtual {v5}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x3

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const-string v39, "name"

    aput-object v39, v37, v38

    const/16 v38, 0x1

    const-string v39, "action"

    aput-object v39, v37, v38

    const/16 v38, 0x2

    const-string v39, "prompt"

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_3a

    .line 487
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/jsoup/nodes/Attributes;->put(Lorg/jsoup/nodes/Attribute;)V

    goto/16 :goto_a

    .line 494
    .end local v5    # "attr":Lorg/jsoup/nodes/Attribute;
    .end local v20    # "inputAttribs":Lorg/jsoup/nodes/Attributes;
    .end local v26    # "prompt":Ljava/lang/String;
    :cond_3d
    const-string v35, "textarea"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3e

    .line 495
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 497
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v35, v0

    sget-object v36, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual/range {v35 .. v36}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 499
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 500
    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 501
    :cond_3e
    const-string v35, "xmp"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_40

    .line 502
    const-string v35, "p"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_3f

    .line 503
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "p"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 505
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 506
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 507
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    # invokes: Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$5(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    .line 508
    :cond_40
    const-string v35, "iframe"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_41

    .line 509
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 510
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    # invokes: Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$5(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    .line 511
    :cond_41
    const-string v35, "noembed"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_42

    .line 513
    move-object/from16 v0, v33

    move-object/from16 v1, p2

    # invokes: Lorg/jsoup/parser/HtmlTreeBuilderState;->handleRawtext(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V
    invoke-static {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$5(Lorg/jsoup/parser/Token$StartTag;Lorg/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_0

    .line 514
    :cond_42
    const-string v35, "select"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_45

    .line 515
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 516
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 517
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->state()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v34

    .line 520
    .local v34, "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v34 .. v35}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_43

    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v34 .. v35}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_43

    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v34 .. v35}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_43

    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v34 .. v35}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_43

    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual/range {v34 .. v35}, Lorg/jsoup/parser/HtmlTreeBuilderState;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_44

    .line 521
    :cond_43
    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 523
    :cond_44
    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 524
    .end local v34    # "state":Lorg/jsoup/parser/HtmlTreeBuilderState;
    :cond_45
    const-string v35, "optgroup"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "option"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_47

    .line 525
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "option"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_46

    .line 526
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "option"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 527
    :cond_46
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 528
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 529
    :cond_47
    const-string v35, "rp"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "rt"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_49

    .line 530
    const-string v35, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 531
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 532
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const-string v36, "ruby"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_48

    .line 533
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 534
    const-string v35, "ruby"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    .line 536
    :cond_48
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 538
    :cond_49
    const-string v35, "math"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4a

    .line 539
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 541
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 542
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto/16 :goto_0

    .line 543
    :cond_4a
    const-string v35, "svg"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4b

    .line 544
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 546
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    .line 547
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lorg/jsoup/parser/Tokeniser;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/parser/Tokeniser;->acknowledgeSelfClosingFlag()V

    goto/16 :goto_0

    .line 548
    :cond_4b
    const/16 v35, 0xb

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    .line 549
    const-string v37, "caption"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "col"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "colgroup"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "frame"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "head"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "tbody"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string v37, "td"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string v37, "tfoot"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string v37, "th"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    const-string v37, "thead"

    aput-object v37, v35, v36

    const/16 v36, 0xa

    const-string v37, "tr"

    aput-object v37, v35, v36

    .line 548
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    .line 549
    if-eqz v35, :cond_4c

    .line 550
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 551
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 553
    :cond_4c
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 554
    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$StartTag;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_0

    .line 559
    .end local v23    # "name":Ljava/lang/String;
    .end local v33    # "startTag":Lorg/jsoup/parser/Token$StartTag;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v14

    .line 560
    .local v14, "endTag":Lorg/jsoup/parser/Token$EndTag;
    invoke-virtual {v14}, Lorg/jsoup/parser/Token$EndTag;->name()Ljava/lang/String;

    move-result-object v23

    .line 561
    .restart local v23    # "name":Ljava/lang/String;
    const-string v35, "body"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4e

    .line 562
    const-string v35, "body"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_4d

    .line 563
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 564
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 567
    :cond_4d
    sget-object v35, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    .line 569
    :cond_4e
    const-string v35, "html"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4f

    .line 570
    new-instance v35, Lorg/jsoup/parser/Token$EndTag;

    const-string v36, "body"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$EndTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v25

    .line 571
    .local v25, "notIgnored":Z
    if-eqz v25, :cond_0

    .line 572
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v35

    goto/16 :goto_1

    .line 573
    .end local v25    # "notIgnored":Z
    :cond_4f
    const/16 v35, 0x18

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    .line 574
    const-string v37, "address"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "article"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "aside"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "blockquote"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "button"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "center"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string v37, "details"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string v37, "dir"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string v37, "div"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    .line 575
    const-string v37, "dl"

    aput-object v37, v35, v36

    const/16 v36, 0xa

    const-string v37, "fieldset"

    aput-object v37, v35, v36

    const/16 v36, 0xb

    const-string v37, "figcaption"

    aput-object v37, v35, v36

    const/16 v36, 0xc

    const-string v37, "figure"

    aput-object v37, v35, v36

    const/16 v36, 0xd

    const-string v37, "footer"

    aput-object v37, v35, v36

    const/16 v36, 0xe

    const-string v37, "header"

    aput-object v37, v35, v36

    const/16 v36, 0xf

    const-string v37, "hgroup"

    aput-object v37, v35, v36

    const/16 v36, 0x10

    const-string v37, "listing"

    aput-object v37, v35, v36

    const/16 v36, 0x11

    const-string v37, "menu"

    aput-object v37, v35, v36

    const/16 v36, 0x12

    .line 576
    const-string v37, "nav"

    aput-object v37, v35, v36

    const/16 v36, 0x13

    const-string v37, "ol"

    aput-object v37, v35, v36

    const/16 v36, 0x14

    const-string v37, "pre"

    aput-object v37, v35, v36

    const/16 v36, 0x15

    const-string v37, "section"

    aput-object v37, v35, v36

    const/16 v36, 0x16

    const-string v37, "summary"

    aput-object v37, v35, v36

    const/16 v36, 0x17

    const-string v37, "ul"

    aput-object v37, v35, v36

    .line 573
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    .line 576
    if-eqz v35, :cond_52

    .line 578
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_50

    .line 580
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 581
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 583
    :cond_50
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 584
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_51

    .line 585
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 586
    :cond_51
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 588
    :cond_52
    const-string v35, "form"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_56

    .line 589
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lorg/jsoup/nodes/Element;

    move-result-object v12

    .line 590
    .local v12, "currentForm":Lorg/jsoup/nodes/Element;
    const/16 v35, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lorg/jsoup/nodes/Element;)V

    .line 591
    if-eqz v12, :cond_53

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_54

    .line 592
    :cond_53
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 593
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 595
    :cond_54
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 596
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_55

    .line 597
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 599
    :cond_55
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    goto/16 :goto_0

    .line 601
    .end local v12    # "currentForm":Lorg/jsoup/nodes/Element;
    :cond_56
    const-string v35, "p"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_59

    .line 602
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_57

    .line 603
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 604
    new-instance v35, Lorg/jsoup/parser/Token$StartTag;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 605
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result v35

    goto/16 :goto_1

    .line 607
    :cond_57
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_58

    .line 609
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 610
    :cond_58
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    :cond_59
    const-string v35, "li"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5c

    .line 613
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5a

    .line 614
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 615
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 617
    :cond_5a
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5b

    .line 619
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 620
    :cond_5b
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    :cond_5c
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "dd"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "dt"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_5f

    .line 623
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_5d

    .line 624
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 625
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 627
    :cond_5d
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5e

    .line 629
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 630
    :cond_5e
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 632
    :cond_5f
    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "h1"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "h2"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "h3"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "h4"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "h5"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "h6"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_62

    .line 633
    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "h1"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "h2"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "h3"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "h4"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "h5"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "h6"

    aput-object v37, v35, v36

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_60

    .line 634
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 635
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 637
    :cond_60
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_61

    .line 639
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 640
    :cond_61
    const/16 v35, 0x6

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "h1"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "h2"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "h3"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "h4"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "h5"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "h6"

    aput-object v37, v35, v36

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 642
    :cond_62
    const-string v35, "sarcasm"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_63

    .line 644
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v35

    goto/16 :goto_1

    .line 645
    :cond_63
    const/16 v35, 0xe

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    .line 646
    const-string v37, "a"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "b"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "big"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "code"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "em"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "font"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string v37, "i"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string v37, "nobr"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string v37, "s"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    const-string v37, "small"

    aput-object v37, v35, v36

    const/16 v36, 0xa

    const-string v37, "strike"

    aput-object v37, v35, v36

    const/16 v36, 0xb

    const-string v37, "strong"

    aput-object v37, v35, v36

    const/16 v36, 0xc

    const-string v37, "tt"

    aput-object v37, v35, v36

    const/16 v36, 0xd

    const-string v37, "u"

    aput-object v37, v35, v36

    .line 645
    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    .line 646
    if-eqz v35, :cond_75

    .line 649
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_b
    const/16 v35, 0x8

    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    .line 650
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v16

    .line 651
    .local v16, "formatEl":Lorg/jsoup/nodes/Element;
    if-nez v16, :cond_64

    .line 652
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v35

    goto/16 :goto_1

    .line 653
    :cond_64
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v35

    if-nez v35, :cond_65

    .line 654
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 655
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 656
    const/16 v35, 0x1

    goto/16 :goto_1

    .line 657
    :cond_65
    invoke-virtual/range {v16 .. v16}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_66

    .line 658
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 659
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 660
    :cond_66
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_67

    .line 661
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 663
    :cond_67
    const/16 v17, 0x0

    .line 664
    .local v17, "furthestBlock":Lorg/jsoup/nodes/Element;
    const/4 v11, 0x0

    .line 665
    .local v11, "commonAncestor":Lorg/jsoup/nodes/Element;
    const/16 v30, 0x0

    .line 666
    .local v30, "seenFormattingElement":Z
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getStack()Lorg/jsoup/helper/DescendableLinkedList;

    move-result-object v32

    .line 667
    .restart local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    const/16 v31, 0x0

    .local v31, "si":I
    :goto_c
    invoke-virtual/range {v32 .. v32}, Ljava/util/LinkedList;->size()I

    move-result v35

    move/from16 v0, v31

    move/from16 v1, v35

    if-lt v0, v1, :cond_68

    .line 677
    :goto_d
    if-nez v17, :cond_6b

    .line 678
    invoke-virtual/range {v16 .. v16}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 679
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 680
    const/16 v35, 0x1

    goto/16 :goto_1

    .line 668
    :cond_68
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jsoup/nodes/Element;

    .line 669
    .restart local v13    # "el":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, v16

    if-ne v13, v0, :cond_6a

    .line 670
    add-int/lit8 v35, v31, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "commonAncestor":Lorg/jsoup/nodes/Element;
    check-cast v11, Lorg/jsoup/nodes/Element;

    .line 671
    .restart local v11    # "commonAncestor":Lorg/jsoup/nodes/Element;
    const/16 v30, 0x1

    .line 667
    :cond_69
    add-int/lit8 v31, v31, 0x1

    goto :goto_c

    .line 672
    :cond_6a
    if-eqz v30, :cond_69

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lorg/jsoup/nodes/Element;)Z

    move-result v35

    if-eqz v35, :cond_69

    .line 673
    move-object/from16 v17, v13

    .line 674
    goto :goto_d

    .line 685
    .end local v13    # "el":Lorg/jsoup/nodes/Element;
    :cond_6b
    move-object/from16 v24, v17

    .line 686
    .local v24, "node":Lorg/jsoup/nodes/Element;
    move-object/from16 v22, v17

    .line 688
    .local v22, "lastNode":Lorg/jsoup/nodes/Element;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_e
    const/16 v35, 0x3

    move/from16 v0, v21

    move/from16 v1, v35

    if-lt v0, v1, :cond_6e

    .line 713
    :cond_6c
    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x5

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const-string v38, "table"

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const-string v38, "tbody"

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const-string v38, "tfoot"

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const-string v38, "thead"

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const-string v38, "tr"

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_72

    .line 714
    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v35

    if-eqz v35, :cond_6d

    .line 715
    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->remove()V

    .line 716
    :cond_6d
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lorg/jsoup/nodes/Node;)V

    .line 723
    :goto_f
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-static/range {v23 .. v23}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-direct {v4, v0, v1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 724
    .local v4, "adopter":Lorg/jsoup/nodes/Element;
    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v35

    invoke-virtual/range {v17 .. v17}, Lorg/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v36

    move/from16 v0, v36

    new-array v0, v0, [Lorg/jsoup/nodes/Node;

    move-object/from16 v36, v0

    invoke-interface/range {v35 .. v36}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lorg/jsoup/nodes/Node;

    .line 725
    .local v10, "childNodes":[Lorg/jsoup/nodes/Node;
    array-length v0, v10

    move/from16 v36, v0

    const/16 v35, 0x0

    :goto_10
    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_74

    .line 728
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 729
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lorg/jsoup/nodes/Element;)V

    .line 731
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 732
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 649
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_b

    .line 689
    .end local v4    # "adopter":Lorg/jsoup/nodes/Element;
    .end local v10    # "childNodes":[Lorg/jsoup/nodes/Node;
    :cond_6e
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->onStack(Lorg/jsoup/nodes/Element;)Z

    move-result v35

    if-eqz v35, :cond_6f

    .line 690
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v24

    .line 691
    :cond_6f
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lorg/jsoup/nodes/Element;)Z

    move-result v35

    if-nez v35, :cond_70

    .line 692
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lorg/jsoup/nodes/Element;)Z

    .line 688
    :goto_11
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_e

    .line 694
    :cond_70
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_6c

    .line 697
    new-instance v28, Lorg/jsoup/nodes/Element;

    invoke-virtual/range {v24 .. v24}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 698
    .local v28, "replacement":Lorg/jsoup/nodes/Element;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 699
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    .line 700
    move-object/from16 v24, v28

    .line 706
    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v35

    if-eqz v35, :cond_71

    .line 707
    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->remove()V

    .line 708
    :cond_71
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 710
    move-object/from16 v22, v24

    goto :goto_11

    .line 718
    .end local v28    # "replacement":Lorg/jsoup/nodes/Element;
    :cond_72
    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v35

    if-eqz v35, :cond_73

    .line 719
    invoke-virtual/range {v22 .. v22}, Lorg/jsoup/nodes/Element;->remove()V

    .line 720
    :cond_73
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_f

    .line 725
    .restart local v4    # "adopter":Lorg/jsoup/nodes/Element;
    .restart local v10    # "childNodes":[Lorg/jsoup/nodes/Node;
    :cond_74
    aget-object v9, v10, v35

    .line 726
    .local v9, "childNode":Lorg/jsoup/nodes/Node;
    invoke-virtual {v4, v9}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    .line 725
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_10

    .line 734
    .end local v4    # "adopter":Lorg/jsoup/nodes/Element;
    .end local v9    # "childNode":Lorg/jsoup/nodes/Node;
    .end local v10    # "childNodes":[Lorg/jsoup/nodes/Node;
    .end local v11    # "commonAncestor":Lorg/jsoup/nodes/Element;
    .end local v16    # "formatEl":Lorg/jsoup/nodes/Element;
    .end local v17    # "furthestBlock":Lorg/jsoup/nodes/Element;
    .end local v19    # "i":I
    .end local v21    # "j":I
    .end local v22    # "lastNode":Lorg/jsoup/nodes/Element;
    .end local v24    # "node":Lorg/jsoup/nodes/Element;
    .end local v30    # "seenFormattingElement":Z
    .end local v31    # "si":I
    .end local v32    # "stack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jsoup/nodes/Element;>;"
    :cond_75
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "applet"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "marquee"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "object"

    aput-object v37, v35, v36

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/jsoup/helper/StringUtil;->in(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_78

    .line 735
    const-string v35, "name"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_0

    .line 736
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_76

    .line 737
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 738
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 740
    :cond_76
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 741
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->currentElement()Lorg/jsoup/nodes/Element;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_77

    .line 742
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 743
    :cond_77
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_0

    .line 746
    :cond_78
    const-string v35, "br"

    move-object/from16 v0, v23

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_79

    .line 747
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 748
    new-instance v35, Lorg/jsoup/parser/Token$StartTag;

    const-string v36, "br"

    invoke-direct/range {v35 .. v36}, Lorg/jsoup/parser/Token$StartTag;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    .line 749
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 751
    :cond_79
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v35

    goto/16 :goto_1

    .line 247
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
